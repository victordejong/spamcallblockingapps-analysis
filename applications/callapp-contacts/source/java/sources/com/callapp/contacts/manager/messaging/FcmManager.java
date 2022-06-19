package com.callapp.contacts.manager.messaging;

import com.callapp.common.model.message.CallAppClient;
import com.callapp.common.model.message.ClientData;
import com.callapp.common.model.message.Response;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AbTestUtils;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.GooglePlayUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.tasks.AbstractC14183f;
import com.google.firebase.C15601b;
import com.google.firebase.messaging.FirebaseMessaging;
import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/messaging/FcmManager.class */
public class FcmManager implements ManagedLifecycle {

    /* renamed from: a */
    private final Random f26038a = new Random();

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* renamed from: a */
    public boolean m28263a(String str) {
        Response response;
        CLog.m27610a(FcmManager.class, "registerOnServer(%s)", str);
        if (!HttpUtils.m26985a()) {
            CLog.m27611a(FcmManager.class, "Not registering because of no internet");
            return false;
        }
        ClientData group = new ClientData().setClient(CallAppClient.ANDROID).setRegistrationId(str).setPhoneNumber(Prefs.f26241aR.get()).setToken(Prefs.f26245aV.get()).setGroup(Integer.valueOf(AbTestUtils.getGroupDimension()));
        if (group == null) {
            return false;
        }
        char nextInt = this.f26038a.nextInt(1000) + 2000;
        for (int i = 1; i <= 5; i++) {
            CLog.m27610a(FcmManager.class, "Attempt %s/%s to register", Integer.valueOf(i), 5);
            FeedbackManager.get().m28670a(String.format("Attempt %s/%s to register", Integer.valueOf(i), 5), 80);
            HttpUtils.getCallAppServerHost();
            if (HttpUtils.m26972b()) {
                Response m26977a = HttpUtils.m26977a(HttpUtils.getCallappServerPrefix() + "ws/msg/register", group);
                response = m26977a;
                if (m26977a.isOk()) {
                    CLog.m27610a(FcmManager.class, "Registered to server with id %s", str);
                    FeedbackManager.get().m28670a(String.format("Registered to server with id %s", str), 80);
                    return true;
                }
            } else {
                response = Response.error("App server not reachable");
            }
            CLog.m27610a(FcmManager.class, "Failed to register on attempt %s/%s: %s", Integer.valueOf(i), 5, response);
            if (i == 5) {
                break;
            }
            try {
                CLog.m27610a(FcmManager.class, "Sleeping for %s ms before retry", Long.valueOf(nextInt));
                Thread.sleep(nextInt);
                nextInt *= 2;
            } catch (InterruptedException e) {
                CLog.m27608a(FcmManager.class, e, "Thread interrupted: abort remaining retries!");
                Thread.currentThread().interrupt();
                return false;
            }
        }
        FeedbackManager.get().m28670a(String.format("Failed to register after %s attempts", 5), 80);
        CLog.m27610a(FcmManager.class, "Failed to register after %s attempts", 5);
        return false;
    }

    public static FcmManager get() {
        return Singletons.get().getFcmManager();
    }

    /* renamed from: a */
    public final void m28265a() {
        CLog.m27611a(FcmManager.class, "registerDevice()");
        if (!Prefs.f26246aW.get().booleanValue()) {
            return;
        }
        if (!GooglePlayUtils.isGooglePlayServicesAvailable()) {
            CLog.m27611a(FcmManager.class, "GooglePlayServices is not available");
            return;
        }
        C15601b.m8582a(CallAppApplication.get());
        FirebaseMessaging.m8265a().m8258b().mo11487a(new AbstractC14183f<String>() { // from class: com.callapp.contacts.manager.messaging.FcmManager.1
            @Override // com.google.android.gms.tasks.AbstractC14183f
            public /* synthetic */ void onSuccess(String str) {
                final String str2 = str;
                new Task() { // from class: com.callapp.contacts.manager.messaging.FcmManager.1.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        if (StringUtils.m26059a((CharSequence) str2)) {
                            CLog.m27611a(FcmManager.class, "No registrationId");
                            return;
                        }
                        CLog.m27611a(FcmManager.class, "FCM token: " + str2);
                        if (Prefs.f26259aj.get().longValue() + 86400000 > System.currentTimeMillis()) {
                            CLog.m27611a(FcmManager.class, "Already registered");
                        } else if (!FcmManager.this.m28263a(str2)) {
                        } else {
                            Prefs.f26259aj.set(Long.valueOf(System.currentTimeMillis()));
                        }
                    }
                }.execute();
            }
        });
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
