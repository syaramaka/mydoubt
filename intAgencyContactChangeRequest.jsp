<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
               <header id="header"></header>
               <div class="container" id="pageContainer">
                                             <input type="hidden" id="next-request-id">
                       <input type="hidden" id="next-request-type">
                       <input type="hidden" id="next-request-agn-id">
                       <input type="hidden" id="previous-request-id">
                       <input type="hidden" id="previous-request-type">
                       <input type="hidden" id="previous-request-agn-id">
                                             <input type="hidden" id="total-request-count">
                                            
        <div class="row zeroMarign">
                                             <div class="col-sm-4 required" >
                                                            <span class="col-sm-5" id="requestStatus">Request Status</span>
                                                            <div class="col-sm-7">
                                                                           <select class="form-control" id="reqstatus" name="requestStatus" onchange="isFormValid()">
                                                                                          <option value="New">New</option>
                                                                                          <option value="Approved">Approved</option>
                                                                                          <option value="Denied">Denied</option>
                                                                                          <option value="In Progress">In Progress</option>
                                                                                          <option value="Incomplete">Incomplete</option>
                                                                           </select>
                                                            </div>
                                             </div>
                              </div>
 
                              <hr style="border-bottom: 1px double #333; border-top: 1px double #333; padding: 1px 0;"></hr>
                              <form id="addemployeeform">                                
                                             <div class="container">
                                                            <h4 class="text-center"> Changes Requested </h4>
                                                            <input type="hidden" id="extUserId">
                                                            <input type="hidden" id="extCurrentUserId">
                                                           
                                                           
                                                            <table class="table table-striped">
                                                            <!-- add caption as per sonar, it is hidden  -->
                                                            <caption style="text-align:right" hidden="true"></caption>
                                                              <thead>
                                                               <tr>
                                                                            <td scope="col" style="width: 15%"></td><th scope="col" style="width: 30%">At Time of Request</th><th scope="col" style="width: 20%">Request</th><td scope="col" style="width: 10%"></td><th scope="col" style="width: 25%">DOJ Admin Update</th>
                                                               </tr>
                                                              </thead>
                                                              <tbody>
                                                                           <tr>
                                                                  <td><label for="portal">Agency Access <i class="tooltip2 fa fa-question-circle" title="Request a contact to have access to the AAJC for the identified roles (contact types) by selecting the check box.  Request access to be withdrawn from the AAJC by unselecting the checked box."></i></label></td>
                                                                  <td><div id="currentAgencyAccess"></div>
                                                                             </td>
                                                                             <td><div id="updatedAgencyAccess"></div>
                                                                             </td>
                                                                             <td><button type="button" class="btn btn-primary" id="updateInfo" value="Update">Update</button></td>
                                                                  <td colspan="2"><div class="col-sm-4 adminuserchanges"  style="display: none;">
                                                                                                         <select class="form-control" name="adminPortalAccess" id="adminPortalAccess">
                                                                                                                        <option value="Yes">Yes</option>
                                                                                                                        <option value="No">No</option>
                                             </select>
                                                                                          </div></td>
                                                                </tr>
                                                                <tr>
                                                                  <td><label>Roles at this agency:</label></td><td><div id="currentRoles"></div></td>
                                                                  <td>
                                                                           <label>Remove role(s):</label><div style="margin-left: 15px;" id="userRemoveRoles"></div><br>
                                                                           <label>Add role(s):</label><div style="margin-left: 15px;" id="userAddRoles"></div>
                                                                  </td>
                                                                  <td></td>
                                                                  <td  colspan="2"><div id="adminRoles" style="display: none;">
                                                                                          <input type="hidden" id="dojadminupdatescheck" value="No">
                                                                                          <input type="hidden" id="admin-headCheck" value="No">
                                                                                          <input type="hidden" id="admin-adminCheck" value="No">
                                                                                          <input type="hidden" id="admin-billingCheck" value="No">
                                                                                          <input type="hidden" id="admin-CORCheck" value="No">
                                                                                         
                                                                                          <input type="hidden" id="admin-remove-headCheck" value="No">
                                                                                          <input type="hidden" id="admin-remove-adminCheck" value="No">
                                                                                          <input type="hidden" id="admin-remove-billingCheck" value="No">
                                                                                          <input type="hidden" id="admin-remove-CORCheck" value="No">
                                                                                         
                                                                                          <input type="hidden" id="admin-add-headCheck" value="No">
                                                                                          <input type="hidden" id="admin-add-adminCheck" value="No">
                                                                                          <input type="hidden" id="admin-add-billingCheck" value="No">
                                                                                          <input type="hidden" id="admin-add-CORCheck" value="No">
                                                                                         
                                                                    <br>
                                                                           <label>Remove role(s):</label>
                                                                                          <div class="adminuserchanges-chkbx" style="display: none;margin-left: 15px;"> <input class="form-check-input adminuserchanges-chkbx" type="checkbox" id="removeheadCheck" name="removeheadCheck" value="Yes" > <label for="removeheadCheck">Agency Head</label></div>
                                                                                                         <div class="adminuserchanges-chkbx" style="display: none;margin-left: 15px;"> <input class="form-check-input adminuserchanges-chkbx" type="checkbox" id="removeadminCheck" name="removeadminCheck" value="Yes"> <label for="removeadminCheck">Admin</label></div>
                                                                                                         <div class="adminuserchanges-chkbx" style="display: none;margin-left: 15px;"><input class="form-check-input adminuserchanges-chkbx" type="checkbox" id="removebillingCheck" name="removebillingCheck" value="Yes"> <label for="removebillingCheck">Billing</label></div>
                                                                                                         <div class="adminuserchanges-chkbx" style="display: none;margin-left: 15px;"><input class="form-check-input adminuserchanges-chkbx" type="checkbox" id="removeCORCheck" name="removeCORCheck" value="Yes"> <label for="removeCORCheck">COR</label></div>
                                                                           <br>
                                                                           <label>Add role(s):</label>
                                                                                          <div class="adminuserchanges-chkbx" style="display: none;margin-left: 15px;"> <input class="form-check-input adminuserchanges-chkbx" type="checkbox" id="addheadCheck" name="addheadCheck" value="Yes" > <label for="addheadCheck">Agency Head</label></div>
                                                                                                         <div class="adminuserchanges-chkbx" style="display: none;margin-left: 15px;"> <input class="form-check-input adminuserchanges-chkbx" type="checkbox" id="addadminCheck" name="addadminCheck" value="Yes"> <label for="addadminCheck">Admin</label></div>
                                                                                                         <div class="adminuserchanges-chkbx" style="display: none;margin-left: 15px;"><input class="form-check-input adminuserchanges-chkbx" type="checkbox" id="addbillingCheck" name="addbillingCheck" value="Yes"> <label for="addbillingCheck">Billing</label></div>
                                                                                          <div class="adminuserchanges-chkbx" style="display: none;margin-left: 15px;"> <input class="form-check-input adminuserchanges-chkbx" type="checkbox" id="addCORCheck" name="addCORCheck" value="Yes" > <label for="addCORCheck">COR</label></div>
                                                                           </div>
                                                                  </td>
                                                                </tr>
                                                              </tbody>
                                                            </table>
                                                            <hr id="corBorder"style="border-bottom: 1px double #333; border-top: 1px double #333; padding: 1px 0;"></hr>
                                                           
                                                            <div id=cordata class="row zeroMarign" style="display: none;">
                                                                           <div class="row">
                                                                                          <div class="container">
                                                                                                         <div class="col-sm-4">
                                                                                                                        <div> <label>COR ATI &nbsp;</label> <span id="corAti" style="display:inline-block;vertical-align:top;"/></span></div>          
                                                                                                         </div>
                                                                                          </div>
                                                                           </div>
                                                                           <br>
                                                                           <div class="row">
                                                                                          <div class="container">
                                                                                                         <div class="col-sm-4">
                                                                                                                        <div> <label>Agency Mail Code(s) &nbsp;</label> <span id="agnMailCodes" style="display:inline-block;vertical-align:top;"></span></div>            
                                                                                                         </div>
                                                                                          </div>
                                                                           </div>
                                                                           <br>
                                                                           <div class="container">
                                                                                          <div class="row"> <div class="col-sm-4"> <label>COR Application &nbsp;</label> <span id="corform" style="display:inline-block;vertical-align:top;"></span> </div> </div>
                                                                           </div>
                                                                           <br>
                                                            </div> <!-- end of  row zeroMarign-->      
                                             </div>
                              </form>
 
                              <hr style="border-bottom: 1px double #333; border-top: 1px double #333; padding: 1px 0;"></hr>
                              <div class="form-group pull-right" id="buttonSection">
                                             <button type="button" class="btn btn-primary" id="updateEmployeeButton">Submit</button>
                                             <button type="button" onclick="backToRequestsPage()" class="btn btn-primary">Cancel</button>
                              </div>
               </div>
               <footer class="footer"></footer>
              
               <script>
                             
                              var orgReqStatus = null;
                              var orgReqComment = null;
                              var pdfOriginalData = null;
                              var pdfOriginalAgencyName = null;
                              var pdfOriginalCAOri = "";
                              var agnCorInd = null;
                              var contactCorData = {};
                             
                              $(document).ready(function() {
 
                                             $('.contactchangerequest').hide();
                                            
                                             if("${agnId}" != null) {
                                                            $.ajax({
                                                                           url: "api/agencies/id?id="+"${agnId}",
                                          type: 'GET',
                                          success: function(res) {
                                             $("#agencyName").text(res.agencyFullName);
                                             $("#agencyNumber").text(res.id);
                                             var aORI = res.agencyOris;
                                             $.each(aORI, function(idx,obj){
                                                                                   var dom = "";
                                                                                   pdfOriginalCAOri += obj.agencyOri+" ";
                                                                                   dom += '<span>'+obj.agencyOri+'</span>&nbsp &nbsp';
                                                                                   $("#oriNumbers").append(dom);
                                             })
                                             pdfOriginalAgencyName = res.agencyFullName;
                                          }
                                      });
                                             }
                                             document.getElementById('phone').addEventListener('input', function (e) {
                                                            var x = e.target.value.replace(/\D/g, '').match(/(\d{0,3})(\d{0,3})(\d{0,4})/);
                                                            e.target.value = !x[2] ? x[1] : '(' + x[1] + ') ' + x[2] + (x[3] ? '-' + x[3] : '');
                                             });
                                            
                                            
                                             if("${reqId}" != null) {
                              $.ajax({
                                             url: "api/userchangerequests/id?requestId="+"${reqId}",
                                          type: 'GET',
                                          success: function(res) {
                                             $("#submittedBy").text(res.requestOwnerName);
                                             $("#submitterPhone").text(res.submitterPhoneNumber);
                                            
                                             getContactDetails(res);
                                             setCookie("extUserId",res.extUserId,1);
                                             showTable();
                                          }
                                      });
                       }
                                            
                                             function getContactDetails(res) {
                                                            pdfOriginalData = res;
                              res.currentAgencyAccess == "Yes" ? $("#currentAgencyAccess").text('Yes') : $("#currentAgencyAccess").text('No');
                              res.agencyAccess.toLowerCase() == res.currentAgencyAccess.toLowerCase() ? $("#updatedAgencyAccess").text('') : $("#updatedAgencyAccess").text(res.agencyAccess);
                             
                              document.getElementById('contactReqNumber').innerHTML = "${reqId}";
                              $("#subdate").text(res.requestedDate);
                             
                                                 res.userLastName != res.currentUserLastName ? $("#userLastName").text(res.userLastName) : requestData("userLastName", res.currentUserLastName);
                              res.userFirstName != res.currentUserFirstName ? $("#userFirstName").text(res.userFirstName) : requestData("userFirstName", res.currentUserFirstName);
                              res.userMidName != res.currentUserMidName ? $("#userMidName").text(res.userMidName) : requestData("userMidName", res.currentUserMidName);
                              res.officePhoneNumber != res.currentOfficePhoneNumber ? $("#phone").text(res.officePhoneNumber.replace(/[()-\s]/g,'').replace(/(\d{3})(\d{3})(\d{4})/, "($1) $2-$3")) : requestData("phone", res.currentOfficePhoneNumber.replace(/[()-\s]/g,'').replace(/(\d{3})(\d{3})(\d{4})/, "($1) $2-$3"));
                              res.userNameOrEmail != res.currentUserNameOrEmail ? $("#email").text(res.userNameOrEmail) : requestData("email", res.currentUserNameOrEmail);
                             
                              $("#currentLastName").text(res.currentUserLastName);
                              $("#currentMidName").text(res.currentUserMidName);
                              $("#currentFirstName").text(res.currentUserFirstName);
                              $("#currentPhone").text(res.currentOfficePhoneNumber);
                              $("#currentEmail").text(res.currentUserNameOrEmail);
                      
                              $("#extUserId").val(res.userId);
                              $("#extCurrentUserId").val(res.currentUserId);
                              $("#reqstatus").val(res.requestStatus);
                                                            $("#currentRoles").text(rolesAtTheTimeOfRequest(res));
                                                            $("#userRemoveRoles").text(userRequestedRemoveRoles(res));
                                                            $("#userAddRoles").text(userRequestedAddRoles(res));
 
                                                            $("#updateLastName").val(res.adminUserLastName);
                              $("#updateMiddleName").val(res.adminUserMidName);
                              $("#updateFirstName").val(res.adminUserFirstName);
                              $("#updatePhone").val(res.adminOfficePhoneNumber.replace(/[()-\s]/g,'').replace(/(\d{3})(\d{3})(\d{4})/, "($1) $2-$3"));
                              $("#updateEmail").val(res.adminUserNameOrEmail);
                                                           
                                                            $("#messageBody").text(res.adminComments);
                                                            $('#messageBody').trigger('keyup');
 
                                                            orgReqStatus = res.requestStatus;
                                                            orgReqComment = res.adminComments;
                                                            agnCorInd = res.agnCORInd;
                                                            adminUpdateRoles(res);
                              setCookie("contactreqstatus",res.requestStatus,1)
                              isFormValid()
                             
                              if (res.agnCORInd === "add") {
                                             $('#cordata').show();
                                             $("#corAti").text(res.contactCorData.corAti);
                                             contactCorData.agnCorMailCodes = res.contactCorData.agnCorMailCodes;
                                             var agnCorMailCodes = res.contactCorData.agnCorMailCodes;
                                             var agnMailCodesDiv = $('#agnMailCodes');
                                             $.each(agnCorMailCodes, function(index, value) {
                                                            agnMailCodesDiv.append(value + '<br>');
                                             });
                                             if (res.contactCorData.corFileName != null) {
                                                            var link = document.createElement('a');
                                                            var fileUrl = "api/userCorFile/attachments/id?id="+res.contactCorData.corContId;
                                                            $("#corform").append(link);
                                                            link.href = fileUrl;
                                                            link.text = res.contactCorData.corFileName;
                                                            $('#corform a').css("margin", "0px 30px 0px 30px");
                                             }
                                      }else{
                                                                           $('#corItems').hide();
                                                                           $('#corBorder').hide();
                                                            }
                                                           
                              if(res.requestStatus == 'New' || res.requestStatus == "In Progress" || res.requestStatus=="Incomplete" ) {
                                             $("#reqstatus").attr('disabled', false);
                                             $('#buttonSection').show()
                              }else if(res.requestStatus == 'Denied') {
                                             $('#updateEmployeeButton').attr('disabled', 'disabled');
                                                            $('#updateInfo').css("display", "none");
                                                            $('#messageBody').attr('disabled', 'disabled');
                                                            $("#reqstatus").attr('disabled', 'disabled');
                                                            $(".adminuserchanges").css("display", "none");
                                                            $("#adminRoles").css("display", "none");
                              }  else {
                                             adminRolesDisplay(res);
                                             markReadOnly();
                              }
                                             }
 
                                             function requestData(fieldId, val){
                                                            $("#"+fieldId).hide();
                                                            $("#"+fieldId).text(val);
                                             }
 
                                             function rolesAtTheTimeOfRequest(res){
                                                            var roles = [];
                                                            res.currentAgnAdminInd == "yes" ? roles.push('Admin') : null;
                                                            res.currentAgnBillInd == "yes" ? roles.push('Billing') : null;
                                                            res.currentAgnCORInd == "yes" ? roles.push('COR') : null;
                                                            res.currentAgnHeadInd == "yes" ? roles.push('Agency Head') : null;
                                                            pdfOriginalData.currentroles = roles;
                                                            return roles.toString();
                                             }
 
                                             function userRequestedRemoveRoles(res){
                                                            var removeRoles = [];
                                                            res.agnAdminInd == "remove" ? removeRoles.push('Admin') : null;
                                                            res.agnBillInd == "remove" ? removeRoles.push('Billing') : null;
                                                            res.agnCORInd == "remove" ? removeRoles.push('COR') : null;
                                                            res.agnHeadInd == "remove" ? removeRoles.push('Agency Head') : null;
 
                                                            res.agnAdminInd == "remove" ? $('#admin-add-adminCheck').val('Yes') : $('#admin-add-adminCheck').val('No');
                                                            res.agnBillInd == "remove" ? $('#admin-add-billingCheck').val('Yes') : $('#admin-add-billingCheck').val('No');
                                                            res.agnCORInd == "remove" ? $('#admin-add-CORCheck').val('Yes') : $('#admin-add-CORCheck').val('No');
                                                            res.agnHeadInd == "remove" ? $('#admin-add-headCheck').val('Yes') : $('#admin-add-headCheck').val('No');
                                                            pdfOriginalData.removeRoles = removeRoles;
                                                            return removeRoles.toString();
                                             }
 
                                             function userRequestedAddRoles(res){
                                                            var addRoles = [];
                                                            res.agnAdminInd == "add" ? addRoles.push('Admin') : null;
                                                            res.agnBillInd == "add" ? addRoles.push('Billing') : null;
                                                            res.agnCORInd == "add" ? addRoles.push('COR') : null;
                                                            res.agnHeadInd == "add" ? addRoles.push('Agency Head') : null;
 
                                                            res.agnAdminInd == "add" ? $('#admin-remove-adminCheck').val('Yes') : $('#admin-remove-adminCheck').val('No');
                                                            res.agnBillInd == "add" ? $('#admin-remove-billingCheck').val('Yes') : $('#admin-remove-billingCheck').val('No');
                                                            res.agnCORInd == "add" ? $('#admin-remove-CORCheck').val('Yes') : $('#admin-remove-CORCheck').val('No');
                                                            res.agnHeadInd == "add" ? $('#admin-remove-headCheck').val('Yes') : $('#admin-remove-headCheck').val('No');
                                                            pdfOriginalData.userroles = addRoles;
                                                            return addRoles.toString();
                                             }
 
                                             function adminUpdateRoles(res){
                                                            res.currentAgnAdminInd == "yes" ? $('#admin-adminCheck').val('Yes') : $('#admin-adminCheck').val('No');
                                                            res.currentAgnBillInd == "yes" ? $('#admin-billingCheck').val('Yes') : $('#admin-billingCheck').val('No');
                                                            res.currentAgnCORInd == "yes" ? $('#admin-CORCheck').val('Yes') : $('#admin-CORCheck').val('No');
                                                            res.currentAgnHeadInd == "yes" ? $('#admin-headCheck').val('Yes') : $('#admin-headCheck').val('No');
                                             }
 
                                             function adminRolesDisplay(res){
                                                            res.adminAgnHeadInd == "yes" ? $("#addheadCheck").prop( "checked", true ) : $("#adminCheck").prop( "checked", false );
                                                            res.adminAgnAdminInd == "yes" ? $("#addadminCheck").prop( "checked", true ) : $("#adminCheck").prop( "checked", false );
                                                            res.adminAgnBillInd == "yes" ? $("#addbillingCheck").prop( "checked", true ) : $("#adminCheck").prop( "checked", false );
                                                            //res.adminAgnCORInd == "yes" ? $("#adminCheck").prop( "checked", true ) : $("#adminCheck").prop( "checked", false );
                                                            res.adminAgnCORInd == "yes" ? $("#addCORCheck").prop( "checked", true ) : $("#addCORCheck").prop( "checked", false );
 
                                                            res.adminAgnHeadInd == "no" ? $("#removeheadCheck").prop( "checked", true ) : $("#adminCheck").prop( "checked", false );
                                                            res.adminAgnAdminInd == "no" ? $("#removeadminCheck").prop( "checked", true ) : $("#adminCheck").prop( "checked", false );
                                                            res.adminAgnBillInd == "no" ? $("#removebillingCheck").prop( "checked", true ) : $("#adminCheck").prop( "checked", false );
                                                            res.adminAgnCORInd == "no" ? $("#removeCORCheck").prop( "checked", true ) : $("#removeCORCheck").prop( "checked", false );
                                             }
                                            
                              });          
              
                              function markReadOnly(){
                                             $('#updateEmployeeButton').attr('disabled', 'disabled');
                                             $('#updateInfo').css("display", "none");
                                             $('#messageBody').attr('disabled', 'disabled');
                                             $("#reqstatus").attr('disabled', 'disabled');
                                             $(".adminuserchanges").css("display", "block");
                                             $(".adminuserchanges").attr('disabled', 'disabled');
                                             $("#adminPortalAccess").attr('disabled', 'disabled');
                                             $("#adminRoles").css("display", "block");
                                             $(".adminuserchanges-chkbx").css("display", "inline-block");
                              $(".adminuserchanges-chkbx").attr('disabled', 'disabled');
                              }
              
                              $("#updateEmployeeButton").click(function(){
                                             if($("#reqstatus").val()=='New'){
                                                            errorDialog("Request Status cannot be updated as New");
                                                            return;
                                             }
                                             if( $('#dojadminupdatescheck').val() == 'Yes'){
                                                            if(contactMaintenanceValidation() || namevalidation()){
                                                                           errorDialog("Please complete all mandatory fields and submit again.");
                                                                           return;
                                                            }
                                             }
 
                                             var staffInd="null";
                                             var adminInd="null";
                                             var corInd="null";
                                             var billInd="null";
                                             var portalAccess="N";
                                             var agencyId = "${agnId}";
                                             var adminChangesFlag = '';
 
                                             if($("#reqstatus").val()=='Denied' || $("#reqstatus").val()=='In Progress' ){
                                                            adminChangesFlag = 'No';
                                             }else{
                                                            adminChangesFlag = $('#dojadminupdatescheck').val();
                                             }
 
                                             if($('#adminPortalAccess').val() == 'Yes'){
                                                            portalAccess = 'Yes';
                                             }else{
                                                            portalAccess = 'No';
                                             }
                                             if( $('#dojadminupdatescheck').val() == 'Yes'){
                                                            $('.adminuserchanges-chkbx').each(function() {
                                                                           if($(this).css("display") == 'block' && $(this).find('input').prop('checked')){
                                                                                          if($(this).find('input').attr('id').toLocaleLowerCase().indexOf('addheadcheck') != -1){
                                                                                                         staffInd = 'yes';
                                                                                          }else if($(this).find('input').attr('id').toLocaleLowerCase().indexOf('addadmincheck') != -1){
                                                                                                         adminInd = 'yes';
                                                                                          }else if($(this).find('input').attr('id').toLocaleLowerCase().indexOf('addbillingcheck') != -1){
                                                                                                         billInd = 'yes';
                                                                                          }else if($(this).find('input').attr('id').toLocaleLowerCase().indexOf('addCORcheck') != -1){
                                                                                                         corInd = 'yes';
                                                                                          }else if($(this).find('input').attr('id').toLocaleLowerCase().indexOf('removeheadcheck') != -1){
                                                                                                         staffInd = 'no';
                                                                                          }else if($(this).find('input').attr('id').toLocaleLowerCase().indexOf('removebillingcheck') != -1){
                                                                                                         billInd = 'no';
                                                                                          }else if($(this).find('input').attr('id').toLocaleLowerCase().indexOf('removeadmincheck') != -1){
                                                                                                         adminInd = 'no';
                                                                                          }else if($(this).find('input').attr('id').toLocaleLowerCase().indexOf('removecorcheck') != -1){
                                                                                                         corInd = 'no';
                                                                                          }
                                                                           }
                                                 });
                                             }
                                             if(corInd === 'Y'){
                                                            contactCorData = {
                                                                                          "agnCorMailCodes": contactCorData.agnCorMailCodes,
                                                                           };
                                             }
                                             data ={
                                                                           "id": "${reqId}",
                                                                           "userId": $("#extUserId").val(),
                                             "adminAgnHeadInd": staffInd,
                                                                "adminAgnAdminInd": adminInd,
                                                                "adminAgnBillInd": billInd,
                                                                "adminAgnCORInd" : corInd,
                                                                "adminPortalAccess": portalAccess,
                                                                "adminUserLastName": $("#updateLastName").val(),
                                                                "adminUserMidName": $("#updateMiddleName").val(),
                                                                "adminUserFirstName": $("#updateFirstName").val(),
                                                                "adminOfficePhoneNumber": $("#updatePhone").val(),
                                                                "adminUserNameOrEmail": $("#updateEmail").val(),
                                                                "agencyId":agencyId,
                                                                "amdinChanges": $('#dojadminupdatescheck').val(),
                                                                "adminComments" : $('#messageBody').val(),
                                                                "amdinChanges": adminChangesFlag,
                                                                "currentUserId": $("#extCurrentUserId").val(),
                                                                "contactCorData": contactCorData,
                                                              
                                                             };
                                            
                                             if($("#reqstatus").val()=='Denied' || $("#reqstatus").val()=='In Progress' || $("#reqstatus").val()=='Incomplete'){
                                                            var requestStatus = $("#reqstatus").val()
                                                            $.ajax({
                                                                           type: "POST",
                                                     contentType: 'application/json',
                                                     data: JSON.stringify(data),
                                                     dataType: 'json',
                                                     url: "/appportal/api/updaterequeststatus?requestId="+"${reqId}"+"&"+"requestStatus="+requestStatus+"&"+"requestType=Edit Contact",
                                                     success: function(response) {
                                                            showDialogForPendingOrDenied(response);
                                                     },
 
                                                     error: function(response) {
                                                            errorDialog(response.responseJSON.message)
                                                     }
                                                 });
                                             } else if($("#reqstatus").val()=='Approved')
                                             {
                                                            $.ajax({
                                                     type: "POST",
                                                     url: "/appportal/api/updateextemployee",
                                                     contentType: 'application/json',
                                                     data: JSON.stringify(data),
                                                     dataType: 'json',
                                                     success: function(response) {
                                                            showDialog(response)
                                                     },
 
                                                     error: function(response) {
                                                            errorDialog(response.responseJSON.message)
                                                     }
                                                 });
                                             }
                              });          
              
                             $("#updateInfo").click(function(){
                                 
                                var elem = $("#updateInfo");
                                  if (elem.text()=="Update"){
                                             $('.adminuserchanges').show();
                                                 elem.text("Cancel");
                                                 elem.css("background-color", "#c34d49");
                                                 $('#dojadminupdatescheck').val('Yes');
                                                 $('#adminPortalAccess').val($("#currentAgencyAccess").text())
                                                
                                                 $('#admin-adminCheck').val() == "Yes" ? $("#removeadminCheck").closest('div').css("display", "block") : $("#addadminCheck").closest('div').css("display", "block");
                                                 $('#admin-billingCheck').val() == "Yes" ? $("#removebillingCheck").closest('div').css("display", "block") : $("#addbillingCheck").closest('div').css("display", "block");
                                                 $('#admin-headCheck').val() == "Yes" ? $("#removeheadCheck").closest('div').css("display", "block") : $("#addheadCheck").closest('div').css("display", "block");
                                                // $('#admin-CORCheck').val() == "Yes" ? $("#removeCORCheck").closest('div').css("display", "block") : $("#removeCORCheck").closest('div').css("display", "none");
                                                 $('#admin-CORCheck').val() == "Yes" ? $("#removeCORCheck").closest('div').css("display", "block") : $("#addCORCheck").closest('div').css("display", "block");
 
                                                 $('#admin-add-headCheck').val() == "Yes" ? $("#removeheadCheck").prop( "checked", true ) : $("#removeheadCheck").prop( "checked", false );
                                                 $('#admin-add-adminCheck').val() == "Yes" ? $("#removeadminCheck").prop( "checked", true ) : $("#removeadminCheck").prop( "checked", false );
                                                 $('#admin-add-billingCheck').val() == "Yes" ? $("#removebillingCheck").prop( "checked", true ) : $("#removebillingCheck").prop( "checked", false );
                                                            //res.adminAgnCORInd == "yes" ? $("#adminCheck").prop( "checked", true ) : $("#adminCheck").prop( "checked", false );
                                                            $('#admin-add-CORCheck').val() == "Yes" ? $("#removeCORCheck").prop( "checked", true ) : $("#removeCORCheck").prop( "checked", false );
 
                                                            $('#admin-remove-headCheck').val() == "Yes" ? $("#addheadCheck").prop( "checked", true ) : $("#addheadCheck").prop( "checked", false );
                                                            $('#admin-remove-adminCheck').val() == "Yes" ? $("#addadminCheck").prop( "checked", true ) : $("#addadminCheck").prop( "checked", false );
                                                            $('#admin-remove-billingCheck').val() == "Yes" ? $("#addbillingCheck").prop( "checked", true ) : $("#addbillingCheck").prop( "checked", false );
                                                            //$('#admin-remove-CORCheck').val() == "Yes" ? $("#addCORCheck").prop( "checked", true ) : $("#addCORCheck").prop( "checked", false );
                                                            $('#admin-remove-CORCheck').val() == "Yes" ? $("#addCORCheck").prop( "checked", true ) : $("#addCORCheck").prop( "checked", false );
                                                
                                                 $("#adminRoles").css("display", "block");
                                                 $(".adminuserchanges").parent().find('span').remove();              
                                                 $(".adminuserchanges").css({"border":""});
                                  }
                                  else {
                                             $("#adminRoles").css("display", "none");
                                              $('#dojadminupdatescheck').val('No');
                                             $(".adminuserchanges").css("display", "none");
                                             $("div.adminuserchanges-chkbx").css("display", "none");
                                             elem.css("background-color", "#337ab7")
                                                 elem.text("Update");
                                             $('#updateLastName, #updateFirstName, #updateMiddleName, #updatePhone,#updateEmail').each(function() {
                                                            $(this).parent().find('span').remove();      
                                             });
                                  }
                                  $('.adminuserchanges').each(function() {
                                             $(this).val($(this).closest('tr').find('td:nth-child(3) div').text());
                                  });
                              });
</html>
