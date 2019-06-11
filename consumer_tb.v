`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:46:38 06/05/2019
// Design Name:   top
// Module Name:   F:/My Documents/Verilog/testing123/consumer_tb.v
// Project Name:  testing123
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
`define clk_period 10000
module consumer_tb;

	// Inputs
	reg clock;
	reg reset;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clock(clock), 
		.reset(reset), 
		.out(out)
	);

	
	initial clock = 1;
	always #(`clk_period/2) clock = ~clock;
	initial begin
		// Initialize Inputs
		reset = 0;
		#`clk_period;
		reset = 1;
		#`clk_period;
		reset = 0;
		//#(`clk_period*1000);
		//$stop;
        
		// Add stimulus here

	end
	initial begin  
		$dumpfile("traffic.vcd");  
		$dumpvars;  
	end  

      
endmodule

