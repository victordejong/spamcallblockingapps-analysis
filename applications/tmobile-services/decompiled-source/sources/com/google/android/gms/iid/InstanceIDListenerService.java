package com.google.android.gms.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/InstanceIDListenerService.class */
public class InstanceIDListenerService extends zze {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static void m14159d(Context context, zzak zzakVar) {
        zzakVar.m14147d();
        Intent intent = new Intent("com.google.android.gms.iid.InstanceID");
        intent.putExtra("CMD", "RST");
        intent.setClassName(context, "com.google.android.gms.gcm.GcmReceiver");
        context.sendBroadcast(intent);
    }

    /* renamed from: c */
    public void m14160c() {
    }

    @Override // com.google.android.gms.iid.zze
    public void handleIntent(Intent intent) {
        if ("com.google.android.gms.iid.InstanceID".equals(intent.getAction())) {
            Bundle bundle = null;
            String stringExtra = intent.getStringExtra("subtype");
            if (stringExtra != null) {
                bundle = new Bundle();
                bundle.putString("subtype", stringExtra);
            }
            InstanceID a = InstanceID.m14164a(this, bundle);
            String stringExtra2 = intent.getStringExtra("CMD");
            if (Log.isLoggable("InstanceID", 3)) {
                StringBuilder sb = new StringBuilder(String.valueOf(stringExtra).length() + 34 + String.valueOf(stringExtra2).length());
                sb.append("Service command. subtype:");
                sb.append(stringExtra);
                sb.append(" command:");
                sb.append(stringExtra2);
                Log.d("InstanceID", sb.toString());
            }
            if ("RST".equals(stringExtra2)) {
                a.m14162c();
                m14160c();
            } else if ("RST_FULL".equals(stringExtra2)) {
                if (!InstanceID.m14161d().m14150a()) {
                    InstanceID.m14161d().m14147d();
                    m14160c();
                }
            } else if ("SYNC".equals(stringExtra2)) {
                zzak d = InstanceID.m14161d();
                String valueOf = String.valueOf(stringExtra);
                d.m14149b("|T|".length() != 0 ? valueOf.concat("|T|") : new String(valueOf));
                String valueOf2 = String.valueOf(stringExtra);
                d.m14149b("|T-timestamp|".length() != 0 ? valueOf2.concat("|T-timestamp|") : new String(valueOf2));
                m14160c();
            }
        }
    }
}
