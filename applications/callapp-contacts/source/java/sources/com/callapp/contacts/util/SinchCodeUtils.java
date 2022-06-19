package com.callapp.contacts.util;

import com.callapp.common.util.AESUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.setup.RegistrationRequest;
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
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/SinchCodeUtils.class */
public class SinchCodeUtils {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/SinchCodeUtils$SinchCodeEvents.class */
    public interface SinchCodeEvents {
        /* renamed from: a */
        void mo27402a(Phone phone, String str);

        /* renamed from: b */
        void mo27401b();
    }

    /* renamed from: a */
    public static void m27403a(final Phone phone, final SinchCodeEvents sinchCodeEvents) {
        AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Requesting Sinch code from server");
        HttpRequest httpRequest = new HttpRequest(HttpUtils.getCallappServerPrefix() + "sucg");
        httpRequest.m27002a("myp", phone.m26101a());
        httpRequest.m27002a("cvc", String.valueOf(CallAppApplication.get().getVersionCode()));
        httpRequest.m27002a("ispro", "1");
        httpRequest.m27002a("cv", Activities.getClientVersion());
        httpRequest.f28271a = new Listener<HttpRequest>() { // from class: com.callapp.contacts.util.SinchCodeUtils.1
            @Override // com.callapp.contacts.event.listener.Listener
            /* renamed from: a */
            public final /* synthetic */ void mo27399a(HttpRequest httpRequest2) {
                HttpRequest httpRequest3 = httpRequest2;
                try {
                    if (StringUtils.m26045b((CharSequence) httpRequest3.getResponse())) {
                        JSONObject jSONObject = new JSONObject(httpRequest3.getResponse());
                        try {
                            AESUtils aESUtils = new AESUtils(Base64Utils.getInstance());
                            String optString = jSONObject.optString("challenge");
                            String m28703a = CallAppRemoteConfigManager.get().m28703a(optString);
                            String m31924b = aESUtils.m31924b(jSONObject.optString("code"), m28703a);
                            String m31924b2 = aESUtils.m31924b(m31924b, m28703a + phone.m26101a());
                            Base64Utils.getInstance();
                            String m26005a = Base64.m26005a((aESUtils.m31927a(aESUtils.m31927a(m31924b2, m28703a), m28703a) + "#@#" + optString).getBytes());
                            SinchCodeEvents sinchCodeEvents2 = sinchCodeEvents;
                            if (sinchCodeEvents2 != null) {
                                sinchCodeEvents2.mo27402a(phone, m26005a);
                            }
                            AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Requesting Sinch code from server success");
                            return;
                        } catch (Exception e) {
                            CLog.m27596b(RegistrationRequest.class, e);
                        }
                    }
                } catch (JSONException e2) {
                    CLog.m27609a(PhoneVerifierManager.class, e2);
                }
                SinchCodeEvents sinchCodeEvents3 = sinchCodeEvents;
                if (sinchCodeEvents3 != null) {
                    sinchCodeEvents3.mo27401b();
                }
            }
        };
        httpRequest.f28272b = new Listener<HttpRequest>() { // from class: com.callapp.contacts.util.SinchCodeUtils.2
            @Override // com.callapp.contacts.event.listener.Listener
            /* renamed from: a */
            public final /* synthetic */ void mo27399a(HttpRequest httpRequest2) {
                HttpRequest httpRequest3 = httpRequest2;
                CLog.m27611a(PhoneVerifierManager.class, "Failed with status code: " + httpRequest3.getResponseStatusCode());
                SinchCodeEvents sinchCodeEvents2 = sinchCodeEvents;
                if (sinchCodeEvents2 != null) {
                    sinchCodeEvents2.mo27401b();
                }
                AnalyticsManager.get().m28449a(Constants.REGISTRATION, "Requesting Sinch code from server failed", String.valueOf(httpRequest3.getResponseStatusCode()));
            }
        };
        httpRequest.m27005a();
    }
}
