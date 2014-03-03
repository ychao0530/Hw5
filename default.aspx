<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chao's fantastic mortgage calculator</title>
    <link rel="stylesheet" type="text/css" href="CSS.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="content">
    <h3>
        Chao Yu fantastic Mortgage Calculator</h3>
        
       
        <hr/>
            <br />
            
     

        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        *
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="Please Enter Required Information"></asp:RequiredFieldValidator>
                  
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        *
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Please Enter Required Information"></asp:RequiredFieldValidator>
        
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        *
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="Please Enter Required Information"></asp:RequiredFieldValidator>
        <br />
        <br />
        * Indicate the Required Information <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_clear" runat="server" Text="Clear" Width="82px" />
        
        <%If Not IsPostBack Then%>
            <p>Welcome to this calculator. Please complete the above fields to get your monthly payment and loand repayment schedule cacluated for you. </p>
        <% Else%>

        <br /><br />            
        <div id="clearcontent" runat="server">>  
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" >
            <RowStyle CssClass="Row" />
            <AlternatingRowStyle CssClass="alt" BorderColor="#660033"/>
            </asp:GridView>

        </div>
        <%end if %>    
        </div>
    </form>
</body>
</html>
