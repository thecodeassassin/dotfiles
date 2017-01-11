set number
set nocompatible
set ts=4
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle "ekalinin/Dockerfile.vim"

" The bundles you install will be listed here
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Bundle 'klen/python-mode'
Bundle 'scrooloose/nerdtree'
Bundle 'davidhalter/jedi-vim'

filetype plugin indent on

" The rest of your config follows here
map nt :NERDTreeToggle<CR>
" map qq :q<CR>

set pastetoggle=<F10>

augroup vimrc_autocmds
autocmd!
	" highlight characters past column 120
	autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
	autocmd FileType python match Excess /\%120v.*/
	autocmd FileType python set nowrap
augroup END

" Powerline setup
 set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
 set laststatus=2

    
" Use <leader>l to toggle display of whitespace
    nmap <leader>l :set list!<CR>
" And set some nice chars to do it with
    set listchars=tab:»\ ,eol:¬

" automatically change window's cwd to file's dir
    set autochdir

" I'm prefer spaces to tabs
    set tabstop=4
    set shiftwidth=4
    set expandtab

" more subtle popup colors
if has ('gui_running')
    highlight Pmenu guibg=#cccccc gui=bold
endif
let g:jedi#popup_on_dot = 0
