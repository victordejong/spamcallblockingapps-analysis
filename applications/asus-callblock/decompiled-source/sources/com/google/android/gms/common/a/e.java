package com.google.android.gms.common.a;

import android.os.SystemClock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/a/e.class */
public final class e implements d {

    /* renamed from: a  reason: collision with root package name */
    private static e f3928a;

    public static d c() {
        e eVar;
        synchronized (e.class) {
            try {
                if (f3928a == null) {
                    f3928a = new e();
                }
                eVar = f3928a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar;
    }

    @Override // com.google.android.gms.common.a.d
    public final long a() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.common.a.d
    public final long b() {
        return SystemClock.elapsedRealtime();
    }
}
