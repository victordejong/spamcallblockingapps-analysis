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

    /* renamed from: a  reason: collision with root package name */
    public Runnable f13864a;

    /* renamed from: b  reason: collision with root package name */
    private String f13865b;

    /* renamed from: c  reason: collision with root package name */
    private AuthenticatorsConfiguration.AUTHENTICATORS_TYPES f13866c;

    /* renamed from: d  reason: collision with root package name */
    private int f13867d = 0;
    private final RegistrationEvents e;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents.class */
    public interface RegistrationEvents {
        void a();

        void a(HttpRequest httpRequest);

        void b();

        void c();
    }

    public RegistrationRequest(String str, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES authenticators_types, RegistrationEvents registrationEvents) {
        this.f13865b = str;
        this.f13866c = authenticators_types;
        this.e = registrationEvents;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(HttpRequest httpRequest) {
        try {
            String a2 = RegisterClientUtils.a(httpRequest.getResponse());
            if (!StringUtils.b((CharSequence) a2)) {
                return null;
            }
            JSONRegistrationResponse jSONRegistrationResponse = (JSONRegistrationResponse) Parser.a(a2, JSONRegistrationResponse.class);
            if (jSONRegistrationResponse == null) {
                return "Empty code";
            }
            Prefs.aV.set(jSONRegistrationResponse.getToken());
            String userId = jSONRegistrationResponse.getUserId();
            Prefs.aR.set(userId);
            AnalyticsManager.get().b();
            if (!userId.startsWith("+")) {
                return null;
            }
            Prefs.aT.set(Boolean.TRUE);
            return null;
        } catch (Exception e) {
            CLog.b(RegistrationRequest.class, e);
            return null;
        }
    }

    static /* synthetic */ int e(RegistrationRequest registrationRequest) {
        int i = registrationRequest.f13867d;
        registrationRequest.f13867d = i + 1;
        return i;
    }

    public final Runnable a(final boolean z) {
        return new Runnable() { // from class: com.callapp.contacts.activity.setup.RegistrationRequest.2

            /* renamed from: a  reason: collision with root package name */
            HttpRequest f13869a;

            /* JADX INFO: Access modifiers changed from: private */
            public void a() {
                String str = z ? "ustpnv" : "uv";
                HttpRequest httpRequest = new HttpRequest(HttpUtils.getCallappServerPrefix() + str);
                this.f13869a = httpRequest;
                httpRequest.a("myp", Prefs.aR.get());
                this.f13869a.a("cvc", String.valueOf(CallAppApplication.get().getVersionCode()));
                String str2 = "1";
                this.f13869a.a("ispro", "1");
                this.f13869a.a("cv", Activities.getClientVersion());
                if (z) {
                    this.f13869a.a("tk", Prefs.aV.get());
                }
                if (StringUtils.b((CharSequence) RegistrationRequest.this.f13865b)) {
                    this.f13869a.a("et", RegistrationRequest.this.f13865b);
                    this.f13869a.a("asi", RegistrationRequest.this.f13866c.numRep);
                }
                String encodedDeviceId = Activities.getEncodedDeviceId();
                if (StringUtils.b((CharSequence) encodedDeviceId) && !"COULDNOTENCODE".equals(encodedDeviceId)) {
                    this.f13869a.a("di", encodedDeviceId);
                }
                String str3 = Prefs.ao.get();
                if (StringUtils.b((CharSequence) str3)) {
                    this.f13869a.a("epn", str3);
                    if (Prefs.aF.isNotNull()) {
                        this.f13869a.a("ipv", "1");
                    } else {
                        if (!Prefs.aS.get().booleanValue()) {
                            str2 = "0";
                        }
                        this.f13869a.a("ipr", str2);
                    }
                }
                this.f13869a.a("tosavn", CallAppApplication.get().getVersion());
                if (RegistrationRequest.this.e != null) {
                    RegistrationRequest.this.e.a(this.f13869a);
                }
                b();
                c();
                RegistrationRequest.e(RegistrationRequest.this);
                this.f13869a.a();
            }

            private void b() {
                this.f13869a.f16217a = new Listener<HttpRequest>() { // from class: com.callapp.contacts.activity.setup.RegistrationRequest.2.1
                    @Override // com.callapp.contacts.event.listener.Listener
                    public final /* synthetic */ void a(HttpRequest httpRequest) {
                        HttpRequest httpRequest2 = httpRequest;
                        if (!httpRequest2.isValidCallAppResponse()) {
                            httpRequest2.b();
                        } else if (RegistrationRequest.b(httpRequest2) == null) {
                            if (RegistrationRequest.this.e != null) {
                                RegistrationRequest.this.e.a();
                            }
                        } else if (RegistrationRequest.this.e != null) {
                            RegistrationRequest.this.e.b();
                        }
                    }
                };
            }

            private void c() {
                this.f13869a.f16218b = new Listener<HttpRequest>() { // from class: com.callapp.contacts.activity.setup.RegistrationRequest.2.2
                    @Override // com.callapp.contacts.event.listener.Listener
                    public final /* synthetic */ void a(HttpRequest httpRequest) {
                        int responseStatusCode = httpRequest.getResponseStatusCode();
                        if (responseStatusCode < 518 || responseStatusCode > 523) {
                            if (RegistrationRequest.this.f13867d < 3) {
                                a();
                            } else if (RegistrationRequest.this.e != null) {
                                RegistrationRequest.this.e.b();
                            }
                        } else if (RegistrationRequest.this.e != null) {
                            RegistrationRequest.this.e.c();
                        }
                    }
                };
            }

            @Override // java.lang.Runnable
            public void run() {
                a();
            }
        };
    }

    public final void a() {
        AnalyticsManager.get().a(Constants.REGISTRATION, "Sending registration request");
        this.f13864a = a(false);
        b();
    }

    public final void b() {
        new Task() { // from class: com.callapp.contacts.activity.setup.RegistrationRequest.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                RegistrationRequest.this.f13864a.run();
            }
        }.execute();
    }
}
