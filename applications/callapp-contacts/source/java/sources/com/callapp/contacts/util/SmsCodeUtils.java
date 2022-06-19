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
        /* renamed from: a */
        void mo27398a();

        /* renamed from: a */
        void mo27397a(String str, String str2);
    }

    /* renamed from: a */
    public static void m27400a(final Phone phone, final SmsCodeEvents smsCodeEvents) {
        AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Requesting SMS code from server");
        HttpRequest httpRequest = new HttpRequest(HttpUtils.getCallappServerPrefix() + "scg");
        httpRequest.m27002a("myp", phone.m26101a());
        httpRequest.m27002a("cvc", String.valueOf(CallAppApplication.get().getVersionCode()));
        httpRequest.m27002a("ispro", "1");
        httpRequest.m27002a("cv", Activities.getClientVersion());
        httpRequest.f28271a = new Listener<HttpRequest>() { // from class: com.callapp.contacts.util.SmsCodeUtils.1
            @Override // com.callapp.contacts.event.listener.Listener
            /* renamed from: a */
            public final /* synthetic */ void mo27399a(HttpRequest httpRequest2) {
                HttpRequest httpRequest3 = httpRequest2;
                try {
                    if (StringUtils.m26045b((CharSequence) httpRequest3.getResponse())) {
                        JSONObject jSONObject = new JSONObject(httpRequest3.getResponse());
                        AESUtils aESUtils = new AESUtils(Base64Utils.getInstance());
                        String optString = jSONObject.optString("challenge");
                        if (StringUtils.m26045b((CharSequence) optString)) {
                            String m28703a = CallAppRemoteConfigManager.get().m28703a(optString);
                            if (StringUtils.m26045b((CharSequence) m28703a)) {
                                try {
                                    String optString2 = jSONObject.optString("code");
                                    String m31924b = aESUtils.m31924b(optString2, phone.m26101a() + m28703a);
                                    Base64Utils.getInstance();
                                    String m26005a = Base64.m26005a((optString + "#@#" + aESUtils.m31927a(m31924b, m28703a)).getBytes());
                                    SmsCodeEvents smsCodeEvents2 = smsCodeEvents;
                                    if (smsCodeEvents2 != null) {
                                        smsCodeEvents2.mo27397a(m31924b, m26005a);
                                    }
                                    AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Requesting SMS code from server success");
                                    return;
                                } catch (Exception e) {
                                    AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Requesting SMS code from server success but failed decrypt");
                                    CLog.m27596b(PhoneVerifierManager.class, e);
                                }
                            } else {
                                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Requesting SMS code from server success but failed with empty hashkey");
                            }
                        } else {
                            AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Requesting SMS code from server success but failed with empty challengeKey");
                        }
                    } else {
                        AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Requesting SMS code from server success but failed with empty response");
                    }
                } catch (JSONException e2) {
                    CLog.m27609a(PhoneVerifierManager.class, e2);
                    AnalyticsManager.get().m28449a(Constants.REGISTRATION, "Requesting SMS code from server success but failed with error", e2.toString());
                }
                SmsCodeEvents smsCodeEvents3 = smsCodeEvents;
                if (smsCodeEvents3 != null) {
                    smsCodeEvents3.mo27398a();
                }
            }
        };
        httpRequest.f28272b = new Listener<HttpRequest>() { // from class: com.callapp.contacts.util.SmsCodeUtils.2
            @Override // com.callapp.contacts.event.listener.Listener
            /* renamed from: a */
            public final /* synthetic */ void mo27399a(HttpRequest httpRequest2) {
                HttpRequest httpRequest3 = httpRequest2;
                CLog.m27611a(PhoneVerifierManager.class, "Failed with status code: " + httpRequest3.getResponseStatusCode());
                SmsCodeEvents smsCodeEvents2 = smsCodeEvents;
                if (smsCodeEvents2 != null) {
                    smsCodeEvents2.mo27398a();
                }
                AnalyticsManager.get().m28449a(Constants.REGISTRATION, "Requesting SMS code from server failed", String.valueOf(httpRequest3.getResponseStatusCode()));
            }
        };
        httpRequest.m27005a();
    }
}
