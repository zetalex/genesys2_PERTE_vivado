//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Mon Feb 10 11:52:06 2025
//Host        : DESKTOP-3VUNQ5R running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (//GPIO_0_tri_io,
    SW,
    BTN,
    LED,

    QSPI_D,
    QSPI_CSN,
    
    eth_mdc,
    eth_mdio,
    eth_rxd,
    eth_rxctl,
    eth_rxck,
    eth_txd,
    ETH_TX_EN,
    eth_txck,
    ETH_PHYRST_N,
    
    ddr3_sdram_addr,
    ddr3_sdram_ba,
    ddr3_sdram_cas_n,
    ddr3_sdram_ck_n,
    ddr3_sdram_ck_p,
    ddr3_sdram_cke,
    ddr3_sdram_cs_n,
    ddr3_sdram_dm,
    ddr3_sdram_dq,
    ddr3_sdram_dqs_n,
    ddr3_sdram_dqs_p,
    ddr3_sdram_odt,
    ddr3_sdram_ras_n,
    ddr3_sdram_reset_n,
    ddr3_sdram_we_n,
    reset,
    sys_diff_clock_clk_n,
    sys_diff_clock_clk_p,
    usb_uart_rxd,
    usb_uart_txd);
  //inout [31:0]GPIO_0_tri_io;
  inout [7:0]SW;
  inout [4:0]BTN;
  inout [7:0]LED;

  inout [3:0]QSPI_D;
  inout QSPI_CSN;
  
  output eth_mdc;
  inout eth_mdio;
  input [3:0]eth_rxd;
  input eth_rxctl;
  input eth_rxck;
  output [3:0]eth_txd;
  output ETH_TX_EN;
  output eth_txck;
  output [0:0]ETH_PHYRST_N;
  
  output [14:0]ddr3_sdram_addr;
  output [2:0]ddr3_sdram_ba;
  output ddr3_sdram_cas_n;
  output [0:0]ddr3_sdram_ck_n;
  output [0:0]ddr3_sdram_ck_p;
  output [0:0]ddr3_sdram_cke;
  output [0:0]ddr3_sdram_cs_n;
  output [3:0]ddr3_sdram_dm;
  inout [31:0]ddr3_sdram_dq;
  inout [3:0]ddr3_sdram_dqs_n;
  inout [3:0]ddr3_sdram_dqs_p;
  output [0:0]ddr3_sdram_odt;
  output ddr3_sdram_ras_n;
  output ddr3_sdram_reset_n;
  output ddr3_sdram_we_n;
  input reset;
  input sys_diff_clock_clk_n;
  input sys_diff_clock_clk_p;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [0:0]GPIO_0_tri_i_0;
  wire [1:1]GPIO_0_tri_i_1;
  wire [10:10]GPIO_0_tri_i_10;
  wire [11:11]GPIO_0_tri_i_11;
  wire [12:12]GPIO_0_tri_i_12;
  wire [13:13]GPIO_0_tri_i_13;
  wire [14:14]GPIO_0_tri_i_14;
  wire [15:15]GPIO_0_tri_i_15;
  wire [16:16]GPIO_0_tri_i_16;
  wire [17:17]GPIO_0_tri_i_17;
  wire [18:18]GPIO_0_tri_i_18;
  wire [19:19]GPIO_0_tri_i_19;
  wire [2:2]GPIO_0_tri_i_2;
  wire [20:20]GPIO_0_tri_i_20;
  wire [21:21]GPIO_0_tri_i_21;
  wire [22:22]GPIO_0_tri_i_22;
  wire [23:23]GPIO_0_tri_i_23;
  wire [24:24]GPIO_0_tri_i_24;
  wire [25:25]GPIO_0_tri_i_25;
  wire [26:26]GPIO_0_tri_i_26;
  wire [27:27]GPIO_0_tri_i_27;
  wire [28:28]GPIO_0_tri_i_28;
  wire [29:29]GPIO_0_tri_i_29;
  wire [3:3]GPIO_0_tri_i_3;
  wire [30:30]GPIO_0_tri_i_30;
  wire [31:31]GPIO_0_tri_i_31;
  wire [4:4]GPIO_0_tri_i_4;
  wire [5:5]GPIO_0_tri_i_5;
  wire [6:6]GPIO_0_tri_i_6;
  wire [7:7]GPIO_0_tri_i_7;
  wire [8:8]GPIO_0_tri_i_8;
  wire [9:9]GPIO_0_tri_i_9;
  wire [0:0]GPIO_0_tri_io_0;
  wire [1:1]GPIO_0_tri_io_1;
  wire [10:10]GPIO_0_tri_io_10;
  wire [11:11]GPIO_0_tri_io_11;
  wire [12:12]GPIO_0_tri_io_12;
  wire [13:13]GPIO_0_tri_io_13;
  wire [14:14]GPIO_0_tri_io_14;
  wire [15:15]GPIO_0_tri_io_15;
  wire [16:16]GPIO_0_tri_io_16;
  wire [17:17]GPIO_0_tri_io_17;
  wire [18:18]GPIO_0_tri_io_18;
  wire [19:19]GPIO_0_tri_io_19;
  wire [2:2]GPIO_0_tri_io_2;
  wire [20:20]GPIO_0_tri_io_20;
  wire [21:21]GPIO_0_tri_io_21;
  wire [22:22]GPIO_0_tri_io_22;
  wire [23:23]GPIO_0_tri_io_23;
  wire [24:24]GPIO_0_tri_io_24;
  wire [25:25]GPIO_0_tri_io_25;
  wire [26:26]GPIO_0_tri_io_26;
  wire [27:27]GPIO_0_tri_io_27;
  wire [28:28]GPIO_0_tri_io_28;
  wire [29:29]GPIO_0_tri_io_29;
  wire [3:3]GPIO_0_tri_io_3;
  wire [30:30]GPIO_0_tri_io_30;
  wire [31:31]GPIO_0_tri_io_31;
  wire [4:4]GPIO_0_tri_io_4;
  wire [5:5]GPIO_0_tri_io_5;
  wire [6:6]GPIO_0_tri_io_6;
  wire [7:7]GPIO_0_tri_io_7;
  wire [8:8]GPIO_0_tri_io_8;
  wire [9:9]GPIO_0_tri_io_9;
  wire [0:0]GPIO_0_tri_o_0;
  wire [1:1]GPIO_0_tri_o_1;
  wire [10:10]GPIO_0_tri_o_10;
  wire [11:11]GPIO_0_tri_o_11;
  wire [12:12]GPIO_0_tri_o_12;
  wire [13:13]GPIO_0_tri_o_13;
  wire [14:14]GPIO_0_tri_o_14;
  wire [15:15]GPIO_0_tri_o_15;
  wire [16:16]GPIO_0_tri_o_16;
  wire [17:17]GPIO_0_tri_o_17;
  wire [18:18]GPIO_0_tri_o_18;
  wire [19:19]GPIO_0_tri_o_19;
  wire [2:2]GPIO_0_tri_o_2;
  wire [20:20]GPIO_0_tri_o_20;
  wire [21:21]GPIO_0_tri_o_21;
  wire [22:22]GPIO_0_tri_o_22;
  wire [23:23]GPIO_0_tri_o_23;
  wire [24:24]GPIO_0_tri_o_24;
  wire [25:25]GPIO_0_tri_o_25;
  wire [26:26]GPIO_0_tri_o_26;
  wire [27:27]GPIO_0_tri_o_27;
  wire [28:28]GPIO_0_tri_o_28;
  wire [29:29]GPIO_0_tri_o_29;
  wire [3:3]GPIO_0_tri_o_3;
  wire [30:30]GPIO_0_tri_o_30;
  wire [31:31]GPIO_0_tri_o_31;
  wire [4:4]GPIO_0_tri_o_4;
  wire [5:5]GPIO_0_tri_o_5;
  wire [6:6]GPIO_0_tri_o_6;
  wire [7:7]GPIO_0_tri_o_7;
  wire [8:8]GPIO_0_tri_o_8;
  wire [9:9]GPIO_0_tri_o_9;
  wire [0:0]GPIO_0_tri_t_0;
  wire [1:1]GPIO_0_tri_t_1;
  wire [10:10]GPIO_0_tri_t_10;
  wire [11:11]GPIO_0_tri_t_11;
  wire [12:12]GPIO_0_tri_t_12;
  wire [13:13]GPIO_0_tri_t_13;
  wire [14:14]GPIO_0_tri_t_14;
  wire [15:15]GPIO_0_tri_t_15;
  wire [16:16]GPIO_0_tri_t_16;
  wire [17:17]GPIO_0_tri_t_17;
  wire [18:18]GPIO_0_tri_t_18;
  wire [19:19]GPIO_0_tri_t_19;
  wire [2:2]GPIO_0_tri_t_2;
  wire [20:20]GPIO_0_tri_t_20;
  wire [21:21]GPIO_0_tri_t_21;
  wire [22:22]GPIO_0_tri_t_22;
  wire [23:23]GPIO_0_tri_t_23;
  wire [24:24]GPIO_0_tri_t_24;
  wire [25:25]GPIO_0_tri_t_25;
  wire [26:26]GPIO_0_tri_t_26;
  wire [27:27]GPIO_0_tri_t_27;
  wire [28:28]GPIO_0_tri_t_28;
  wire [29:29]GPIO_0_tri_t_29;
  wire [3:3]GPIO_0_tri_t_3;
  wire [30:30]GPIO_0_tri_t_30;
  wire [31:31]GPIO_0_tri_t_31;
  wire [4:4]GPIO_0_tri_t_4;
  wire [5:5]GPIO_0_tri_t_5;
  wire [6:6]GPIO_0_tri_t_6;
  wire [7:7]GPIO_0_tri_t_7;
  wire [8:8]GPIO_0_tri_t_8;
  wire [9:9]GPIO_0_tri_t_9;
  
  
  wire SPI_0_0_io0_i;
  wire SPI_0_0_io0_o;
  wire SPI_0_0_io0_t;
  wire SPI_0_0_io1_i;
  wire SPI_0_0_io1_o;
  wire SPI_0_0_io1_t;
  wire SPI_0_0_io2_i;
  wire SPI_0_0_io2_o;
  wire SPI_0_0_io2_t;
  wire SPI_0_0_io3_i;
  wire SPI_0_0_io3_o;
  wire SPI_0_0_io3_t;
  wire [0:0]SPI_0_0_ss_i_0;
  wire [0:0]SPI_0_0_ss_o_0;
  wire SPI_0_0_ss_t;
  wire MDIO_0_mdc;
  wire MDIO_0_mdio_i;
  wire MDIO_0_mdio_io;
  wire MDIO_0_mdio_o;
  wire MDIO_0_mdio_t;
  wire MII_0_col;
  wire MII_0_crs;
  wire MII_0_rst_n;
  wire MII_0_rx_clk;
  wire MII_0_rx_dv;
  wire MII_0_rx_er;
  wire [3:0]MII_0_rxd;
  wire MII_0_tx_clk;
  wire MII_0_tx_en;
  wire [3:0]MII_0_txd;
  wire [14:0]ddr3_sdram_addr;
  wire [2:0]ddr3_sdram_ba;
  wire ddr3_sdram_cas_n;
  wire [0:0]ddr3_sdram_ck_n;
  wire [0:0]ddr3_sdram_ck_p;
  wire [0:0]ddr3_sdram_cke;
  wire [0:0]ddr3_sdram_cs_n;
  wire [3:0]ddr3_sdram_dm;
  wire [31:0]ddr3_sdram_dq;
  wire [3:0]ddr3_sdram_dqs_n;
  wire [3:0]ddr3_sdram_dqs_p;
  wire [0:0]ddr3_sdram_odt;
  wire ddr3_sdram_ras_n;
  wire ddr3_sdram_reset_n;
  wire ddr3_sdram_we_n;
  wire reset;
  wire sys_diff_clock_clk_n;
  wire sys_diff_clock_clk_p;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  IOBUF GPIO_0_tri_iobuf_0
       (.I(GPIO_0_tri_o_0),
        .IO(SW[0]),
        .O(GPIO_0_tri_i_0),
        .T(GPIO_0_tri_t_0));
  IOBUF GPIO_0_tri_iobuf_1
       (.I(GPIO_0_tri_o_1),
        .IO(SW[1]),
        .O(GPIO_0_tri_i_1),
        .T(GPIO_0_tri_t_1));
 IOBUF GPIO_0_tri_iobuf_2
       (.I(GPIO_0_tri_o_2),
        .IO(SW[2]),
        .O(GPIO_0_tri_i_2),
        .T(GPIO_0_tri_t_2));      
   
  IOBUF GPIO_0_tri_iobuf_3
       (.I(GPIO_0_tri_o_3),
        .IO(SW[3]),
        .O(GPIO_0_tri_i_3),
        .T(GPIO_0_tri_t_3));   
     IOBUF GPIO_0_tri_iobuf_4
       (.I(GPIO_0_tri_o_4),
        .IO(SW[4]),
        .O(GPIO_0_tri_i_4),
        .T(GPIO_0_tri_t_4));
  IOBUF GPIO_0_tri_iobuf_5
       (.I(GPIO_0_tri_o_5),
        .IO(SW[5]),
        .O(GPIO_0_tri_i_5),
        .T(GPIO_0_tri_t_5));
  IOBUF GPIO_0_tri_iobuf_6
       (.I(GPIO_0_tri_o_6),
        .IO(SW[6]),
        .O(GPIO_0_tri_i_6),
        .T(GPIO_0_tri_t_6));
  IOBUF GPIO_0_tri_iobuf_7
       (.I(GPIO_0_tri_o_7),
        .IO(SW[7]),
        .O(GPIO_0_tri_i_7),
        .T(GPIO_0_tri_t_7));
        
        
        
  
  IOBUF GPIO_0_tri_iobuf_8
       (.I(GPIO_0_tri_o_8),
        .IO(BTN[0]),
        .O(GPIO_0_tri_i_8),
        .T(GPIO_0_tri_t_8));
  IOBUF GPIO_0_tri_iobuf_9
       (.I(GPIO_0_tri_o_9),
        .IO(BTN[1]),
        .O(GPIO_0_tri_i_9),
        .T(GPIO_0_tri_t_9));
   
  IOBUF GPIO_0_tri_iobuf_10
       (.I(GPIO_0_tri_o_10),
        .IO(BTN[2]),
        .O(GPIO_0_tri_i_10),
        .T(GPIO_0_tri_t_10));
  IOBUF GPIO_0_tri_iobuf_11
       (.I(GPIO_0_tri_o_11),
        .IO(BTN[3]),
        .O(GPIO_0_tri_i_11),
        .T(GPIO_0_tri_t_11));
  IOBUF GPIO_0_tri_iobuf_12
       (.I(GPIO_0_tri_o_12),
        .IO(BTN[4]),
        .O(GPIO_0_tri_i_12),
        .T(GPIO_0_tri_t_12));
        
        
        
   
  IOBUF GPIO_0_tri_iobuf_13
       (.I(GPIO_0_tri_o_13),
        .IO(LED[0]),
        .O(GPIO_0_tri_i_13),
        .T(GPIO_0_tri_t_13));
  IOBUF GPIO_0_tri_iobuf_14
       (.I(GPIO_0_tri_o_14),
        .IO(LED[1]),
        .O(GPIO_0_tri_i_14),
        .T(GPIO_0_tri_t_14));
  IOBUF GPIO_0_tri_iobuf_15
       (.I(GPIO_0_tri_o_15),
        .IO(LED[2]),
        .O(GPIO_0_tri_i_15),
        .T(GPIO_0_tri_t_15));
  IOBUF GPIO_0_tri_iobuf_16
       (.I(GPIO_0_tri_o_16),
        .IO(LED[3]),
        .O(GPIO_0_tri_i_16),
        .T(GPIO_0_tri_t_16));
  IOBUF GPIO_0_tri_iobuf_17
       (.I(GPIO_0_tri_o_17),
        .IO(LED[4]),
        .O(GPIO_0_tri_i_17),
        .T(GPIO_0_tri_t_17));
  IOBUF GPIO_0_tri_iobuf_18
       (.I(GPIO_0_tri_o_18),
        .IO(LED[5]),
        .O(GPIO_0_tri_i_18),
        .T(GPIO_0_tri_t_18));
  IOBUF GPIO_0_tri_iobuf_19
       (.I(GPIO_0_tri_o_19),
        .IO(LED[6]),
        .O(GPIO_0_tri_i_19),
        .T(GPIO_0_tri_t_19));

  IOBUF GPIO_0_tri_iobuf_20
       (.I(GPIO_0_tri_o_20),
        .IO(LED[7]),
        .O(GPIO_0_tri_i_20),
        .T(GPIO_0_tri_t_20));

  IOBUF eth_mdio_mdc_mdio_iobuf
       (.I(eth_mdio_mdc_mdio_o),
        .IO(eth_mdio),
        .O(eth_mdio_mdc_mdio_i),
        .T(eth_mdio_mdc_mdio_t));
     
     
  IOBUF SPI_0_0_io0_iobuf
       (.I(SPI_0_0_io0_o),
        .IO(QSPI_D[0]),
        .O(SPI_0_0_io0_i),
        .T(SPI_0_0_io0_t));
  IOBUF SPI_0_0_io1_iobuf
       (.I(SPI_0_0_io1_o),
        .IO(QSPI_D[1]),
        .O(SPI_0_0_io1_i),
        .T(SPI_0_0_io1_t));
  IOBUF SPI_0_0_io2_iobuf
       (.I(SPI_0_0_io2_o),
        .IO(QSPI_D[2]),
        .O(SPI_0_0_io2_i),
        .T(SPI_0_0_io2_t));
  IOBUF SPI_0_0_io3_iobuf
       (.I(SPI_0_0_io3_o),
        .IO(QSPI_D[3]),
        .O(SPI_0_0_io3_i),
        .T(SPI_0_0_io3_t));
  IOBUF SPI_0_0_ss_iobuf_0
       (.I(SPI_0_0_ss_o_0),
        .IO(QSPI_CSN),
        .O(SPI_0_0_ss_i_0),
        .T(SPI_0_0_ss_t));
        
       
  system system_i
       (.GPIO_0_tri_i({GPIO_0_tri_i_31,GPIO_0_tri_i_30,GPIO_0_tri_i_29,GPIO_0_tri_i_28,GPIO_0_tri_i_27,GPIO_0_tri_i_26,GPIO_0_tri_i_25,GPIO_0_tri_i_24,GPIO_0_tri_i_23,GPIO_0_tri_i_22,GPIO_0_tri_i_21,GPIO_0_tri_i_20,GPIO_0_tri_i_19,GPIO_0_tri_i_18,GPIO_0_tri_i_17,GPIO_0_tri_i_16,GPIO_0_tri_i_15,GPIO_0_tri_i_14,GPIO_0_tri_i_13,GPIO_0_tri_i_12,GPIO_0_tri_i_11,GPIO_0_tri_i_10,GPIO_0_tri_i_9,GPIO_0_tri_i_8,GPIO_0_tri_i_7,GPIO_0_tri_i_6,GPIO_0_tri_i_5,GPIO_0_tri_i_4,GPIO_0_tri_i_3,GPIO_0_tri_i_2,GPIO_0_tri_i_1,GPIO_0_tri_i_0}),
        .GPIO_0_tri_o({GPIO_0_tri_o_31,GPIO_0_tri_o_30,GPIO_0_tri_o_29,GPIO_0_tri_o_28,GPIO_0_tri_o_27,GPIO_0_tri_o_26,GPIO_0_tri_o_25,GPIO_0_tri_o_24,GPIO_0_tri_o_23,GPIO_0_tri_o_22,GPIO_0_tri_o_21,GPIO_0_tri_o_20,GPIO_0_tri_o_19,GPIO_0_tri_o_18,GPIO_0_tri_o_17,GPIO_0_tri_o_16,GPIO_0_tri_o_15,GPIO_0_tri_o_14,GPIO_0_tri_o_13,GPIO_0_tri_o_12,GPIO_0_tri_o_11,GPIO_0_tri_o_10,GPIO_0_tri_o_9,GPIO_0_tri_o_8,GPIO_0_tri_o_7,GPIO_0_tri_o_6,GPIO_0_tri_o_5,GPIO_0_tri_o_4,GPIO_0_tri_o_3,GPIO_0_tri_o_2,GPIO_0_tri_o_1,GPIO_0_tri_o_0}),
        .GPIO_0_tri_t({GPIO_0_tri_t_31,GPIO_0_tri_t_30,GPIO_0_tri_t_29,GPIO_0_tri_t_28,GPIO_0_tri_t_27,GPIO_0_tri_t_26,GPIO_0_tri_t_25,GPIO_0_tri_t_24,GPIO_0_tri_t_23,GPIO_0_tri_t_22,GPIO_0_tri_t_21,GPIO_0_tri_t_20,GPIO_0_tri_t_19,GPIO_0_tri_t_18,GPIO_0_tri_t_17,GPIO_0_tri_t_16,GPIO_0_tri_t_15,GPIO_0_tri_t_14,GPIO_0_tri_t_13,GPIO_0_tri_t_12,GPIO_0_tri_t_11,GPIO_0_tri_t_10,GPIO_0_tri_t_9,GPIO_0_tri_t_8,GPIO_0_tri_t_7,GPIO_0_tri_t_6,GPIO_0_tri_t_5,GPIO_0_tri_t_4,GPIO_0_tri_t_3,GPIO_0_tri_t_2,GPIO_0_tri_t_1,GPIO_0_tri_t_0}),
        .SPI_0_0_io0_i(SPI_0_0_io0_i),
        .SPI_0_0_io0_o(SPI_0_0_io0_o),
        .SPI_0_0_io0_t(SPI_0_0_io0_t),
        .SPI_0_0_io1_i(SPI_0_0_io1_i),
        .SPI_0_0_io1_o(SPI_0_0_io1_o),
        .SPI_0_0_io1_t(SPI_0_0_io1_t),
        .SPI_0_0_io2_i(SPI_0_0_io2_i),
        .SPI_0_0_io2_o(SPI_0_0_io2_o),
        .SPI_0_0_io2_t(SPI_0_0_io2_t),
        .SPI_0_0_io3_i(SPI_0_0_io3_i),
        .SPI_0_0_io3_o(SPI_0_0_io3_o),
        .SPI_0_0_io3_t(SPI_0_0_io3_t),
        .SPI_0_0_ss_i(SPI_0_0_ss_i_0),
        .SPI_0_0_ss_o(SPI_0_0_ss_o_0),
        .SPI_0_0_ss_t(SPI_0_0_ss_t),
        .ddr3_sdram_addr(ddr3_sdram_addr),
        .ddr3_sdram_ba(ddr3_sdram_ba),
        .ddr3_sdram_cas_n(ddr3_sdram_cas_n),
        .ddr3_sdram_ck_n(ddr3_sdram_ck_n),
        .ddr3_sdram_ck_p(ddr3_sdram_ck_p),
        .ddr3_sdram_cke(ddr3_sdram_cke),
        .ddr3_sdram_cs_n(ddr3_sdram_cs_n),
        .ddr3_sdram_dm(ddr3_sdram_dm),
        .ddr3_sdram_dq(ddr3_sdram_dq),
        .ddr3_sdram_dqs_n(ddr3_sdram_dqs_n),
        .ddr3_sdram_dqs_p(ddr3_sdram_dqs_p),
        .ddr3_sdram_odt(ddr3_sdram_odt),
        .ddr3_sdram_ras_n(ddr3_sdram_ras_n),
        .ddr3_sdram_reset_n(ddr3_sdram_reset_n),
        .ddr3_sdram_we_n(ddr3_sdram_we_n),
        .eth_mdio_mdc_mdc(eth_mdc),
        .eth_mdio_mdc_mdio_i(eth_mdio_mdc_mdio_i),
        .eth_mdio_mdc_mdio_o(eth_mdio_mdc_mdio_o),
        .eth_mdio_mdc_mdio_t(eth_mdio_mdc_mdio_t),
        .eth_rgmii_rd(eth_rxd),
        .eth_rgmii_rx_ctl(eth_rxctl),
        .eth_rgmii_rxc(eth_rxck),
        .eth_rgmii_td(eth_txd),
        .eth_rgmii_tx_ctl(ETH_TX_EN),
        .eth_rgmii_txc(eth_txck),
        .phy_reset_out(ETH_PHYRST_N),
        .reset(reset),
        .sys_diff_clock_clk_n(sys_diff_clock_clk_n),
        .sys_diff_clock_clk_p(sys_diff_clock_clk_p),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
