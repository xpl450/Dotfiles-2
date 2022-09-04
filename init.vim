"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/xev/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/xev/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('/home/xev/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
" Snippets
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" Theming
call dein#add('kyazdani42/nvim-web-devicons')
call dein#add('metalelf0/jellybeans-nvim')
call dein#add('rktjmp/lush.nvim')

" Little bells and whistles
call dein#add('nvim-treesitter/nvim-treesitter', {'hook_post_update': 'TSUpdate'})
call dein#add('lukas-reineke/indent-blankline.nvim')

" Tools for development
call dein#add('tpope/vim-fugitive')
call dein#add('neoclide/coc.nvim', { 'merged': 0, 'rev': 'release' })
call dein#add('vim-scripts/Vimball')

" Explorers
call dein#add('nvim-lualine/lualine.nvim')
call dein#add('nvim-lua/plenary.nvim')
call dein#add('nvim-telescope/telescope.nvim', { 'rev': '0.1.0' })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

" Easy parenthesis stuff
inoremap " ""<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>

" Tab size
set tabstop=4
set shiftwidth=4
set expandtab

" Telescope config

" Indent-line config
source ~/.config/nvim/indent-blankline.lua

" Line config
source ~/.config/nvim/lualine.lua

" Devicons config
lua require('nvim-web-devicons').setup()

" Options
source ~/.config/nvim/options.lua

" Normal configs
set termguicolors
colorscheme jellybeans-nvim
set number
set cursorline
set noshowmode

" Treesitter config
lua <<EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = {'python', 'cpp', 'c', 'go', 'rust', 'lua'}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF
