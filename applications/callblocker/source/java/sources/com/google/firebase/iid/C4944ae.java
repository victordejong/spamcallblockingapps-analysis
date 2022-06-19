package com.google.firebase.iid;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.p129c.C2465a;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.firebase.iid.ae */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/ae.class */
public final class C4944ae {

    /* renamed from: a */
    private static final long f21079a = TimeUnit.MINUTES.toMillis(1);

    /* renamed from: b */
    private static final Object f21080b = new Object();
    @GuardedBy("WakeLockHolder.syncObject")

    /* renamed from: c */
    private static C2465a f21081c;

    /* renamed from: a */
    public static ComponentName m1968a(Context context, Intent intent) {
        ComponentName startService;
        synchronized (f21080b) {
            if (f21081c == null) {
                C2465a c2465a = new C2465a(context, 1, "wake:com.google.firebase.iid.WakeLockHolder");
                f21081c = c2465a;
                c2465a.m14471a(true);
            }
            boolean booleanExtra = intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
            m1967a(intent, true);
            startService = context.startService(intent);
            if (startService == null) {
                startService = null;
            } else if (!booleanExtra) {
                f21081c.m14474a(f21079a);
            }
        }
        return startService;
    }

    /* renamed from: a */
    private static void m1967a(Intent intent, boolean z) {
        intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", z);
    }
}
