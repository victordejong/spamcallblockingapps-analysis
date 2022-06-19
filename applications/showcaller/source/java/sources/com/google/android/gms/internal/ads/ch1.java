package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.C5730r0;
import com.google.android.gms.common.util.AbstractC6227e;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ch1.class */
public final class ch1 implements cj3<bh1> {

    /* renamed from: a */
    private final pj3<C5730r0> f21252a;

    /* renamed from: b */
    private final pj3<AbstractC6227e> f21253b;

    /* renamed from: c */
    private final pj3<Executor> f21254c;

    public ch1(pj3<C5730r0> pj3Var, pj3<AbstractC6227e> pj3Var2, pj3<Executor> pj3Var3) {
        this.f21252a = pj3Var;
        this.f21253b = pj3Var2;
        this.f21254c = pj3Var3;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        C5730r0 mo8141b = this.f21252a.mo8141b();
        AbstractC6227e mo8141b2 = this.f21253b.mo8141b();
        s03 s03Var = qi0.f28495a;
        kj3.m13879b(s03Var);
        return new bh1(mo8141b, mo8141b2, s03Var);
    }
}
