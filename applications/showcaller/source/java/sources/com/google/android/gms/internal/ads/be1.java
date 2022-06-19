package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.AbstractC6227e;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/be1.class */
public final class be1 implements cj3<pv0> {

    /* renamed from: a */
    private final pj3<C6703lj> f20387a;

    /* renamed from: b */
    private final pj3<Executor> f20388b;

    /* renamed from: c */
    private final pj3<Context> f20389c;

    /* renamed from: d */
    private final pj3<AbstractC6227e> f20390d;

    public be1(pj3<C6703lj> pj3Var, pj3<Executor> pj3Var2, pj3<Context> pj3Var3, pj3<AbstractC6227e> pj3Var4) {
        this.f20387a = pj3Var;
        this.f20388b = pj3Var2;
        this.f20389c = pj3Var3;
        this.f20390d = pj3Var4;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        C6703lj mo8141b = this.f20387a.mo8141b();
        return new pv0(this.f20388b.mo8141b(), new av0(this.f20389c.mo8141b(), mo8141b), this.f20390d.mo8141b());
    }
}
