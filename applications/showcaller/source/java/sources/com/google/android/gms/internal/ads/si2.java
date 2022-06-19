package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/si2.class */
public final class si2 implements cj3<ri2> {

    /* renamed from: a */
    private final pj3<Context> f29525a;

    /* renamed from: b */
    private final pj3<Executor> f29526b;

    /* renamed from: c */
    private final pj3<sp0> f29527c;

    /* renamed from: d */
    private final pj3<sg2<kk1, fk1>> f29528d;

    /* renamed from: e */
    private final pj3<hi2> f29529e;

    /* renamed from: f */
    private final pj3<vj2> f29530f;

    /* renamed from: g */
    private final pj3<sj2> f29531g;

    public si2(pj3<Context> pj3Var, pj3<Executor> pj3Var2, pj3<sp0> pj3Var3, pj3<sg2<kk1, fk1>> pj3Var4, pj3<hi2> pj3Var5, pj3<vj2> pj3Var6, pj3<sj2> pj3Var7) {
        this.f29525a = pj3Var;
        this.f29526b = pj3Var2;
        this.f29527c = pj3Var3;
        this.f29528d = pj3Var4;
        this.f29529e = pj3Var5;
        this.f29530f = pj3Var6;
        this.f29531g = pj3Var7;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new ri2(this.f29525a.mo8141b(), this.f29526b.mo8141b(), this.f29527c.mo8141b(), ((xg2) this.f29528d).mo8141b(), this.f29529e.mo8141b(), new vj2(), this.f29531g.mo8141b());
    }
}
