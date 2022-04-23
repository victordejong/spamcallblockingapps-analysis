package com.google.android.gms.gcm;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import androidx.annotation.CallSuper;
import com.google.android.gms.iid.zze;
import com.google.android.gms.internal.gcm.zzl;
import com.google.android.gms.internal.gcm.zzm;
import com.google.firebase.messaging.Constants;
import com.tmobile.services.nameid.model.TmoUserStatus;
import java.util.Iterator;
import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/GcmListenerService.class */
public class GcmListenerService extends zze {

    /* renamed from: k */
    private zzl f7712k = zzm.f7860a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static void m14203g(Bundle bundle) {
        Iterator<String> it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next != null && next.startsWith(Constants.MessagePayloadKeys.RESERVED_CLIENT_LIB_PREFIX)) {
                it.remove();
            }
        }
    }

    /* renamed from: c */
    public void m14207c() {
    }

    /* renamed from: d */
    public void m14206d(String str, Bundle bundle) {
    }

    /* renamed from: e */
    public void m14205e(String str) {
    }

    /* renamed from: f */
    public void m14204f(String str, String str2) {
    }

    @Override // com.google.android.gms.iid.zze
    public void handleIntent(Intent intent) {
        if (!"com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction())) {
            String valueOf = String.valueOf(intent.getAction());
            Log.w("GcmListenerService", valueOf.length() != 0 ? "Unknown intent action: ".concat(valueOf) : new String("Unknown intent action: "));
            return;
        }
        String stringExtra = intent.getStringExtra(Constants.MessagePayloadKeys.MESSAGE_TYPE);
        String str = stringExtra;
        if (stringExtra == null) {
            str = Constants.MessageTypes.MESSAGE;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -2062414158:
                if (str.equals(Constants.MessageTypes.DELETED)) {
                    c = 1;
                    break;
                }
                break;
            case 102161:
                if (str.equals(Constants.MessageTypes.MESSAGE)) {
                    c = 0;
                    break;
                }
                break;
            case 814694033:
                if (str.equals(Constants.MessageTypes.SEND_ERROR)) {
                    c = 3;
                    break;
                }
                break;
            case 814800675:
                if (str.equals(Constants.MessageTypes.SEND_EVENT)) {
                    c = 2;
                    break;
                }
                break;
        }
        if (c == 0) {
            Bundle extras = intent.getExtras();
            extras.remove(Constants.MessagePayloadKeys.MESSAGE_TYPE);
            extras.remove("androidx.contentpager.content.wakelockid");
            if (TmoUserStatus.CUSTOMER_TYPE_POSTPAID.equals(zzd.m14169b(extras, Constants.MessageNotificationKeys.ENABLE_NOTIFICATION)) || zzd.m14169b(extras, Constants.MessageNotificationKeys.ICON) != null) {
                boolean z = false;
                if (!((KeyguardManager) getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
                    int myPid = Process.myPid();
                    List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) getSystemService("activity")).getRunningAppProcesses();
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
                    zzd.m14170a(this).m14167d(extras);
                    return;
                }
                Bundle bundle = new Bundle();
                Iterator<String> it2 = extras.keySet().iterator();
                while (it2.hasNext()) {
                    String next2 = it2.next();
                    String string = extras.getString(next2);
                    String str2 = next2;
                    if (next2.startsWith(Constants.MessageNotificationKeys.NOTIFICATION_PREFIX_OLD)) {
                        str2 = next2.replace(Constants.MessageNotificationKeys.NOTIFICATION_PREFIX_OLD, Constants.MessageNotificationKeys.NOTIFICATION_PREFIX);
                    }
                    if (str2.startsWith(Constants.MessageNotificationKeys.NOTIFICATION_PREFIX)) {
                        if (!Constants.MessageNotificationKeys.ENABLE_NOTIFICATION.equals(str2)) {
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
            String string3 = extras.getString(Constants.MessagePayloadKeys.FROM);
            extras.remove(Constants.MessagePayloadKeys.FROM);
            m14203g(extras);
            this.f7712k.mo14063a("onMessageReceived");
            try {
                m14206d(string3, extras);
            } finally {
                throw th;
            }
        } else if (c == 1) {
            m14207c();
        } else if (c == 2) {
            m14205e(intent.getStringExtra(Constants.MessagePayloadKeys.MSGID));
        } else if (c != 3) {
            String valueOf2 = String.valueOf(str);
            Log.w("GcmListenerService", valueOf2.length() != 0 ? "Received message with unknown type: ".concat(valueOf2) : new String("Received message with unknown type: "));
        } else {
            String stringExtra2 = intent.getStringExtra(Constants.MessagePayloadKeys.MSGID);
            String str3 = stringExtra2;
            if (stringExtra2 == null) {
                str3 = intent.getStringExtra(Constants.MessagePayloadKeys.MSGID_SERVER);
            }
            m14204f(str3, intent.getStringExtra(Constants.IPC_BUNDLE_KEY_SEND_ERROR));
        }
    }

    @Override // android.app.Service
    @CallSuper
    public void onCreate() {
        super.onCreate();
        zzm.m14064a();
        getClass();
        this.f7712k = zzm.f7860a;
    }
}
