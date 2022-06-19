package com.google.firebase.messaging;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.iid.FirebaseInstanceId;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/FirebaseMessaging.class */
public class FirebaseMessaging {
    public static final String INSTANCE_ID_SCOPE = "FCM";
    private static final Pattern zza = Pattern.compile("[a-zA-Z0-9-_.~%]{1,900}");
    private static FirebaseMessaging zzb;
    private final FirebaseInstanceId zzc;

    private FirebaseMessaging(FirebaseInstanceId firebaseInstanceId) {
        this.zzc = firebaseInstanceId;
    }

    public static FirebaseMessaging getInstance() {
        FirebaseMessaging firebaseMessaging;
        synchronized (FirebaseMessaging.class) {
            try {
                if (zzb == null) {
                    zzb = new FirebaseMessaging(FirebaseInstanceId.getInstance());
                }
                firebaseMessaging = zzb;
            } catch (Throwable th) {
                throw th;
            }
        }
        return firebaseMessaging;
    }

    public boolean isAutoInitEnabled() {
        return this.zzc.zzh();
    }

    public void send(RemoteMessage remoteMessage) {
        if (!TextUtils.isEmpty(remoteMessage.getTo())) {
            Context applicationContext = FirebaseApp.getInstance().getApplicationContext();
            Intent intent = new Intent("com.google.android.gcm.intent.SEND");
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            intent.putExtra("app", PendingIntent.getBroadcast(applicationContext, 0, intent2, 0));
            intent.setPackage("com.google.android.gms");
            intent.putExtras(remoteMessage.zza);
            applicationContext.sendOrderedBroadcast(intent, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
            return;
        }
        throw new IllegalArgumentException("Missing 'to'");
    }

    public void setAutoInitEnabled(boolean z) {
        this.zzc.zzb(z);
    }

    public Task<Void> subscribeToTopic(String str) {
        String str2 = str;
        if (str != null) {
            str2 = str;
            if (str.startsWith("/topics/")) {
                Log.w("FirebaseMessaging", "Format /topics/topic-name is deprecated. Only 'topic-name' should be used in subscribeToTopic.");
                str2 = str.substring(8);
            }
        }
        if (str2 != null && zza.matcher(str2).matches()) {
            FirebaseInstanceId firebaseInstanceId = this.zzc;
            String valueOf = String.valueOf(str2);
            return firebaseInstanceId.zza(valueOf.length() != 0 ? "S!".concat(valueOf) : new String("S!"));
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 78);
        sb.append("Invalid topic name: ");
        sb.append(str2);
        sb.append(" does not match the allowed format [a-zA-Z0-9-_.~%]{1,900}");
        throw new IllegalArgumentException(sb.toString());
    }

    public Task<Void> unsubscribeFromTopic(String str) {
        String str2 = str;
        if (str != null) {
            str2 = str;
            if (str.startsWith("/topics/")) {
                Log.w("FirebaseMessaging", "Format /topics/topic-name is deprecated. Only 'topic-name' should be used in unsubscribeFromTopic.");
                str2 = str.substring(8);
            }
        }
        if (str2 != null && zza.matcher(str2).matches()) {
            FirebaseInstanceId firebaseInstanceId = this.zzc;
            String valueOf = String.valueOf(str2);
            return firebaseInstanceId.zza(valueOf.length() != 0 ? "U!".concat(valueOf) : new String("U!"));
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 78);
        sb.append("Invalid topic name: ");
        sb.append(str2);
        sb.append(" does not match the allowed format [a-zA-Z0-9-_.~%]{1,900}");
        throw new IllegalArgumentException(sb.toString());
    }
}
