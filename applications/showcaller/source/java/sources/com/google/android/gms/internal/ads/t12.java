package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.j41;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/t12.class */
public final class t12<AdT, AdapterT, ListenerT extends j41> implements cj3<s12<AdT, AdapterT, ListenerT>> {

    /* renamed from: a */
    private final pj3<yn2> f29779a;

    /* renamed from: b */
    private final pj3<s03> f29780b;

    /* renamed from: c */
    private final pj3<sw1<AdapterT, ListenerT>> f29781c;

    /* renamed from: d */
    private final pj3<xw1<AdT, AdapterT, ListenerT>> f29782d;

    public t12(pj3<yn2> pj3Var, pj3<s03> pj3Var2, pj3<sw1<AdapterT, ListenerT>> pj3Var3, pj3<xw1<AdT, AdapterT, ListenerT>> pj3Var4) {
        this.f29779a = pj3Var;
        this.f29780b = pj3Var2;
        this.f29781c = pj3Var3;
        this.f29782d = pj3Var4;
    }

    /* renamed from: a */
    public final s12<AdT, AdapterT, ListenerT> mo8141b() {
        return new s12<>(this.f29779a.mo8141b(), this.f29780b.mo8141b(), this.f29781c.mo8141b(), this.f29782d.mo8141b());
    }
}
