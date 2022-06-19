package com.truecaller.service;

import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Intent;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.truecaller.TrueApp;
import p193e.p194a.p1113o4.AbstractC18931l;
import p193e.p194a.p437c.p578p.C10480a;
/* loaded from: classes13-dex2jar.jar:com/truecaller/service/PushNotificationLoggingService.class */
public class PushNotificationLoggingService extends IntentService {

    /* renamed from: a */
    public static final /* synthetic */ int f14767a = 0;

    public PushNotificationLoggingService() {
        super("PushNotificationLoggingService");
    }

    @Override // android.app.IntentService
    public void onHandleIntent(Intent intent) {
        PendingIntent pendingIntent;
        if (intent == null || intent.getAction() == null) {
            return;
        }
        AbstractC18931l mo12268o0 = TrueApp.m36032b0().mo10154s().mo12268o0();
        String action = intent.getAction();
        action.hashCode();
        if (action.equals("com.truecaller.ACTION_NOTIFICATION_DISMISSED")) {
            mo12268o0.mo14313a();
        } else if (!action.equals("com.truecaller.ACTION_NOTIFICATION_OPENED")) {
        } else {
            mo12268o0.mo14312b();
            mo12268o0.mo14313a();
            if (!intent.hasExtra(BaseGmsClient.KEY_PENDING_INTENT) || (pendingIntent = (PendingIntent) intent.getParcelableExtra(BaseGmsClient.KEY_PENDING_INTENT)) == null) {
                return;
            }
            try {
                pendingIntent.send();
            } catch (PendingIntent.CanceledException e) {
                C10480a.m26061I1(e);
            }
        }
    }
}
