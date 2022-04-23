package com.google.android.gms.gcm;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.Base64;
import android.util.Log;
import androidx.legacy.content.WakefulBroadcastReceiver;
import p081h.p203i.p204a.p224e.p235d.p249s.C7083o;
import p081h.p203i.p204a.p224e.p258i.ServiceConnectionC7158n;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/gcm/GcmReceiver.class */
public class GcmReceiver extends WakefulBroadcastReceiver {

    /* renamed from: a */
    public static ServiceConnectionC7158n f6688a;

    /* renamed from: b */
    public static ServiceConnectionC7158n f6689b;

    /* renamed from: a */
    public final ServiceConnectionC7158n m31879a(Context context, String str) {
        synchronized (this) {
            if ("com.google.android.c2dm.intent.RECEIVE".equals(str)) {
                if (f6689b == null) {
                    f6689b = new ServiceConnectionC7158n(context, str);
                }
                return f6689b;
            }
            if (f6688a == null) {
                f6688a = new ServiceConnectionC7158n(context, str);
            }
            return f6688a;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x011f A[Catch: SecurityException -> 0x0156, TRY_LEAVE, TryCatch #0 {SecurityException -> 0x0156, blocks: (B:29:0x0116, B:31:0x011f, B:32:0x0128, B:35:0x0132, B:37:0x0141, B:39:0x0149, B:41:0x0150), top: B:48:0x0116 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0128 A[Catch: SecurityException -> 0x0156, TRY_ENTER, TryCatch #0 {SecurityException -> 0x0156, blocks: (B:29:0x0116, B:31:0x011f, B:32:0x0128, B:35:0x0132, B:37:0x0141, B:39:0x0149, B:41:0x0150), top: B:48:0x0116 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0132 A[Catch: SecurityException -> 0x0156, TRY_ENTER, TryCatch #0 {SecurityException -> 0x0156, blocks: (B:29:0x0116, B:31:0x011f, B:32:0x0128, B:35:0x0132, B:37:0x0141, B:39:0x0149, B:41:0x0150), top: B:48:0x0116 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0149 A[Catch: SecurityException -> 0x0156, TRY_ENTER, TryCatch #0 {SecurityException -> 0x0156, blocks: (B:29:0x0116, B:31:0x011f, B:32:0x0128, B:35:0x0132, B:37:0x0141, B:39:0x0149, B:41:0x0150), top: B:48:0x0116 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m31878b(android.content.Context r6, android.content.Intent r7) {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.gcm.GcmReceiver.m31878b(android.content.Context, android.content.Intent):void");
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Log.isLoggable("GcmReceiver", 3);
        intent.setComponent(null);
        intent.setPackage(context.getPackageName());
        if (Build.VERSION.SDK_INT <= 18) {
            intent.removeCategory(context.getPackageName());
        }
        if ("google.com/iid".equals(intent.getStringExtra("from"))) {
            intent.setAction("com.google.android.gms.iid.InstanceID");
        }
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        boolean z = false;
        if (C7083o.m21122j()) {
            z = false;
            if (context.getApplicationInfo().targetSdkVersion >= 26) {
                z = true;
            }
        }
        if (z) {
            if (isOrderedBroadcast()) {
                setResultCode(-1);
            }
            m31879a(context, intent.getAction()).m21019a(intent, goAsync());
            return;
        }
        "com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction());
        m31878b(context, intent);
        if (isOrderedBroadcast() && getResultCode() == 0) {
            setResultCode(-1);
        }
    }
}
