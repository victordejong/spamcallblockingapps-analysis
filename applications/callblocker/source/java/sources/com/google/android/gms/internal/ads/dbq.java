package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dbq.class */
public final class dbq {

    /* renamed from: a */
    private final zzebk f13941a;

    /* renamed from: b */
    private final byte[] f13942b;

    private dbq(int i) {
        this.f13942b = new byte[i];
        this.f13941a = zzebk.m6627a(this.f13942b);
    }

    public /* synthetic */ dbq(int i, dbl dblVar) {
        this(i);
    }

    /* renamed from: a */
    public final dbi m10206a() {
        this.f13941a.m6626b();
        return new dbt(this.f13942b);
    }

    /* renamed from: b */
    public final zzebk m10205b() {
        return this.f13941a;
    }
}
