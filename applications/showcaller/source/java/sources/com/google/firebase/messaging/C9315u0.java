package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.stats.C7950a;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.messaging.u0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/u0.class */
final class C9315u0 {

    /* renamed from: a */
    private static final long f39874a = TimeUnit.MINUTES.toMillis(1);

    /* renamed from: b */
    private static final Object f39875b = new Object();

    /* renamed from: c */
    private static C7950a f39876c;

    /* renamed from: a */
    private static void m1141a(Context context) {
        if (f39876c == null) {
            C7950a c7950a = new C7950a(context, 1, "wake:com.google.firebase.iid.WakeLockHolder");
            f39876c = c7950a;
            c7950a.m5844c(true);
        }
    }

    /* renamed from: b */
    public static void m1140b(Intent intent) {
        synchronized (f39875b) {
            if (f39876c != null && m1139c(intent)) {
                m1138d(intent, false);
                f39876c.m5845b();
            }
        }
    }

    /* renamed from: c */
    static boolean m1139c(Intent intent) {
        return intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
    }

    /* renamed from: d */
    private static void m1138d(Intent intent, boolean z) {
        intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", z);
    }

    /* renamed from: e */
    public static ComponentName m1137e(Context context, Intent intent) {
        synchronized (f39875b) {
            m1141a(context);
            boolean m1139c = m1139c(intent);
            m1138d(intent, true);
            ComponentName startService = context.startService(intent);
            if (startService == null) {
                return null;
            }
            if (!m1139c) {
                f39876c.m5846a(f39874a);
            }
            return startService;
        }
    }
}
