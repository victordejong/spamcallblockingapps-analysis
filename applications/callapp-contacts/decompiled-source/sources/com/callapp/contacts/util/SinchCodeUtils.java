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
        void a(Phone phone, String str);

        void b();
    }

    public static void a(final Phone phone, final SinchCodeEvents sinchCodeEvents) {
        AnalyticsManager.get().a(Constants.REGISTRATION, "Requesting Sinch code from server");
        HttpRequest httpRequest = new HttpRequest(HttpUtils.getCallappServerPrefix() + "sucg");
        httpRequest.a("myp", phone.a());
        httpRequest.a("cvc", String.valueOf(CallAppApplication.get().getVersionCode()));
        httpRequest.a("ispro", "1");
        httpRequest.a("cv", Activities.getClientVersion());
        httpRequest.f16217a = new Listener<HttpRequest>() { // from class: com.callapp.contacts.util.SinchCodeUtils.1
            @Override // com.callapp.contacts.event.listener.Listener
            public final /* synthetic */ void a(HttpRequest httpRequest2) {
                HttpRequest httpRequest3 = httpRequest2;
                try {
                    if (StringUtils.b((CharSequence) httpRequest3.getResponse())) {
                        JSONObject jSONObject = new JSONObject(httpRequest3.getResponse());
                        try {
                            AESUtils aESUtils = new AESUtils(Base64Utils.getInstance());
                            String optString = jSONObject.optString("challenge");
                            String a2 = CallAppRemoteConfigManager.get().a(optString);
                            String b2 = aESUtils.b(jSONObject.optString("code"), a2);
                            String b3 = aESUtils.b(b2, a2 + Phone.this.a());
                            Base64Utils.getInstance();
                            String a3 = Base64.a((aESUtils.a(aESUtils.a(b3, a2), a2) + "#@#" + optString).getBytes());
                            SinchCodeEvents sinchCodeEvents2 = sinchCodeEvents;
                            if (sinchCodeEvents2 != null) {
                                sinchCodeEvents2.a(Phone.this, a3);
                            }
                            AnalyticsManager.get().a(Constants.REGISTRATION, "Requesting Sinch code from server success");
                            return;
                        } catch (Exception e) {
                            CLog.b(RegistrationRequest.class, e);
                        }
                    }
                } catch (JSONException e2) {
                    CLog.a(PhoneVerifierManager.class, e2);
                }
                SinchCodeEvents sinchCodeEvents3 = sinchCodeEvents;
                if (sinchCodeEvents3 != null) {
                    sinchCodeEvents3.b();
                }
            }
        };
        httpRequest.f16218b = new Listener<HttpRequest>() { // from class: com.callapp.contacts.util.SinchCodeUtils.2
            @Override // com.callapp.contacts.event.listener.Listener
            public final /* synthetic */ void a(HttpRequest httpRequest2) {
                HttpRequest httpRequest3 = httpRequest2;
                CLog.a(PhoneVerifierManager.class, "Failed with status code: " + httpRequest3.getResponseStatusCode());
                SinchCodeEvents sinchCodeEvents2 = SinchCodeEvents.this;
                if (sinchCodeEvents2 != null) {
                    sinchCodeEvents2.b();
                }
                AnalyticsManager.get().a(Constants.REGISTRATION, "Requesting Sinch code from server failed", String.valueOf(httpRequest3.getResponseStatusCode()));
            }
        };
        httpRequest.a();
    }
}
