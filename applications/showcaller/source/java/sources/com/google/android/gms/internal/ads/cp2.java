package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cp2.class */
public final class cp2 implements cj3<bp2> {

    /* renamed from: a */
    private final pj3<Executor> f21349a;

    /* renamed from: b */
    private final pj3<ii0> f21350b;

    public cp2(pj3<Executor> pj3Var, pj3<ii0> pj3Var2) {
        this.f21349a = pj3Var;
        this.f21350b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new bp2(s03Var, this.f21350b.mo8141b());
    }
}
