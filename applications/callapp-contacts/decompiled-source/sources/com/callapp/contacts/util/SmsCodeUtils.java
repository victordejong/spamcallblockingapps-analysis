package com.callapp.contacts.util;

import com.callapp.common.util.AESUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.event.listener.Listener;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.PhoneVerifierManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.http.HttpRequest;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import com.callapp.repackaged.org.apache.commons.codec.binary.Base64;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/SmsCodeUtils.class */
public class SmsCodeUtils {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/SmsCodeUtils$SmsCodeEvents.class */
    public interface SmsCodeEvents {
        void a();

        void a(String str, String str2);
    }

    public static void a(final Phone phone, final SmsCodeEvents smsCodeEvents) {
        AnalyticsManager.get().a(Constants.REGISTRATION, "Requesting SMS code from server");
        HttpRequest httpRequest = new HttpRequest(HttpUtils.getCallappServerPrefix() + "scg");
        httpRequest.a("myp", phone.a());
        httpRequest.a("cvc", String.valueOf(CallAppApplication.get().getVersionCode()));
        httpRequest.a("ispro", "1");
        httpRequest.a("cv", Activities.getClientVersion());
        httpRequest.f16217a = new Listener<HttpRequest>() { // from class: com.callapp.contacts.util.SmsCodeUtils.1
            @Override // com.callapp.contacts.event.listener.Listener
            public final /* synthetic */ void a(HttpRequest httpRequest2) {
                HttpRequest httpRequest3 = httpRequest2;
                try {
                    if (StringUtils.b((CharSequence) httpRequest3.getResponse())) {
                        JSONObject jSONObject = new JSONObject(httpRequest3.getResponse());
                        AESUtils aESUtils = new AESUtils(Base64Utils.getInstance());
                        String optString = jSONObject.optString("challenge");
                        if (StringUtils.b((CharSequence) optString)) {
                            String a2 = CallAppRemoteConfigManager.get().a(optString);
                            if (StringUtils.b((CharSequence) a2)) {
                                try {
                                    String optString2 = jSONObject.optString("code");
                                    String b2 = aESUtils.b(optString2, Phone.this.a() + a2);
                                    Base64Utils.getInstance();
                                    String a3 = Base64.a((optString + "#@#" + aESUtils.a(b2, a2)).getBytes());
                                    SmsCodeEvents smsCodeEvents2 = smsCodeEvents;
                                    if (smsCodeEvents2 != null) {
                                        smsCodeEvents2.a(b2, a3);
                                    }
                                    AnalyticsManager.get().a(Constants.REGISTRATION, "Requesting SMS code from server success");
                                    return;
                                } catch (Exception e) {
                                    AnalyticsManager.get().a(Constants.REGISTRATION, "Requesting SMS code from server success but failed decrypt");
                                    CLog.b(PhoneVerifierManager.class, e);
                                }
                            } else {
                                AnalyticsManager.get().a(Constants.REGISTRATION, "Requesting SMS code from server success but failed with empty hashkey");
                            }
                        } else {
                            AnalyticsManager.get().a(Constants.REGISTRATION, "Requesting SMS code from server success but failed with empty challengeKey");
                        }
                    } else {
                        AnalyticsManager.get().a(Constants.REGISTRATION, "Requesting SMS code from server success but failed with empty response");
                    }
                } catch (JSONException e2) {
                    CLog.a(PhoneVerifierManager.class, e2);
                    AnalyticsManager.get().a(Constants.REGISTRATION, "Requesting SMS code from server success but failed with error", e2.toString());
                }
                SmsCodeEvents smsCodeEvents3 = smsCodeEvents;
                if (smsCodeEvents3 != null) {
                    smsCodeEvents3.a();
                }
            }
        };
        httpRequest.f16218b = new Listener<HttpRequest>() { // from class: com.callapp.contacts.util.SmsCodeUtils.2
            @Override // com.callapp.contacts.event.listener.Listener
            public final /* synthetic */ void a(HttpRequest httpRequest2) {
                HttpRequest httpRequest3 = httpRequest2;
                CLog.a(PhoneVerifierManager.class, "Failed with status code: " + httpRequest3.getResponseStatusCode());
                SmsCodeEvents smsCodeEvents2 = SmsCodeEvents.this;
                if (smsCodeEvents2 != null) {
                    smsCodeEvents2.a();
                }
                AnalyticsManager.get().a(Constants.REGISTRATION, "Requesting SMS code from server failed", String.valueOf(httpRequest3.getResponseStatusCode()));
            }
        };
        httpRequest.a();
    }
}
