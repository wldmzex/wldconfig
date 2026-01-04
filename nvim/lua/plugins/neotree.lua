return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    -- disable the default flash keymap
    { "<leader>e", mode = { "n", "x", "o" }, false },
    --{ "<leader>ft", mode = { "n", "x", "o" }, true },
    --
    {
      "<leader>m",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
      end,
      desc = "Explorer NeoTree (Root Dir)",
    },
    { "<leader>t", "<cmd>Neotree<cr>", desc = "Find Files" },
  },
  opts = {
    window = {
      mappings = {
        ["<A-i>"] = "open",
        ["i"] = "open",
        ["<S-i>"] = "show_file_details",
        ["."] = "set_root",
      },
    },
  },
  -- opts = function(_, opts)
  --   opts.filesystem = vim.tbl_deep_extend("force", opts.filesystem, {
  --     window = {
  --       mappings = {
  --         ["i"] = { "none", nowait = true },
  --       },
  --     },
  --     vim.cmd("noremap u <Up>")
  --   })
  --   opts.window.mappings = {
  --     ["e"] = { "", nowait = true },
  --    }
  -- end,
}
