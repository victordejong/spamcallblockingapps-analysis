package com.google.android.gms.internal.measurement;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.UserManager;
/* renamed from: com.google.android.gms.internal.measurement.aw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/aw.class */
public class C3807aw {

    /* renamed from: a */
    private static UserManager f17865a;

    /* renamed from: b */
    private static volatile boolean f17866b;

    /* renamed from: c */
    private static boolean f17867c;

    static {
        f17866b = !m5895a();
        f17867c = false;
    }

    private C3807aw() {
    }

    /* renamed from: a */
    public static boolean m5895a() {
        return Build.VERSION.SDK_INT >= 24;
    }

    /* renamed from: a */
    public static boolean m5894a(Context context) {
        return !m5895a() || m5892c(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x003a, code lost:
        r8 = true;
     */
    @android.annotation.TargetApi(24)
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m5893b(android.content.Context r4) {
        /*
            r0 = 1
            r5 = r0
            r0 = 1
            r6 = r0
        L4:
            r0 = r6
            r1 = 2
            if (r0 > r1) goto L69
            android.os.UserManager r0 = com.google.android.gms.internal.measurement.C3807aw.f17865a
            if (r0 != 0) goto L1b
            r0 = r4
            java.lang.Class<android.os.UserManager> r1 = android.os.UserManager.class
            java.lang.Object r0 = r0.getSystemService(r1)
            android.os.UserManager r0 = (android.os.UserManager) r0
            com.google.android.gms.internal.measurement.C3807aw.f17865a = r0
        L1b:
            android.os.UserManager r0 = com.google.android.gms.internal.measurement.C3807aw.f17865a
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L25
        L23:
            r0 = r5
            return r0
        L25:
            r0 = r7
            boolean r0 = r0.isUserUnlocked()     // Catch: java.lang.NullPointerException -> L55
            if (r0 != 0) goto L3a
            r0 = r7
            android.os.UserHandle r1 = android.os.Process.myUserHandle()     // Catch: java.lang.NullPointerException -> L55
            boolean r0 = r0.isUserRunning(r1)     // Catch: java.lang.NullPointerException -> L55
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L4f
        L3a:
            r0 = 1
            r8 = r0
        L3d:
            r0 = r8
            r5 = r0
            r0 = r8
            if (r0 == 0) goto L23
            r0 = 0
            com.google.android.gms.internal.measurement.C3807aw.f17865a = r0
            r0 = r8
            r5 = r0
            goto L23
        L4f:
            r0 = 0
            r8 = r0
            goto L3d
        L55:
            r7 = move-exception
            java.lang.String r0 = "DirectBootUtils"
            java.lang.String r1 = "Failed to check if user is unlocked."
            r2 = r7
            int r0 = android.util.Log.w(r0, r1, r2)
            r0 = 0
            com.google.android.gms.internal.measurement.C3807aw.f17865a = r0
            int r6 = r6 + 1
            goto L4
        L69:
            r0 = 0
            r8 = r0
            goto L3d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C3807aw.m5893b(android.content.Context):boolean");
    }

    @TargetApi(24)
    /* renamed from: c */
    private static boolean m5892c(Context context) {
        boolean z = true;
        if (!f17866b) {
            synchronized (C3807aw.class) {
                try {
                    if (!f17866b) {
                        z = m5893b(context);
                        if (z) {
                            f17866b = z;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return z;
    }
}
