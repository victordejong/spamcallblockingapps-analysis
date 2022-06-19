package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ho2.class */
public final class ho2 implements cj3<fo2> {

    /* renamed from: a */
    private final pj3<Executor> f23997a;

    /* renamed from: b */
    private final pj3<ii0> f23998b;

    public ho2(pj3<Executor> pj3Var, pj3<ii0> pj3Var2) {
        this.f23997a = pj3Var;
        this.f23998b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new fo2(s03Var, this.f23998b.mo8141b());
    }
}
