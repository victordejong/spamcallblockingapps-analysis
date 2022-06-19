package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/t01.class */
public final class t01 implements cj3<ja1<n41>> {

    /* renamed from: a */
    private final pj3<tu0> f29756a;

    /* renamed from: b */
    private final pj3<Executor> f29757b;

    public t01(pj3<tu0> pj3Var, pj3<Executor> pj3Var2) {
        this.f29756a = pj3Var;
        this.f29757b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        tu0 mo8141b = this.f29756a.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new ja1(mo8141b, s03Var);
    }
}
