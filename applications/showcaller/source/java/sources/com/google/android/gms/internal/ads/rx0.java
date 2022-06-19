package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rx0.class */
public final class rx0 implements cj3<ja1<AbstractC6888qj>> {

    /* renamed from: a */
    private final ex0 f29289a;

    /* renamed from: b */
    private final pj3<ty0> f29290b;

    /* renamed from: c */
    private final pj3<Executor> f29291c;

    public rx0(ex0 ex0Var, pj3<ty0> pj3Var, pj3<Executor> pj3Var2) {
        this.f29289a = ex0Var;
        this.f29290b = pj3Var;
        this.f29291c = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        ty0 mo8141b = this.f29290b.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new ja1(mo8141b, s03Var);
    }
}
