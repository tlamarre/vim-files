set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
Plugin 'jcf/vim-latex'
Plugin 'Lokaltog/vim-powerline'
Plugin 'mikewest/vimroom'
"Plugin 'terryma/vim-expand-region'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
" scripts not on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

let g:tex_flavor='latex'
let g:Powerline_symbols = 'fancy'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'pdflatex $*'
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256
set mouse=n
set incsearch
set nohlsearch
"set wildmode="longest:full"
set wildmenu
set wildignorecase
set wildmode=longest:list,full
set laststatus=2
set expandtab
set sw=2
"set nowrap
set wrapmargin=0
set foldcolumn=0
set tw=0

let g:writemode=0

fun! ToggleWriteMode()
  if g:writemode == 1
    setlocal nowrap
    set foldcolumn=0
    set nolinebreak
    set nolist  " list disables linebreak
    let g:writemode = 0
  else
    set wrap
    set nonumber                      " No line numbering
    set foldcolumn=8                  " Add a left margin
    highlight! link FoldColumn Normal " Make it the background colour
    let g:writemode = 1
    set linebreak
    set nolist  " list disables linebreak
  endif
endfunction

map <CR> <CR>
nnoremap ; :
nnoremap <Leader>vw :call ToggleWriteMode()<CR>
nnoremap <Leader>n :set invnumber<CR>
nnoremap <Leader>r :set invrelativenumber<CR>
nnoremap <Leader>w :set invwrap<CR>
nnoremap <Leader>ve :tabe ~/.vimrc<CR>
nnoremap <Leader>vs :source ~/.vimrc<CR>
"nnoremap <Leader>vr :silent execute "! pdflatex % -interaction=nonstopmode"<CR> | redraw!
nnoremap <Leader>vr :! pdflatex -interaction=nonstopmode %<CR>
nnoremap H 10k
nnoremap L 10j
nnoremap <C-e> <C-e>
nnoremap <C-y> <C-y>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
