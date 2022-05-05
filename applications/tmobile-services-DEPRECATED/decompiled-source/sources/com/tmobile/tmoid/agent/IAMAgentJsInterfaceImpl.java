package com.tmobile.tmoid.agent;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.telephony.TelephonyManager;
import android.util.Patterns;
import android.webkit.JavascriptInterface;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.tmoid.agent.IAMWebViewClient;
import com.tmobile.tmoid.agent.LoginState;
import com.tmobile.tmoid.helperlib.util.Log;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/IAMAgentJsInterfaceImpl.class */
public class IAMAgentJsInterfaceImpl implements IAMAgentJSInterface {
    public static final String LOG_TAG = "TMO-Agent";

    /* renamed from: a */
    private Pattern f14641a = Pattern.compile(".* Error report.*");

    /* renamed from: b */
    ActivityInterface f14642b;
    public String lastSubmittedUserIdentifier;

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/IAMAgentJsInterfaceImpl$ActivityInterface.class */
    public interface ActivityInterface {
        /* renamed from: a */
        IAMWebViewClient mo5137a();

        /* renamed from: b */
        Context mo5136b();

        /* renamed from: c */
        void mo5135c(String str);

        /* renamed from: d */
        void mo5134d();

        /* renamed from: e */
        LoginState mo5133e();
    }

    public IAMAgentJsInterfaceImpl(ActivityInterface activityInterface, String str) {
        this.f14642b = activityInterface;
        this.lastSubmittedUserIdentifier = str;
    }

    public void exit() {
        this.f14642b.mo5134d();
    }

    @JavascriptInterface
    public String getFirstEmailAddress() {
        Pattern pattern = Patterns.EMAIL_ADDRESS;
        Account[] accounts = AccountManager.get(this.f14642b.mo5136b()).getAccounts();
        if (accounts == null) {
            return null;
        }
        for (Account account : accounts) {
            if (pattern.matcher(account.name).matches()) {
                return account.name;
            }
        }
        return null;
    }

    public String getLastSubmittedUserIdentifier() {
        return this.lastSubmittedUserIdentifier;
    }

    @JavascriptInterface
    public String getPhoneNumber() {
        String str;
        long currentTimeMillis = System.currentTimeMillis();
        String line1Number = ((TelephonyManager) this.f14642b.mo5136b().getApplicationContext().getSystemService("phone")).getLine1Number();
        if (line1Number != null) {
            Log.m4648v("TMO-Agent", "get phone number time:" + (System.currentTimeMillis() - currentTimeMillis));
            str = line1Number;
            if (line1Number.length() > 10) {
                if (!line1Number.startsWith(TmoUserStatus.CUSTOMER_TYPE_POSTPAID) || line1Number.length() != 11) {
                    str = line1Number;
                    if (line1Number.startsWith("+1")) {
                        str = line1Number;
                        if (line1Number.length() == 12) {
                            str = line1Number.substring(2);
                        }
                    }
                } else {
                    str = line1Number.substring(1);
                }
            }
        } else {
            Log.m4648v("TMO-Agent", "no sim card installed");
            str = "";
        }
        return str;
    }

    public void log(String str) {
        Log.m4648v("TMO-Agent", "JS_LOG:" + str);
    }

    public void pageWasLoaded(String str, String str2, String str3) {
        Log.m4648v("TMO-Agent", "user navigated to:" + str);
        if (this.f14641a.matcher(str).matches()) {
            String str4 = str3;
            if (str3 == null) {
                str4 = "Server Error";
            }
            IAMWebViewClient.ActivityInterface activityInterface = this.f14642b.mo5137a().f14672a;
            this.f14642b.mo5137a();
            activityInterface.mo5120f(-1, str4, str2);
        }
    }

    public void updatePageSource(String str) {
        this.f14642b.mo5135c(str);
    }

    @JavascriptInterface
    public void userIdentifierSubmitted(String str) {
        log("Username grabbing hack:" + str);
        this.lastSubmittedUserIdentifier = str;
    }

    @JavascriptInterface
    public void userLoggedIn(String str) {
        Log.m4648v("TMO-Agent", "userLoggedIn jsInterface called, username:" + str);
        if (!this.f14642b.mo5133e().m5115d().equals(LoginState.State.LOGGED_IN)) {
            this.f14642b.mo5133e().m5118a(this.f14642b.mo5136b(), LoginState.State.LOGGED_IN);
        }
    }
}
