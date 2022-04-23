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
import com.google.android.gms.tasks.f;
import com.google.firebase.b;
import com.google.firebase.messaging.FirebaseMessaging;
import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/messaging/FcmManager.class */
public class FcmManager implements ManagedLifecycle {

    /* renamed from: a  reason: collision with root package name */
    private final Random f15095a = new Random();

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        Response response;
        CLog.a(FcmManager.class, "registerOnServer(%s)", str);
        if (!HttpUtils.a()) {
            CLog.a(FcmManager.class, "Not registering because of no internet");
            return false;
        }
        ClientData group = new ClientData().setClient(CallAppClient.ANDROID).setRegistrationId(str).setPhoneNumber(Prefs.aR.get()).setToken(Prefs.aV.get()).setGroup(Integer.valueOf(AbTestUtils.getGroupDimension()));
        if (group == null) {
            return false;
        }
        long nextInt = this.f15095a.nextInt(1000) + 2000;
        for (int i = 1; i <= 5; i++) {
            CLog.a(FcmManager.class, "Attempt %s/%s to register", Integer.valueOf(i), 5);
            FeedbackManager.get().a(String.format("Attempt %s/%s to register", Integer.valueOf(i), 5), 80);
            HttpUtils.getCallAppServerHost();
            if (HttpUtils.b()) {
                Response a2 = HttpUtils.a(HttpUtils.getCallappServerPrefix() + "ws/msg/register", group);
                response = a2;
                if (a2.isOk()) {
                    CLog.a(FcmManager.class, "Registered to server with id %s", str);
                    FeedbackManager.get().a(String.format("Registered to server with id %s", str), 80);
                    return true;
                }
            } else {
                response = Response.error("App server not reachable");
            }
            CLog.a(FcmManager.class, "Failed to register on attempt %s/%s: %s", Integer.valueOf(i), 5, response);
            if (i == 5) {
                break;
            }
            try {
                CLog.a(FcmManager.class, "Sleeping for %s ms before retry", Long.valueOf(nextInt));
                Thread.sleep(nextInt);
                nextInt *= 2;
            } catch (InterruptedException e) {
                CLog.a(FcmManager.class, e, "Thread interrupted: abort remaining retries!");
                Thread.currentThread().interrupt();
                return false;
            }
        }
        FeedbackManager.get().a(String.format("Failed to register after %s attempts", 5), 80);
        CLog.a(FcmManager.class, "Failed to register after %s attempts", 5);
        return false;
    }

    public static FcmManager get() {
        return Singletons.get().getFcmManager();
    }

    public final void a() {
        CLog.a(FcmManager.class, "registerDevice()");
        if (Prefs.aW.get().booleanValue()) {
            if (!GooglePlayUtils.isGooglePlayServicesAvailable()) {
                CLog.a(FcmManager.class, "GooglePlayServices is not available");
                return;
            }
            b.a(CallAppApplication.get());
            FirebaseMessaging.a().b().a(new f<String>() { // from class: com.callapp.contacts.manager.messaging.FcmManager.1
                @Override // com.google.android.gms.tasks.f
                public /* synthetic */ void onSuccess(String str) {
                    final String str2 = str;
                    new Task() { // from class: com.callapp.contacts.manager.messaging.FcmManager.1.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            if (StringUtils.a((CharSequence) str2)) {
                                CLog.a(FcmManager.class, "No registrationId");
                                return;
                            }
                            CLog.a(FcmManager.class, "FCM token: " + str2);
                            if (Prefs.aj.get().longValue() + 86400000 > System.currentTimeMillis()) {
                                CLog.a(FcmManager.class, "Already registered");
                            } else if (FcmManager.this.a(str2)) {
                                Prefs.aj.set(Long.valueOf(System.currentTimeMillis()));
                            }
                        }
                    }.execute();
                }
            });
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
