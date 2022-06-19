package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bq1.class */
public final class bq1 implements cj3<ja1<r41>> {

    /* renamed from: a */
    private final pj3<aq1> f20551a;

    /* renamed from: b */
    private final pj3<Executor> f20552b;

    public bq1(pj3<aq1> pj3Var, pj3<Executor> pj3Var2) {
        this.f20551a = pj3Var;
        this.f20552b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        aq1 mo8141b = this.f20551a.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new ja1(mo8141b, s03Var);
    }
}
