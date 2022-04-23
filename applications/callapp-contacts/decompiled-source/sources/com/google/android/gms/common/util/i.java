package com.google.android.gms.common.util;

import android.os.SystemClock;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/i.class */
public final class i implements f {

    /* renamed from: a  reason: collision with root package name */
    private static final i f22942a = new i();

    private i() {
    }

    public static f d() {
        return f22942a;
    }

    @Override // com.google.android.gms.common.util.f
    public final long a() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.common.util.f
    public final long b() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.common.util.f
    public final long c() {
        return System.nanoTime();
    }
}
