set encoding=utf-8
scriptencoding utf-8
set fileencodings=utf-8,cp932,sjis,utf-16le
set fileformats=unix,dos


call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-scripts/mru.vim'
let g:vimspector_enable_mappings = 'HUMAN'
Plug 'puremourning/vimspector'
Plug 'thinca/vim-quickrun'
call plug#end()

syntax enable
filetype plugin indent on

colorscheme slate
set laststatus=2
set ruler
set showmode
set showcmd
set number
set hidden
set wildmenu
set iminsert=0
set hlsearch
set autoindent
set foldmethod=indent

set noundofile
set backup
set noswapfile
if ( has('win32') || has('win64') )
	set backupdir=$TEMP
else
	set backupdir=/tmp
endif

set shiftwidth=0 softtabstop=0 tabstop=4 expandtab
let g:vim_indent_cont=8
set textwidth=0

augroup vimrc
	autocmd!
	autocmd FileType vim setlocal keywordprg=:help
augroup END
nnoremap <Leader>ev :e ~/dotfiles/.vimrc
nnoremap <Leader>cv :e ~/dotfiles/cheetsheets/vim.txt
nnoremap q: <Nop>
