package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/af2.class */
public final class af2 implements cj3<ze2> {

    /* renamed from: a */
    private final pj3<Context> f19937a;

    /* renamed from: b */
    private final pj3<Executor> f19938b;

    /* renamed from: c */
    private final pj3<sp0> f19939c;

    /* renamed from: d */
    private final pj3<sg2<kw0, qw0>> f19940d;

    /* renamed from: e */
    private final pj3<xe2> f19941e;

    /* renamed from: f */
    private final pj3<vj2> f19942f;

    public af2(pj3<Context> pj3Var, pj3<Executor> pj3Var2, pj3<sp0> pj3Var3, pj3<sg2<kw0, qw0>> pj3Var4, pj3<xe2> pj3Var5, pj3<vj2> pj3Var6) {
        this.f19937a = pj3Var;
        this.f19938b = pj3Var2;
        this.f19939c = pj3Var3;
        this.f19940d = pj3Var4;
        this.f19941e = pj3Var5;
        this.f19942f = pj3Var6;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new ze2(this.f19937a.mo8141b(), this.f19938b.mo8141b(), this.f19939c.mo8141b(), ((vg2) this.f19940d).mo8141b(), this.f19941e.mo8141b(), new vj2());
    }
}
