package com.razorpay;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import com.razorpay.r;
import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/razorpay/BaseConfig.class */
public class BaseConfig {
    public static final String ADVERTISING_ID = "advertising_id";
    public static final String CONFIG_JSON = "rzp_config_json";
    public static final String CONFIG_VERSION = "rzp_config_version";
    private boolean isMagicEnabled;
    private boolean isOTPElfEnabled;
    private String mCheckoutEndpoint;
    private boolean mConfigEnabled;
    private String mConfigEndpoint;
    private int mLatestSDKVersion;
    private boolean mLumberJackEnabled;
    private String mLumberjackEndpoint;
    private String mLumberjackKey;
    private String mLumberjackSdkIdentifier;
    private String mMagicBaseEndPoint;
    private String mMagicJsFileName;
    private JSONObject mMagicSettings;
    private String mMagicVersionFileName;
    private String mOTPElfBaseEndPoint;
    private String mOTPElfJsFileName;
    private JSONObject mOTPElfSettings;
    private String mOTPElfVersionFileName;
    private String mPermissionCustomMessage;
    private Boolean mPermissionCustomMessageEnabled;
    private boolean mSDKUpdateAlertEnabled;
    private int mSmsPermissionMaxAskCount;
    private String mUpdateSDKMsg;

    public static void fetchConfig(String str, Map<String, String> map, Context context) {
        p$_5$.m36062a(str, map, new r._Y_(context));
    }

    public static String getAdvertisingId(Context context) {
        return C2735h.m36079a(context).getString("advertising_id", null);
    }

    public static void getAdvertisingIdFromUtil(Context context) {
        if (getAdvertisingId(context) == null) {
            AdvertisingIdUtil.getId(context, new Y$_o$(context));
        }
    }

    public static String getBaseCurrentConfigVersion(Context context) {
        return getConfigVersionFromPreferences(context);
    }

    public static JSONObject getConfig(Context context, int i) {
        JSONObject jSONObject;
        String configDataFromPreferences = getConfigDataFromPreferences(context);
        String str = configDataFromPreferences;
        if (configDataFromPreferences == null) {
            try {
                InputStream openRawResource = context.getResources().openRawResource(i);
                StringWriter stringWriter = new StringWriter();
                char[] cArr = new char[1024];
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(openRawResource, StringConstant.UTF8));
                while (true) {
                    int read = bufferedReader.read(cArr);
                    if (read == -1) {
                        break;
                    }
                    stringWriter.write(cArr, 0, read);
                }
                openRawResource.close();
                str = stringWriter.toString();
            } catch (Exception e) {
                jSONObject = null;
            }
        }
        jSONObject = new JSONObject(str);
        return jSONObject;
    }

    private static String getConfigDataFromPreferences(Context context) {
        return C2735h.m36079a(context).getString(CONFIG_JSON, null);
    }

    private static String getConfigVersionFromPreferences(Context context) {
        return C2735h.m36079a(context).getString(CONFIG_VERSION, null);
    }

    public static String getCurrentConfigVersionTag(String str) {
        Matcher matcher = Pattern.compile("^(\\d+\\.)(\\d+\\.)(\\d+)$").matcher(str);
        return matcher.find() ? matcher.replaceFirst("$1$2*") : null;
    }

    public static Uri.Builder getFetchConfigBuilder(Uri.Builder builder, Context context, String str) {
        builder.appendQueryParameter("merchant_key_id", str).appendQueryParameter("android_version", Build.VERSION.RELEASE).appendQueryParameter("device_id", getAdvertisingId(context)).appendQueryParameter(AnalyticsConstants.DEVICE_MANUFACTURER, Build.MANUFACTURER).appendQueryParameter(AnalyticsConstants.DEVICE_MODEL, Build.MODEL).appendQueryParameter(AnalyticsConstants.NETWORK_TYPE, BaseUtils.getDataNetworkType(context).getNetworkTypeName()).appendQueryParameter(AnalyticsConstants.CELLULAR_NETWORK_TYPE, BaseUtils.getCellularNetworkType(context)).appendQueryParameter("cellular_network_provider", BaseUtils.getCellularNetworkProviderName(context)).appendQueryParameter("app_package_name", context.getApplicationContext().getPackageName()).appendQueryParameter("build_type", BaseUtils.getAppBuildType(context)).appendQueryParameter("magic_version_code", String.valueOf(g$_H$.f9454c.intValue())).appendQueryParameter("rzpassist_version_code", String.valueOf(g$_H$.f9453b.intValue())).appendQueryParameter(AnalyticsConstants.WEBVIEW_USER_AGENT, BaseUtils.getWebViewUserAgent(context).toString());
        return builder;
    }

    public static String getMagicJs() {
        return "var Magic=function(e){\"use strict\";function i(e){return\"function\"==typeof e}function o(e){return\"string\"==typeof e}function t(e,t){if(i(e))return 2<arguments.length?e.bind.apply(e,slice(arguments,1)):e.bind(t)}function u(e,t){return Array.prototype.indexOf.call(t,e)}function s(e,t){return-1!==u(e,t)}function a(e,t,n){var r;if(arguments.length<3&&(n=this),e)if(void 0!==e.length)for(r=0;r<e.length;r++)t.call(n,r,e[r]);else for(r in e)e.hasOwnProperty(r)&&t.call(n,r,e[r])}var n=window,p=n.document,m=(p.documentElement,p.body,t(p.querySelector,p));t(p.querySelectorAll,p),t(p.getElementById,p),t(n.getComputedStyle,n);function c(e,t){return t.getAttribute(e)||\"\"}function d(e){return\"hidden\"!==e.getAttribute(\"type\")}var r=[];function l(e){return r.push(e),r.length}function _(e){for(var t=[],n=arguments.length-1;0<n--;)t[n]=arguments[n+1];var r=((window.webkit||{}).messageHandlers||{}).OTPElfBridge;if(r)r.postMessage({action:e,params:t});else try{return OTPElfBridge[e].apply(OTPElfBridge,t)}catch(e){}}var f={setSms:function(e){for(var t=0;t<r.length;t++)r[t](e)}};window.elfBridge=f;function y(e,t,n){f.setSms({message:e,sender:t})}function b(){this.listenerPool={}}b.prototype.on=function(e,t){this.listenerPool[e]||(this.listenerPool[e]=[]);var n,r,o=this.listenerPool[e];if(i(t))n={callback:t};else{if(!(r=t)||\"object\"!=typeof r)return!1;n=t}return o.push(n),{remove:function(){var e=u(o,n);0<=e&&o.splice(e,1)}}},b.prototype.off=function(e){var t=this;e?delete this.listenerPool[e]:a(this.listenerPool,function(e){delete t.listenerPool[e]})},b.prototype.emit=function(e){for(var n=[],t=arguments.length-1;0<t--;)n[t]=arguments[t+1];var r=this.listenerPool[e]||[];a(r,function(e){var t=r[e].callback;t&&t.apply(t,n)})};var g={platform:null,merchant_key:null,otp_permission:!1,sdk:{type:null,version_code:null},preferences:{autosubmit_otp:!1,theme_color:\"#168AFA\"},plugin:{type:null,version_code:null},payment_data:{method:null,bank:null,wallet:null,vpa:null,amount:0,razorpay_otp:!1}},h=!1;function v(e){return h||(window.rzp?(function(e){var t=g.plugin.type;switch(e.settings.applicationType){case\"checkout\":t=\"rzpassist\";break;case\"magic\":t=\"magic\"}var n=_(\"isOTPEnabled\")||!1;w({platform:e.settings.platform,merchant_key:e.settings.merchantKey,otp_permission:n,sdk:e.settings.sdk,plugin:{type:t,version_code:e.settings.rzpassist_version_code}})}(window.rzp),h=!0):window.__rzp_options&&(w(window.__rzp_options),h=!0)),e?g[e]:g}function w(e,t,n){if(void 0===n&&(n=g),e)if(\"object\"==typeof e)for(var r in e)w(r,e[r]);else if(\"object\"==typeof t)for(var r in t)n[e]=n[e]||{},w(r,t[r],n[e]);else n[e]=t}function k(e){var t=q(e);if(!t)return!1;var n=e.index?t.querySelectorAll(e.query)[e.index]:t.querySelector(e.query);return(!n||!e.condition||!!e.condition(n,window))&&n}function q(e){var t=e.frame?window.frames[e.frame]:window;return t=e.form?t.document.forms[e.form]:t.document}function I(e){var t,n=p.forms;for(var r in n)if(n[r]===e&&o(t=r))break;return t}var S=\"(0.0.0.0|localhost|127.0.0.1):1911\",C=[{regex:S+\"/proceed\",view_rules:[{type:\"proceed\",elements:[\"proceed_submit\"]}],proceed_submit:{query:\"input[type=submit]\",form:\"0\"},check:{query:\"input#otp\",form:\"0\"},banks:[\"DUMMY\"]},{regex:S+\"/enter_otp\",view_rules:[{type:\"otp\",elements:[\"otp_input\",\"otp_submit\"]}],otp_submit:{query:\"input[type=submit]\",form:\"0\"},otp_input:{query:\"input#otp_input\",form:\"0\"},banks:[\"DUMMY\"]},{regex:S+\"/auth_choice\",view_rules:[{type:\"choice\",elements:[\"otp_choice\",\"password_choice\"]}],otp_choice:{query:\"input#otp_input\",form:\"0\"},password_choice:{query:\"input#password_input\",form:\"0\"},choice_submit:{query:\"input[type=submit]\",form:\"0\"},banks:[\"DUMMY\"]}],x=\"This is your last attempt to generate the OTP\",A=[{regex:\"netsafe.hdfcbank.com/ACSWeb/jsp/dynamicAuth.jsp\",view_rules:[{type:\"otp\",elements:[\"otp_input\",\"otp_submit\"]}],otp_submit:{query:\"input#cmdSubmit\",form:\"0\"},otp_input:{query:\"input#txtOtpPassword\",form:\"0\"},resend_otp:{query:\"#otpBtnReGen\",form:\"0\"},error_message:{query:\".errorType p:not(.successColor)\"},false_error_messages:x,banks:[\"HDFC\"]},{regex:\"netsafe.hdfcbank.com/ACSWeb/authJsp/authImprovedHopsTxnPage.jsp\",view_rules:[{type:\"otp\",elements:[\"otp_input\",\"otp_submit\"]}],otp_submit:{query:\"#cmdSubmit\",form:\"0\"},otp_input:{query:\"input#txtOtpPassword\",form:\"0\"},resend_otp:{query:\"#otpBtnReGen\",form:\"0\"},error_message:{query:\"form .errormsg\"},false_error_messages:x,banks:[\"HDFC\"]},{regex:\"netsafe.hdfcbank.com/ACSWeb/authJsp/authImprovedTxnPage.jsp\",view_rules:[{type:\"choice\",elements:[\"password_choice\",\"otp_choice\"],choice_type:\"button\"},{type:\"otp\",elements:[\"otp_input\",\"otp_submit\"]}],choice_otp:!0,password_choice:{query:\"button#staticAuthOpen\"},otp_choice:{query:\"button#dynamicAuthOpen\"},otp_submit:{query:\"#cmdSubmitDynamic\",form:\"0\"},otp_input:{query:\"input#txtOtpPassword\",form:\"0\"},resend_otp:{query:\"#otpBtnReGen\",form:\"0\"},error_message:{query:\"form .errormsg\"},banks:[\"HDFC\"]},{regex:\"netbanking.hdfcbank.com/netbanking/merchant\",frame:1,view_rules:[{type:\"username\",elements:[\"username_input\"]},{type:\"password\",elements:[\"password_input\"]},{type:\"proceed\",elements:[\"proceed_submit\"]}],username_input:{query:\"input[name=fldLoginUserId]\",form:\"0\",frame:1},password_input:{query:\"input[name=fldPassword]\",form:\"0\",frame:1},proceed_submit:{query:\"td.login_tab a\",form:\"0\",frame:1},secure_image_input:{query:\"input[name=chkrsastu]\",form:0,frame:1},user_details_form:{query:\"form[name=frmLogin] table table\",form:0,frame:1},logged_in_element:{query:'[alt=\"Continue\"]',form:0,frame:1},banks:[\"HDFC\"]},{regex:\"netbanking.hdfcbank.com/netbanking/(entry|epientry)\",view_rules:[{type:\"username\",elements:[\"username_input\"]},{type:\"password\",elements:[\"password_input\"]},{type:\"proceed\",elements:[\"proceed_submit\"]},{type:\"otp\",elements:[\"otp_input\",\"otp_submit\"]}],username_input:{query:\"input[name=fldLoginUserId]\",form:\"0\"},password_input:{query:\"input[name=fldPassword]\",form:\"0\"},proceed_submit:{query:\"td.login_tab a\",form:\"0\"},otp_submit:{query:\"input[name=fldOtpAuth]\",form:\"1\"},otp_input:{query:\"input[name=fldOtpToken]\",form:\"1\"},logged_in_element:{query:'[alt=\"Continue\"]',form:0,frame:1},banks:[\"HDFC\"]},{regex:\"netsafe.hdfcbank.com/ACSWeb/jsp/payerAuthOptions.jsp\",view_rules:[{type:\"choice\",elements:[\"otp_choice\",\"password_choice\"]}],otp_choice:{query:\"input[name=acsRadio]\",form:\"0\",index:1},password_choice:{query:\"input[name=acsRadio]\",form:\"0\"},choice_submit:{query:\"input#submitBtn\",form:\"0\"},banks:[\"HDFC\"]}],B=void 0!==window.rzp,P=(void 0!==window.StorageBridge||window.webkit,Boolean([\"razorpay.com\"].find(function(e){return location.hostname.endsWith(e)}))),T=0===location.hostname.length,O=20<document.querySelectorAll(\"a\").length||0<document.querySelectorAll(\"video\").length,E=P||T||O;function N(e,t){void 0===t&&(t={}),t=Object.assign(t,{url:location.href,strippedUrl:function(e){return void 0===e&&(e=\"\"),e.split(\"?\")[0].split(\";\")[0]}(location.href),method:v(\"payment_data\").method,plugin_type:v(\"plugin\").type,plugin_version_code:v(\"plugin\").version_code}),e=\"otpelf:\"+e,B?_(\"trackEvent\",e):_(\"trackEvent\",e,JSON.stringify(t))}function R(e){var t,n,r=(n=W(t=e),!!(t&&0<n.length)&&{view_types:n});function o(e){var t=e.target;if(s(t.nodeName,[\"INPUT\",\"BUTTON\",\"A\"])){D||(N(\"unknown_page_loaded\"),D=!0);try{var n={};n.element=t.nodeName,n.id=t.id||\"\",n.name=c(\"name\",t),n.value=\"A\"===t.nodeName?t.innerText:t.value;var r=t.form;r&&r.contains(t)&&(n.form_index=I(r)),N(\"bank_page_interaction\",n)}catch(e){}}}r?N(\"known_page_loaded\",r):E||(document.addEventListener(\"click\",o),document.addEventListener(\"dblclick\",o))}var D=!1;var M=[].concat([{regex:\"secure4.arcot.com/acspage/cap\",view_rules:[{type:\"otp\",elements:[\"otp_input\",\"otp_submit\"]}],otp_submit:{query:\"button#sendotp\",form:\"0\"},otp_input:{query:\"form[name=passwdForm] input[name=otp]\"},resend_otp:{query:\"a\",condition:function(e){return/resend/i.test(e.href)}},banks:[]},{regex:\"secure7.arcot.com/acspage/cap\",view_rules:[{type:\"otp\",elements:[\"otp_input\",\"otp_submit\"]}],otp_submit:{query:\"button#sendotp\",form:\"0\"},otp_input:{query:\"input#enterPIN\",form:\"0\"},banks:[]},{regex:\"secure5.arcot.com/acspage/cap\",view_rules:[{type:\"choice\",elements:[\"otp_choice\",\"password_choice\"]},{type:\"otp\",elements:[\"otp_input\",\"otp_submit\"]}],otp_submit:{query:\"button#sendotp\",form:\"0\"},otp_input:{query:\"input#otpentrypin\",form:\"0\"},check:{query:\"input#disclaimer\",form:\"0\"},choice_submit:{query:\"button#continue\",form:\"0\"},otp_choice:{query:\"input#otp\",form:\"0\"},password_choice:{query:\"input#static\",form:\"0\"},resend_otp:{query:\"span#resend a\",form:\"0\"},error_message:{query:\"div#info_error span\"},banks:[\"INDB\"]}],C,[{regex:\"enstage-sas.com/rupay-web-v1/EnrollWeb/NPCI/server/AcquirerHandler\",view_rules:[{type:\"otp\",elements:[\"otp_input\",\"otp_submit\"]}],otp_submit:{query:'a[onclick=\"javascript:return validateOTP()\"]',form:\"0\"},otp_input:{query:\"input#otpPassword\",form:\"0\",condition:function(e,t){var n=t.document.body.querySelector(\"div.transactionArea\");return!!n&&n.innerText.match(/(One Time Password has been sent)/i)}},resend_otp:{query:'a[href=\"javascript:resendotp()\"]',form:\"0\"},banks:[\"RUPAY\"]}],A,[{regex:\"https://acs.icicibank.com/acspage/cap\",view_rules:[{type:\"proceed\",elements:[\"try_index_proceed\",\"check\",\"proceed_submit\"]},{type:\"otp\",elements:[\"try_index_otp\",\"otp_input\",\"otp_submit\"]}],try_index_proceed:{query:'input[name=tryIndex][value=\"1\"]',form:\"0\",bypassVisibility:!0},try_index_otp:{query:'input[name=tryIndex]:not([value=\"1\"])',form:\"0\",bypassVisibility:!0},check:{query:\"input[name=otpDestinationOption]\",form:\"0\"},proceed_submit:{query:\"#pwdbaseotppage button[type=submit]\",form:\"0\"},otp_input:{query:\"input#txtAutoOtp\",form:\"0\"},otp_submit:{query:\"#PASSWDPAGE button[type=submit]\",form:\"0\"},banks:[\"ICIC\"]},{regex:\"www.3dsecure.icicibank.com/ACSWeb/EnrollWeb/ICICIBank/server/OtpServer\",view_rules:[{type:\"otp\",elements:[\"otp_input\",\"otp_submit\"]}],otp_submit:{query:\"input#cmdSubmit\",form:\"0\"},otp_input:{query:\"input#txtAutoOtp\",form:\"0\"},resend_otp:{query:\"#link\",form:\"0\"},error_message:{query:\".errorType\"},banks:[\"ICIC\"]},{regex:\"(www.3dsecure.icicibank.com/ACSWeb/EnrollWeb/ICICIBank/server/AccessControlServer|www.3dsecure.icicibank.com/ACSWeb/EnrollWeb/ICICIBank/auth/SCode)\",view_rules:[{type:\"proceed\",elements:[\"proceed_submit\"]},{type:\"otp\",elements:[\"otp_input\",\"otp_submit\"]}],proceed_submit:{query:\"input[name=I1]\",form:\"0\"},check:{query:\"input#otpDestinationOption_toMobile_InputId\",form:\"0\"},otp_submit:{query:\"input#cmdSubmit\",form:\"0\"},otp_input:{query:\"input#txtAutoOtp\",form:\"0\"},resend_otp:{query:\"#link\",form:\"0\"},error_message:{query:\".errorType\"},banks:[\"ICIC\"]},{regex:\"shopping.icicibank.com/corp/(BANKAWAY|Finacle)\",view_rules:[{type:\"username\",elements:[\"username_input\"]},{type:\"password\",elements:[\"password_input\"]},{type:\"proceed\",elements:[\"proceed_submit\"]},{type:\"otp\",elements:[\"otp_input\",\"otp_submit\"]}],username_input:{query:\"input[name='AuthenticationFG.USER_PRINCIPAL']\",form:\"0\"},password_input:{query:\"input[name='AuthenticationFG.ACCESS_CODE']\",form:\"0\"},proceed_submit:{query:\"input#VALIDATE_CREDENTIALS\",form:\"0\"},otp_input:{query:\"input[id='TranRequestManagerFG.ONE_TIME_PASSWORD__']\"},otp_submit:{query:\"input[id='SUBMIT_TRANSACTION']\",form:\"0\"},banks:[\"ICIC\"]},{regex:\"shopping.icicibank.com/corp/AuthenticationController\",view_rules:[{type:\"username\",elements:[\"username_input\"]},{type:\"password\",elements:[\"password_input\"]},{type:\"proceed\",elements:[\"proceed_submit\"]},{type:\"otp\",elements:[\"otp_input\",\"otp_submit\"]}],username_input:{query:\"input[name='AuthenticationFG.USER_PRINCIPAL']\",form:\"0\"},password_input:{query:\"input[name='AuthenticationFG.ACCESS_CODE']\",form:\"0\"},proceed_submit:{query:\"input#VALIDATE_CREDENTIALS\",form:\"0\"},otp_input:{query:\"input[id='TranRequestManagerFG.ONE_TIME_PASSWORD__']\"},otp_submit:{query:\"input[id='SUBMIT_TRANSACTION']\",form:\"0\"},logged_in_element:{query:\"input[name='Action.SUBMIT_TRANSACTION']\",form:\"0\"},banks:[\"ICIC\"]}],[{regex:\"merchant.onlinesbi.com/merchant/smsenablehighsecurity.htm\",view_rules:[{type:\"otp\",elements:[\"otp_input\",\"otp_submit\"]}],otp_submit:{query:\"input#confirmButton\"},otp_input:{query:\"input[name=securityPassword]\"},banks:[\"SBIN\"]},{regex:\"acs([0-9]?).onlinesbi.com/bdacs/SBIValidate/V\",view_rules:[{type:\"otp\",elements:[\"otp_input\",\"otp_submit\"]}],otp_submit:{query:\"#form1 .formInputSection .button.next\"},otp_input:{query:\"input[name=customerotp]\"},resend_otp:{query:\".resendBtn a\"},banks:[\"SBIN\"]},{regex:\"acs([0-9]?).onlinesbi.com/bdacs/SBIValidate/M\",view_rules:[{type:\"otp\",elements:[\"otp_input\",\"otp_submit\"]}],otp_submit:{query:\"#form1 .formInputSection .button.next\"},otp_input:{query:\"input[name=customerpin]\"},resend_otp:{query:\".resendBtn a\"},banks:[\"SBIN\"]},{regex:\"merchant.onlinesbi.com/merchant/(merchantprelogin|loginsubmit).htm\",view_rules:[{type:\"username\",elements:[\"username_input\"]},{type:\"password\",elements:[\"password_input\"]},{type:\"proceed\",elements:[\"proceed_submit\"]}],username_input:{query:\"input#username\",form:\"0\"},password_input:{query:\"input#label2\",form:\"0\"},proceed_submit:{query:\"input\",form:\"0\",index:8},banks:[\"SBIN\"]}],[{regex:\"secure.axisbank.com/(acs-web-axis|ACSWeb)/EnrollWeb/AxisBank/server/OtpServer\",view_rules:[{type:\"otp\",elements:[\"otp_input\",\"otp_submit\"]}],otp_submit:{query:\"div#otp a\",form:\"0\"},otp_input:{query:\"input#otpValue\",form:\"0\"},resend_otp:{query:\"div#otp div.resentOtp a\"},error_message:{query:\"span#errorMsg\"},banks:[\"UTIB\"]},{regex:\"secure.axisbank.com/(acs-web-axis|ACSWeb)/EnrollWeb/AxisBank/server/AccessControlServer\",view_rules:[{type:\"choice\",elements:[\"password_choice\",\"otp_choice\"],choice_type:\"link\"},{type:\"otp\",elements:[\"otp_input\",\"otp_submit\"]}],password_choice:{query:\"a#t1_static\"},otp_choice:{query:\"a#t2_otp\"},choice_otp:!0,otp_input:{query:\"input#otpValue\"},otp_submit:{query:\"#otp a.active, a#changeSubmitButton\"},banks:[\"UTIB\"]},{regex:\"retail.axisbank.co.in/wps/portal/rBanking/AxisSMRetailLogin/axissmretailpage\",view_rules:[{type:\"username\",elements:[\"username_input\"]},{type:\"password\",elements:[\"password_input\"]},{type:\"proceed\",elements:[\"proceed_submit\"]}],username_input:{query:\"input#loginId\",form:\"0\"},password_input:{query:\"input#newPassword\",form:\"0\"},proceed_submit:{query:\"input[name=SMsubmit]\",form:\"0\"},banks:[\"UTIB\"]},{regex:\"retail.axisbank.co.in/wps/portal/rBanking/AxisSMRetailLogin/(axissmretailpage|axissmrepayments)\",view_rules:[{type:\"username\",elements:[\"username_input\"]},{type:\"password\",elements:[\"password_input\"]},{type:\"proceed\",elements:[\"proceed_submit\"]}],username_input:{query:\"input#loginId\",form:\"0\"},password_input:{query:\"input#newPassword\",form:\"0\"},proceed_submit:{query:\"input[name=SMsubmit]\",form:\"0\"},logged_in_element:{query:'input[name=\"Action.SHP_SUBMIT_TRANSACTION\"]',form:0},banks:[\"UTIB\"]}],[{regex:\"www.kotak.com/.*/ksecLogin\",view_rules:[{type:\"username\",elements:[\"username_input\"]},{type:\"password\",elements:[\"password_input\"]},{type:\"proceed\",elements:[\"proceed_submit\"]}],username_input:{query:\"input#crn\",form:\"0\"},password_input:{query:\"input#pswd\",form:\"0\"},proceed_submit:{query:\"a#secure-login01\",form:\"0\"},banks:[\"KKBK\"]}],[{regex:\"https://netbanking.yesbank.co.in/netbanking/merchant\",frame:0,view_rules:[{type:\"username\",elements:[\"username_input\"]},{type:\"password\",elements:[\"password_input\"]},{type:\"proceed\",elements:[\"proceed_submit\"]}],username_input:{query:\"input[name=fldLoginUserId]\",frame:0},password_input:{query:\"input[name=fldPassword]\",frame:0},proceed_submit:{query:\"a[href='javascript:void(0);']:not(.bodylink1)\",frame:0},banks:[\"YESB\"]}],[{regex:\"kvbin.com/B001/merchantenc\",view_rules:[],add_meta:!1,banks:[]}]);function F(e){for(var t=0;t<M.length;t++)if(e.match(M[t].regex))return function(e){{if(!e.logged_in_element)return;document.querySelector(e.logged_in_element.query)&&N(\"netbanking_user_loggedin\")}}(M[t]),M[t]}function U(e,t){for(var n=0;n<t.length;n++){var r=e[t[n]],o=k(r);if(!o)return;if(!r.bypassVisibility&&!d(o))return}return 1}function W(e){if(void 0===e)return[];for(var t=e.view_rules,n=[],r=0;r<t.length;r++)U(e,t[r].elements)&&n.push(t[r].type);return n}var L={generic:{textPatterns:[\"\\\\bone.time password\\\\b\",\"\\\\bone.time pin\\\\b\",\"\\\\bone.time code\\\\b\",\"\\\\botp\\\\b\"],otpPatterns:[\"\\\\b[0-9]{6,8}\\\\b\"]},specific:[{matches:{sender:\"KOTAKB\",message:\"One Time Password\"},pattern:\"[0-9]{6}\",bank:\"KKBK\",otp_timeout:60},{matches:{sender:\"(HDFCBK|hdfcbk)\",message:\"OTP is\"},type:{debit:[\"mastercard\",\"visa\"]},pattern:\"[0-9]{6}\",bank:\"HDFC\",otp_timeout:60},{matches:{sender:\"FROMSC\",message:\"Your One-Time Password\"},pattern:\"[0-9]{6}\",bank:\"SYNB\",otp_timeout:60},{matches:{sender:\"ICICIB\",message:\"Your One-Time Password to create a 3D Secure PIN\"},pattern:\"[0-9]{6}\",type:{debit:[\"mastercard\",\"visa\"]},bank:\"ICIC\",otp_timeout:60},{matches:{sender:\"ICICIB\",message:\"Your One Time Password is\"},pattern:\"[0-9]{6}\",type:{credit:[\"mastercard\",\"visa\"]},bank:\"ICIC\",otp_timeout:60},{matches:{sender:\"ICICIB\",message:\"to complete your Internet Banking Transaction\"},pattern:\"[0-9]{6}\",bank:\"ICIC\",otp_timeout:60},{matches:{sender:\"CITIBK\",message:\"Onetime password\"},pattern:\"[0-9]{6}\",bank:\"CITI\",otp_timeout:60},{matches:{sender:\"SBICRD\",message:\"OTP for trxn\"},pattern:\"[0-9]{6}\",bank:\"SBIN\",otp_timeout:60},{matches:{sender:\"SBIINB\",message:\"TP for transaction\"},pattern:\"[0-9]{8}\",bank:\"SBIN\",otp_timeout:60},{matches:{sender:\"(SBIACS|SBIOTP)\",message:\"One Time Password\"},pattern:\"[0-9]{6}\",type:{debit:[\"mastercard\",\"visa\"]},bank:\"SBIN\",otp_timeout:60},{matches:{sender:\"HSBCIN\",message:\"Onetime password\"},pattern:\"[0-9]{6}\",bank:\"HSBC\",otp_timeout:60},{matches:{sender:\"AXISBK\",message:\"your NETSECURE code is\"},pattern:\"[0-9]{8}\",bank:\"UTIB\",otp_timeout:50},{matches:{sender:\"PNBACS\",message:\"Your One Time Password\"},type:{debit:[\"mastercard\"]},pattern:\"[0-9]{6}\",bank:\"PUNB\",otp_timeout:50},{matches:{sender:\"INDBNK\",message:\"One Time Password for Online transaction\"},pattern:\"(?<![0-9])[0-9]{6}(?![0-9])\",bank:\"IDIB\"},{matches:{sender:\"FCHRGE\",message:\"is your OTP login\"},pattern:\"[0-9]{4}\",bank:\"FRCHG\"},{matches:{sender:\"DUMMY\",message:\"Your OTP for the transaction\"},pattern:\"[0-9]{6}\",bank:\"DUMMY\"}]},H={};function Y(e){if(H[e])return H[e];for(var t=L.specific,n=0,r=t.length;n<r;n++){var o=t[n];if(new RegExp(o.matches.sender+\"$\",\"i\").test(e))return H[e]=o}return null}function j(e){var t=e.message,n=e.sender;if(!n||!t)return null;var r=Y(n);if(r&&new RegExp(r.matches.message).test(e.message)){var o=new RegExp(r.pattern),i=e.message.match(o);if(i&&i.length)return i[0]}return function(e){for(var t=L.generic,n=t.textPatterns,r=t.otpPatterns,o=0,i=n.length;o<i;o++){if(new RegExp(n[o],\"i\").test(e.message))for(var s=0,a=r.length;s<a;s++){var u=r[s],p=e.message.match(u);if(p&&p[0])return p[0]}}return null}(e)}var K,G=[];function z(e){K=K||l(function(e){!function(e){for(var t=0;t<M.length;t++)if(e.match(M[t].regex))return M[t].banks}(location.href);var t,n=(t=Y(e.sender))?t.bank:null,r=j(e);if(r)for(var o={otp:r,bank:n,sender:e.sender},i=0;i<G.length;i++)G[i](o)}),G.push(e)}function V(e){if(e&&e.check){var t=k(e.check);if(t){t.checked=!0;try{t.dispatchEvent(new Event(\"input\")),t.dispatchEvent(new Event(\"change\"))}catch(e){}}}}function J(e){if(e){if(0<=W(e).indexOf(\"choice\")){var t=function(e,t){if(e)for(var n=e.view_rules,r=0;r<n.length;r++)if(n[r].type===t)return n[r]}(e,\"choice\");if(\"radio\"!==(t&&(t.choice_type||\"radio\")))return}var n;!e.choice_submit||(n=k(e.choice_submit))&&n.click()}}function $(e){k(e.otp_choice).click(),J(e),N(\"otp_auth_selected\")}function X(e){k(e.password_choice).click(),J(e),N(\"password_auth_selected\")}function Z(e,t){var n=k(e.otp_input);n.value=t;try{n.dispatchEvent(new Event(\"input\")),n.dispatchEvent(new Event(\"change\"))}catch(e){}N(\"bank_otp_autofilled\")}function Q(e){var t=k(e.otp_submit);return!!t&&(t.click(),N(\"bank_otp_submitted\"),!0)}function ee(e){var t=k(e.proceed_submit);return!!t&&(t.click(),!0)}var te=new b;var ne={code:0,message:\"Something went wrong!\"},re={code:1,message:\"Rule is undefined.\"},oe={code:2,message:\"Password is chosen.\"},ie={code:4,message:\"Choice is invalid.\"},se={code:5,message:\"Failed to resend OTP.\"},ae={code:6,message:\"Element was not found on the page.\"};function ue(n){var r=W(n);function o(e){void 0===e&&(e={}),0<=r.indexOf(\"proceed\")?(te.emit(\"page_resolved\",r[0]),te.emit(\"proceed\")):0<=r.indexOf(\"choice\")&&\"choice\"!==e.previous_rule?U(n,n.view_rules[0].elements)?te.emit(\"page_resolved\",{type:r[0],data:{choices:n.view_rules[0].elements}}):(te.emit(\"page_resolved\",r[0]||\"unknown\"),te.emit(\"abort_magic\",ae)):te.emit(\"page_resolved\",e.next_rule||r[0]||\"unknown\");var t=function(e){if(!e||!e.error_message)return null;var t=k(e.error_message);if(t){var n=t.innerHTML.replace(/^\\s*/g,\"\").replace(/\\s*$/g,\"\");return n?n.replace(/<\\/?[^>]+(>|$)/g,\"\"):null}return null}(n);t&&(!n.false_error_messages||n.false_error_messages.indexOf(t)<0)&&te.emit(\"error_message\",t)}te.on(\"abort_magic\",function(e){void 0===e&&(e=ne),pe({action:\"abort_magic\",data:e})}),te.on(\"page_unload\",function(e){void 0===e&&(e={}),pe({action:\"page_unload\",data:e})}),te.on(\"select_choice\",function(e){var t=e.choice;if(void 0===t&&(t=\"\"),n)return\"password\"===t.toLowerCase()?(X(n),void te.emit(\"abort_magic\",oe)):void(\"otp\"===t.toLowerCase()?($(n),n.choice_otp&&o({previous_rule:\"choice\",next_rule:\"otp\"})):te.emit(\"abort_magic\",ie));te.emit(\"abort_magic\",re)}),te.on(\"submit_otp\",function(e){var t=e.otp;n?0<=r.indexOf(\"otp\")&&(Z(n,t),Q(n)):te.emit(\"abort_magic\",re)}),te.on(\"resend_otp\",function(){n?!function(e){if(e.resend_otp){var t=k(e.resend_otp);return t&&(t.click(),1)}}(n)?te.emit(\"abort_magic\",se):te.emit(\"otp_resent\",!0):te.emit(\"abort_magic\",re)}),te.on(\"otp_resent\",function(e){pe({action:\"otp_resent\",data:e})}),te.on(\"load\",function(){n&&o()}),te.on(\"page_resolved\",function(e){\"string\"==typeof e&&(e={type:e,otp_permission:v(\"otp_permission\")}),n&&(e.bank=n.banks&&n.banks[0]||\"unknown\"),pe({action:\"page_resolved\",data:e})}),te.on(\"proceed\",function(){n?(V(n),ee(n)):te.emit(\"abort_magic\",re)}),te.on(\"error_message\",function(e){pe({action:\"error_message\",data:e})}),te.on(\"otp_parsed\",function(e){pe({action:\"otp_parsed\",data:e})})}function pe(e){return function(e){for(var t=[],n=arguments.length-1;0<n--;)t[n]=arguments[n+1];try{return t=t.map(function(e){return\"object\"==typeof e?JSON.stringify(e):e}),MagicBridge[e].apply(MagicBridge,t)}catch(e){}}(\"relay\",e)}function me(e){te.emit(\"load\");var t,n,r=W(e);R(e),e&&r.length?B&&void 0!==(n=_(\"getFromCustomStorage\",\"OTP.pin\"))&&(_(\"getFromCustomStorage\",\"OTP.bank\"),t=_(\"getFromCustomStorage\",\"OTP.sender\"),!1===/RZRPAY$/.test(t)&&y(n,t),_(\"clearCustomStorage\")):e||te.emit(\"page_resolved\",\"unknown\")}var ce=location.href.startsWith(\"https://api.razorpay.com/v1/checkout\"),de=window.onbeforeunload?\"beforeunload\":\"unload\";window.addEventListener(de,function(e){te.emit(\"page_unload\")});var le,_e=function(t){var e,n;t&&t.frame?(e=t.frame,\"complete\"===((n=window.frames[e].frameElement).contentDocument||n.contentWindow.document).readyState&&me(t),window.frames[t.frame].frameElement.addEventListener(\"load\",function(e){me(t)})):me(t)};return ue(le=F(location.href)),_e(le),z(function(e){te.emit(\"otp_parsed\",e)}),ce&&l(function(e){window.handleOTP&&window.handleOTP(e.message)}),e.elfBridge=f,e.showOTP=y,e.view={loadCSS:function(e){}},e.handleRelay=function(e){\"string\"==typeof e&&(e=JSON.parse(e));var t=e.action,n=e.data;switch(t){case\"select_choice\":case\"submit_otp\":case\"resend_otp\":te.emit(t,n)}},e.getElementByRule=k,e.getParentByRule=q,e.getRuleByElement=function(e){var t,n=e.nodeName.toLowerCase(),r=c(\"id\",e),o=c(\"name\",e),i=e.form;if(r)n+=\"#\"+r;else if(o){var s=\"[name=\"+o+\"]\";try{m(n+s),n+=s}catch(e){}}var a={query:n};return i&&i.contains(e)&&void 0!==(t=I(i))&&(a.form=t),void 0!==t&&i.querySelector(n)!==e&&(a.index=u(e,i.querySelectorAll(n))),a},e.getFormIndex=I,e}({});\n";
    }

    public static String getOtpelfJsFromFile(Context context, int i) {
        String str;
        try {
            InputStream openRawResource = context.getResources().openRawResource(i);
            StringWriter stringWriter = new StringWriter();
            char[] cArr = new char[1024];
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(openRawResource, StringConstant.UTF8));
            while (true) {
                int read = bufferedReader.read(cArr);
                if (read == -1) {
                    break;
                }
                stringWriter.write(cArr, 0, read);
            }
            openRawResource.close();
            str = stringWriter.toString();
        } catch (Exception e) {
            str = "";
        }
        return str;
    }

    public static String getVersionJSON() {
        return "{\n  \"hash\" : \"MD5\",\n  \"magic_hash\": \"MD5\"\n}\n";
    }

    public static void saveConfigDataToPreferences(Context context, String str) {
        C2735h.m36076b(context).putString(CONFIG_JSON, str).apply();
    }

    public static void setAdvertisingId(Context context, String str) {
        C2735h.m36076b(context).putString("advertising_id", str).apply();
    }

    private void setAnalyticsConfig(JSONObject jSONObject) {
        this.mLumberJackEnabled = ((Boolean) BaseUtils.getJsonValue("analytics.lumberjack.enable", jSONObject, Boolean.TRUE)).booleanValue();
        this.mLumberjackKey = (String) BaseUtils.getJsonValue("analytics.lumberjack.key", jSONObject, "");
        this.mLumberjackEndpoint = (String) BaseUtils.getJsonValue("analytics.lumberjack.end_point", jSONObject, "");
        this.mLumberjackSdkIdentifier = (String) BaseUtils.getJsonValue("analytics.lumberjack.sdk_identifier", jSONObject, "");
    }

    private void setBaseConfig(JSONObject jSONObject) {
        this.mConfigEndpoint = (String) BaseUtils.getJsonValue("config_end_point", jSONObject, "");
        this.mConfigEnabled = ((Boolean) BaseUtils.getJsonValue("enable", jSONObject, "")).booleanValue();
    }

    private void setCheckoutBaseConfig(JSONObject jSONObject) {
        setCheckoutEndPoint((String) BaseUtils.getJsonValue("checkout.end_point", jSONObject, ""));
    }

    public static void setConfigVersionToPreferences(Context context, String str) {
        C2735h.m36076b(context).putString(CONFIG_VERSION, str).apply();
    }

    private void setMagicConfig(JSONObject jSONObject) {
        this.isMagicEnabled = ((Boolean) BaseUtils.getJsonValue("magic.enable", jSONObject, Boolean.TRUE)).booleanValue();
        this.mMagicSettings = (JSONObject) BaseUtils.getJsonValue("magic.settings", jSONObject, new JSONObject());
        this.mMagicBaseEndPoint = (String) BaseUtils.getJsonValue("magic.endpoint", jSONObject, "https://cdn.razorpay.com/static/magic/");
        this.mMagicVersionFileName = (String) BaseUtils.getJsonValue("magic.version_file_name", jSONObject, "version.json");
        this.mMagicJsFileName = (String) BaseUtils.getJsonValue("magic.js_file_name", jSONObject, "magic.js");
    }

    private void setOtpElfConfig(JSONObject jSONObject) {
        this.isOTPElfEnabled = ((Boolean) BaseUtils.getJsonValue("otpelf.enable", jSONObject, Boolean.TRUE)).booleanValue();
        this.mOTPElfSettings = (JSONObject) BaseUtils.getJsonValue("otpelf.settings", jSONObject, new JSONObject());
        this.mOTPElfBaseEndPoint = (String) BaseUtils.getJsonValue("otpelf.endpoint", jSONObject, "https://cdn.razorpay.com/static/otpelf/");
        this.mOTPElfVersionFileName = (String) BaseUtils.getJsonValue("otpelf.version_file_name", jSONObject, "version.json");
        this.mOTPElfJsFileName = (String) BaseUtils.getJsonValue("otpelf.js_file_name", jSONObject, "otpelf.js");
    }

    private void setPermissionConfig(JSONObject jSONObject) {
        this.mPermissionCustomMessage = (String) BaseUtils.getJsonValue("permissions.custom_message", jSONObject, "");
        this.mPermissionCustomMessageEnabled = Boolean.valueOf(((Boolean) BaseUtils.getJsonValue("permissions.enable_custom_message", jSONObject, Boolean.FALSE)).booleanValue());
        this.mSmsPermissionMaxAskCount = ((Integer) BaseUtils.getJsonValue("permissions.max_ask_count", jSONObject, (Object) 0)).intValue();
    }

    private void setUpdateSDKConfig(JSONObject jSONObject) {
        this.mLatestSDKVersion = ((Integer) BaseUtils.getJsonValue("update_sdk_config.latest_version", jSONObject, (Object) 1)).intValue();
        this.mUpdateSDKMsg = (String) BaseUtils.getJsonValue("update_sdk_config.msg", jSONObject, "");
        this.mSDKUpdateAlertEnabled = ((Boolean) BaseUtils.getJsonValue("update_sdk_config.enable_alert", jSONObject, Boolean.TRUE)).booleanValue();
    }

    public String getCheckoutEndpoint() {
        return BaseConstants.RZP_URL + this.mCheckoutEndpoint;
    }

    public String getConfigEndpoint() {
        return this.mConfigEndpoint;
    }

    public int getLatestSDKVersionCode() {
        return this.mLatestSDKVersion;
    }

    public String getLumberjackEndpoint() {
        return this.mLumberjackEndpoint;
    }

    public String getLumberjackKey() {
        return this.mLumberjackKey;
    }

    public String getLumberjackSdkIdentifier() {
        return this.mLumberjackSdkIdentifier;
    }

    public String getMagicBaseEndPoint() {
        return this.mMagicBaseEndPoint;
    }

    public String getMagicJsFileName() {
        return this.mMagicJsFileName;
    }

    public String getMagicJsUrl() {
        return getMagicBaseEndPoint() + this.mMagicJsFileName;
    }

    public JSONObject getMagicSettings() {
        return this.mMagicSettings;
    }

    public String getMagicVersionUrl() {
        return getMagicBaseEndPoint() + this.mMagicVersionFileName;
    }

    public String getOTPElfBaseEndPoint() {
        return this.mOTPElfBaseEndPoint;
    }

    public String getOTPElfJsFileName() {
        return this.mOTPElfJsFileName;
    }

    public JSONObject getOTPElfSettings() {
        return this.mOTPElfSettings;
    }

    public String getOtpElfJsUrl() {
        return getOTPElfBaseEndPoint() + this.mOTPElfJsFileName;
    }

    public String getOtpElfVersionUrl() {
        return getOTPElfBaseEndPoint() + this.mOTPElfVersionFileName;
    }

    public String getPermissionCustomMessage() {
        return this.mPermissionCustomMessage;
    }

    public int getSmsPermissionMaxAskCount() {
        return this.mSmsPermissionMaxAskCount;
    }

    public String getUpdateSDKMsg() {
        return this.mUpdateSDKMsg;
    }

    public boolean isConfigEnabled() {
        return this.mConfigEnabled;
    }

    public Boolean isLumberJackEnabled() {
        return Boolean.valueOf(this.mLumberJackEnabled);
    }

    public boolean isMagicEnabled() {
        return this.isMagicEnabled;
    }

    public Boolean isOTPElfEnabled() {
        return Boolean.valueOf(this.isOTPElfEnabled);
    }

    public Boolean isPermissionCustomMessageEnabled() {
        return this.mPermissionCustomMessageEnabled;
    }

    public boolean isSDKUpdateAlertEnabled() {
        return this.mSDKUpdateAlertEnabled;
    }

    public void setCheckoutEndPoint(String str) {
        this.mCheckoutEndpoint = str;
    }

    public void setConfig(JSONObject jSONObject) {
        try {
            setUpdateSDKConfig(jSONObject);
            setBaseConfig(jSONObject);
            setPermissionConfig(jSONObject);
            setAnalyticsConfig(jSONObject);
            setOtpElfConfig(jSONObject);
            setMagicConfig(jSONObject);
            setCheckoutBaseConfig(jSONObject);
        } catch (Exception e) {
        }
    }
}
