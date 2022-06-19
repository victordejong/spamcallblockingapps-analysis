package com.callapp.contacts.activity.setup;

import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.common.model.json.JSONRegistrationResponse;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.event.listener.Listener;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.http.HttpRequest;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.contacts.util.servermessage.RegisterClientUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/RegistrationRequest.class */
public class RegistrationRequest {

    /* renamed from: a */
    public Runnable f24418a;

    /* renamed from: b */
    private String f24419b;

    /* renamed from: c */
    private AuthenticatorsConfiguration.AUTHENTICATORS_TYPES f24420c;

    /* renamed from: d */
    private int f24421d = 0;

    /* renamed from: e */
    private final RegistrationEvents f24422e;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents.class */
    public interface RegistrationEvents {
        /* renamed from: a */
        void mo27737a();

        /* renamed from: a */
        void mo27736a(HttpRequest httpRequest);

        /* renamed from: b */
        void mo27735b();

        /* renamed from: c */
        void mo27734c();
    }

    public RegistrationRequest(String str, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES authenticators_types, RegistrationEvents registrationEvents) {
        this.f24419b = str;
        this.f24420c = authenticators_types;
        this.f24422e = registrationEvents;
    }

    /* renamed from: b */
    public static String m29527b(HttpRequest httpRequest) {
        try {
            String m26908a = RegisterClientUtils.m26908a(httpRequest.getResponse());
            if (!StringUtils.m26045b((CharSequence) m26908a)) {
                return null;
            }
            JSONRegistrationResponse jSONRegistrationResponse = (JSONRegistrationResponse) Parser.m26915a(m26908a, JSONRegistrationResponse.class);
            if (jSONRegistrationResponse == null) {
                return "Empty code";
            }
            Prefs.f26245aV.set(jSONRegistrationResponse.getToken());
            String userId = jSONRegistrationResponse.getUserId();
            Prefs.f26241aR.set(userId);
            AnalyticsManager.get().mo28428b();
            if (!userId.startsWith("+")) {
                return null;
            }
            Prefs.f26243aT.set(Boolean.TRUE);
            return null;
        } catch (Exception e) {
            CLog.m27596b(RegistrationRequest.class, e);
            return null;
        }
    }

    /* renamed from: e */
    static /* synthetic */ int m29524e(RegistrationRequest registrationRequest) {
        int i = registrationRequest.f24421d;
        registrationRequest.f24421d = i + 1;
        return i;
    }

    /* renamed from: a */
    public final Runnable m29530a(final boolean z) {
        return new Runnable() { // from class: com.callapp.contacts.activity.setup.RegistrationRequest.2

            /* renamed from: a */
            HttpRequest f24424a;

            /* renamed from: a */
            public void m29522a() {
                String str = z ? "ustpnv" : "uv";
                HttpRequest httpRequest = new HttpRequest(HttpUtils.getCallappServerPrefix() + str);
                this.f24424a = httpRequest;
                httpRequest.m27002a("myp", Prefs.f26241aR.get());
                this.f24424a.m27002a("cvc", String.valueOf(CallAppApplication.get().getVersionCode()));
                String str2 = "1";
                this.f24424a.m27002a("ispro", "1");
                this.f24424a.m27002a("cv", Activities.getClientVersion());
                if (z) {
                    this.f24424a.m27002a("tk", Prefs.f26245aV.get());
                }
                if (StringUtils.m26045b((CharSequence) RegistrationRequest.this.f24419b)) {
                    this.f24424a.m27002a("et", RegistrationRequest.this.f24419b);
                    this.f24424a.m27002a("asi", RegistrationRequest.this.f24420c.numRep);
                }
                String encodedDeviceId = Activities.getEncodedDeviceId();
                if (StringUtils.m26045b((CharSequence) encodedDeviceId) && !"COULDNOTENCODE".equals(encodedDeviceId)) {
                    this.f24424a.m27002a("di", encodedDeviceId);
                }
                String str3 = Prefs.f26264ao.get();
                if (StringUtils.m26045b((CharSequence) str3)) {
                    this.f24424a.m27002a("epn", str3);
                    if (Prefs.f26229aF.isNotNull()) {
                        this.f24424a.m27002a("ipv", "1");
                    } else {
                        if (!Prefs.f26242aS.get().booleanValue()) {
                            str2 = "0";
                        }
                        this.f24424a.m27002a("ipr", str2);
                    }
                }
                this.f24424a.m27002a("tosavn", CallAppApplication.get().getVersion());
                if (RegistrationRequest.this.f24422e != null) {
                    RegistrationRequest.this.f24422e.mo27736a(this.f24424a);
                }
                m29520b();
                m29519c();
                RegistrationRequest.m29524e(RegistrationRequest.this);
                this.f24424a.m27005a();
            }

            /* renamed from: b */
            private void m29520b() {
                this.f24424a.f28271a = new Listener<HttpRequest>() { // from class: com.callapp.contacts.activity.setup.RegistrationRequest.2.1
                    @Override // com.callapp.contacts.event.listener.Listener
                    /* renamed from: a */
                    public final /* synthetic */ void mo27399a(HttpRequest httpRequest) {
                        HttpRequest httpRequest2 = httpRequest;
                        if (!httpRequest2.isValidCallAppResponse()) {
                            httpRequest2.m27001b();
                        } else if (RegistrationRequest.m29527b(httpRequest2) == null) {
                            if (RegistrationRequest.this.f24422e == null) {
                                return;
                            }
                            RegistrationRequest.this.f24422e.mo27737a();
                        } else if (RegistrationRequest.this.f24422e == null) {
                        } else {
                            RegistrationRequest.this.f24422e.mo27735b();
                        }
                    }
                };
            }

            /* renamed from: c */
            private void m29519c() {
                this.f24424a.f28272b = new Listener<HttpRequest>() { // from class: com.callapp.contacts.activity.setup.RegistrationRequest.2.2
                    @Override // com.callapp.contacts.event.listener.Listener
                    /* renamed from: a */
                    public final /* synthetic */ void mo27399a(HttpRequest httpRequest) {
                        int responseStatusCode = httpRequest.getResponseStatusCode();
                        if (responseStatusCode >= 518 && responseStatusCode <= 523) {
                            if (RegistrationRequest.this.f24422e == null) {
                                return;
                            }
                            RegistrationRequest.this.f24422e.mo27734c();
                        } else if (RegistrationRequest.this.f24421d < 3) {
                            m29522a();
                        } else if (RegistrationRequest.this.f24422e == null) {
                        } else {
                            RegistrationRequest.this.f24422e.mo27735b();
                        }
                    }
                };
            }

            @Override // java.lang.Runnable
            public void run() {
                m29522a();
            }
        };
    }

    /* renamed from: a */
    public final void m29533a() {
        AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Sending registration request");
        this.f24418a = m29530a(false);
        m29529b();
    }

    /* renamed from: b */
    public final void m29529b() {
        new Task() { // from class: com.callapp.contacts.activity.setup.RegistrationRequest.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                RegistrationRequest.this.f24418a.run();
            }
        }.execute();
    }
}
