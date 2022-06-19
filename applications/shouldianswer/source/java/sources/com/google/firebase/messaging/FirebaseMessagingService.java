package com.google.firebase.messaging;

import android.app.PendingIntent;
import android.content.Intent;
import android.util.Log;
import com.google.firebase.iid.zzaq;
import java.util.ArrayDeque;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/FirebaseMessagingService.class */
public class FirebaseMessagingService extends zzc {
    private static final Queue<String> zza = new ArrayDeque(10);

    public void onDeletedMessages() {
    }

    public void onMessageReceived(RemoteMessage remoteMessage) {
    }

    public void onMessageSent(String str) {
    }

    public void onNewToken(String str) {
    }

    public void onSendError(String str, Exception exc) {
    }

    @Override // com.google.firebase.messaging.zzc
    protected final Intent zza(Intent intent) {
        return zzaq.zza().zzb();
    }

    @Override // com.google.firebase.messaging.zzc
    public final boolean zzb(Intent intent) {
        if ("com.google.firebase.messaging.NOTIFICATION_OPEN".equals(intent.getAction())) {
            PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("pending_intent");
            if (pendingIntent != null) {
                try {
                    pendingIntent.send();
                } catch (PendingIntent.CanceledException e) {
                    Log.e("FirebaseMessaging", "Notification pending intent canceled");
                }
            }
            if (!MessagingAnalytics.shouldUploadMetrics(intent)) {
                return true;
            }
            MessagingAnalytics.logNotificationOpen(intent);
            return true;
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:45:0x011b  */
    @Override // com.google.firebase.messaging.zzc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzc(android.content.Intent r8) {
        /*
            Method dump skipped, instructions count: 751
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.FirebaseMessagingService.zzc(android.content.Intent):void");
    }
}
