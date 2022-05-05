package com.google.android.gms.gcm;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.iid.zze;
import com.mopub.common.Constants;
import java.util.Iterator;
import java.util.List;
import p081h.p203i.p204a.p224e.p254g.C7134c;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/gcm/GcmListenerService.class */
public class GcmListenerService extends zze {
    /* renamed from: a */
    public static void m31883a(Bundle bundle) {
        Iterator<String> it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next != null && next.startsWith("google.c.")) {
                it.remove();
            }
        }
    }

    /* renamed from: a */
    public void m31884a() {
    }

    /* renamed from: a */
    public void m31882a(String str) {
    }

    /* renamed from: a */
    public void m31881a(String str, Bundle bundle) {
    }

    /* renamed from: a */
    public void m31880a(String str, String str2) {
    }

    @Override // com.google.android.gms.iid.zze
    public void handleIntent(Intent intent) {
        if (!"com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction())) {
            String valueOf = String.valueOf(intent.getAction());
            if (valueOf.length() != 0) {
                "Unknown intent action: ".concat(valueOf);
            } else {
                new String("Unknown intent action: ");
            }
        } else {
            String stringExtra = intent.getStringExtra(Constants.VAST_TRACKER_MESSAGE_TYPE);
            String str = stringExtra;
            if (stringExtra == null) {
                str = "gcm";
            }
            char c = 65535;
            switch (str.hashCode()) {
                case -2062414158:
                    if (str.equals("deleted_messages")) {
                        c = 1;
                        break;
                    }
                    break;
                case 102161:
                    if (str.equals("gcm")) {
                        c = 0;
                        break;
                    }
                    break;
                case 814694033:
                    if (str.equals("send_error")) {
                        c = 3;
                        break;
                    }
                    break;
                case 814800675:
                    if (str.equals("send_event")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                Bundle extras = intent.getExtras();
                extras.remove(Constants.VAST_TRACKER_MESSAGE_TYPE);
                extras.remove(WakefulBroadcastReceiver.EXTRA_WAKE_LOCK_ID);
                if ("1".equals(C7134c.m21035b(extras, "gcm.n.e")) || C7134c.m21035b(extras, "gcm.n.icon") != null) {
                    boolean z = false;
                    if (!((KeyguardManager) getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
                        int myPid = Process.myPid();
                        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY)).getRunningAppProcesses();
                        z = false;
                        if (runningAppProcesses != null) {
                            Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                            while (true) {
                                z = false;
                                if (it.hasNext()) {
                                    ActivityManager.RunningAppProcessInfo next = it.next();
                                    if (next.pid == myPid) {
                                        z = false;
                                        if (next.importance == 100) {
                                            z = true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (!z) {
                        C7134c.m21038a(this).m21037a(extras);
                        return;
                    }
                    Bundle bundle = new Bundle();
                    Iterator<String> it2 = extras.keySet().iterator();
                    while (it2.hasNext()) {
                        String next2 = it2.next();
                        String string = extras.getString(next2);
                        String str2 = next2;
                        if (next2.startsWith("gcm.notification.")) {
                            str2 = next2.replace("gcm.notification.", "gcm.n.");
                        }
                        if (str2.startsWith("gcm.n.")) {
                            if (!"gcm.n.e".equals(str2)) {
                                bundle.putString(str2.substring(6), string);
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
                m31883a(extras);
                m31881a(string3, extras);
            } else if (c == 1) {
                m31884a();
            } else if (c == 2) {
                m31882a(intent.getStringExtra("google.message_id"));
            } else if (c != 3) {
                String valueOf2 = String.valueOf(str);
                if (valueOf2.length() != 0) {
                    "Received message with unknown type: ".concat(valueOf2);
                } else {
                    new String("Received message with unknown type: ");
                }
            } else {
                String stringExtra2 = intent.getStringExtra("google.message_id");
                String str3 = stringExtra2;
                if (stringExtra2 == null) {
                    str3 = intent.getStringExtra("message_id");
                }
                m31880a(str3, intent.getStringExtra("error"));
            }
        }
    }
}
