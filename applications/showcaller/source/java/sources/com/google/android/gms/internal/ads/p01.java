package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/p01.class */
public final class p01 implements cj3<ja1<y21>> {

    /* renamed from: a */
    private final pj3<tu0> f27807a;

    /* renamed from: b */
    private final pj3<Executor> f27808b;

    public p01(pj3<tu0> pj3Var, pj3<Executor> pj3Var2) {
        this.f27807a = pj3Var;
        this.f27808b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        tu0 mo8141b = this.f27807a.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new ja1(mo8141b, s03Var);
    }
}
