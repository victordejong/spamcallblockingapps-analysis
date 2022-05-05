package com.google.android.gms.common.stats;

import android.support.v4.b.h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final long f4086a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4087b;
    private final h<String, Long> c;

    public e() {
        this.f4086a = 60000L;
        this.f4087b = 10;
        this.c = new h<>(10);
    }

    public e(long j) {
        this.f4086a = j;
        this.f4087b = 1024;
        this.c = new h<>();
    }
}
