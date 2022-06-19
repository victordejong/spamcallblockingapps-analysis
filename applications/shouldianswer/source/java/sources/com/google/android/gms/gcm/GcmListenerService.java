package com.google.android.gms.gcm;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.iid.zze;
import com.google.android.gms.internal.gcm.zzl;
import com.google.android.gms.internal.gcm.zzm;
import java.util.Iterator;
import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/GcmListenerService.class */
public class GcmListenerService extends zze {
    private zzl zzg = zzm.zzdk;

    public static void zzd(Bundle bundle) {
        Iterator<String> it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next != null && next.startsWith("google.c.")) {
                it.remove();
            }
        }
    }

    @Override // com.google.android.gms.iid.zze
    public void handleIntent(Intent intent) {
        if (!"com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction())) {
            String valueOf = String.valueOf(intent.getAction());
            Log.w("GcmListenerService", valueOf.length() != 0 ? "Unknown intent action: ".concat(valueOf) : new String("Unknown intent action: "));
            return;
        }
        String stringExtra = intent.getStringExtra("message_type");
        String str = stringExtra;
        if (stringExtra == null) {
            str = GoogleCloudMessaging.MESSAGE_TYPE_MESSAGE;
        }
        boolean z = true;
        switch (str.hashCode()) {
            case -2062414158:
                if (str.equals(GoogleCloudMessaging.MESSAGE_TYPE_DELETED)) {
                    z = true;
                    break;
                }
                break;
            case 102161:
                if (str.equals(GoogleCloudMessaging.MESSAGE_TYPE_MESSAGE)) {
                    z = false;
                    break;
                }
                break;
            case 814694033:
                if (str.equals(GoogleCloudMessaging.MESSAGE_TYPE_SEND_ERROR)) {
                    z = true;
                    break;
                }
                break;
            case 814800675:
                if (str.equals(GoogleCloudMessaging.MESSAGE_TYPE_SEND_EVENT)) {
                    z = true;
                    break;
                }
                break;
        }
        if (z) {
            if (z) {
                onDeletedMessages();
                return;
            } else if (z) {
                onMessageSent(intent.getStringExtra("google.message_id"));
                return;
            } else if (!z) {
                String valueOf2 = String.valueOf(str);
                Log.w("GcmListenerService", valueOf2.length() != 0 ? "Received message with unknown type: ".concat(valueOf2) : new String("Received message with unknown type: "));
                return;
            } else {
                String stringExtra2 = intent.getStringExtra("google.message_id");
                String str2 = stringExtra2;
                if (stringExtra2 == null) {
                    str2 = intent.getStringExtra("message_id");
                }
                onSendError(str2, intent.getStringExtra("error"));
                return;
            }
        }
        Bundle extras = intent.getExtras();
        extras.remove("message_type");
        extras.remove("androidx.contentpager.content.wakelockid");
        if ("1".equals(zzd.zzd(extras, "gcm.n.e")) || zzd.zzd(extras, "gcm.n.icon") != null) {
            boolean z2 = false;
            if (!((KeyguardManager) getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
                int myPid = Process.myPid();
                List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) getSystemService("activity")).getRunningAppProcesses();
                z2 = false;
                if (runningAppProcesses != null) {
                    Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                    while (true) {
                        z2 = false;
                        if (it.hasNext()) {
                            ActivityManager.RunningAppProcessInfo next = it.next();
                            if (next.pid == myPid) {
                                z2 = false;
                                if (next.importance == 100) {
                                    z2 = true;
                                }
                            }
                        }
                    }
                }
            }
            if (!z2) {
                zzd.zzd(this).zze(extras);
                return;
            }
            Bundle bundle = new Bundle();
            Iterator<String> it2 = extras.keySet().iterator();
            while (it2.hasNext()) {
                String next2 = it2.next();
                String string = extras.getString(next2);
                String str3 = next2;
                if (next2.startsWith("gcm.notification.")) {
                    str3 = next2.replace("gcm.notification.", "gcm.n.");
                }
                if (str3.startsWith("gcm.n.")) {
                    if (!"gcm.n.e".equals(str3)) {
                        bundle.putString(str3.substring(6), string);
                    }
                    it2.remove();
                }
            }
            String string2 = bundle.getString("sound2");
            if (string2 != null) {
                bundle.remove("sound2");
                bundle.putString("sound", string2);
            }
            if (!bundle.isEmpty()) {
                extras.putBundle("notification", bundle);
            }
        }
        String string3 = extras.getString("from");
        extras.remove("from");
        zzd(extras);
        this.zzg.zzl("onMessageReceived");
        try {
            onMessageReceived(string3, extras);
        } finally {
            throw th;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        zzm.zzab();
        getClass();
        this.zzg = zzm.zzdk;
    }

    public void onDeletedMessages() {
    }

    public void onMessageReceived(String str, Bundle bundle) {
    }

    public void onMessageSent(String str) {
    }

    public void onSendError(String str, String str2) {
    }
}
