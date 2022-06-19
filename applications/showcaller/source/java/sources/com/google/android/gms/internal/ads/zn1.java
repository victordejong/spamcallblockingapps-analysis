package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zn1.class */
public final class zn1 implements cj3<wn1> {

    /* renamed from: a */
    private final pj3<Executor> f33007a;

    /* renamed from: b */
    private final pj3<ii0> f33008b;

    /* renamed from: c */
    private final pj3<ro2> f33009c;

    /* renamed from: d */
    private final pj3<to2> f33010d;

    public zn1(pj3<Executor> pj3Var, pj3<ii0> pj3Var2, pj3<ro2> pj3Var3, pj3<to2> pj3Var4) {
        this.f33007a = pj3Var;
        this.f33008b = pj3Var2;
        this.f33009c = pj3Var3;
        this.f33010d = pj3Var4;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new wn1(s03Var, this.f33008b.mo8141b(), ((so2) this.f33009c).mo8141b(), new to2());
    }
}
