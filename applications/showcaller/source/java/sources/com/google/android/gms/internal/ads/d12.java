package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/d12.class */
public final class d12 implements cj3<c12> {

    /* renamed from: a */
    private final pj3<Context> f21441a;

    /* renamed from: b */
    private final pj3<zzcgz> f21442b;

    /* renamed from: c */
    private final pj3<xj2> f21443c;

    /* renamed from: d */
    private final pj3<Executor> f21444d;

    /* renamed from: e */
    private final pj3<kk1> f21445e;

    /* renamed from: f */
    private final pj3<bl1> f21446f;

    /* renamed from: g */
    private final pj3<q20> f21447g;

    public d12(pj3<Context> pj3Var, pj3<zzcgz> pj3Var2, pj3<xj2> pj3Var3, pj3<Executor> pj3Var4, pj3<kk1> pj3Var5, pj3<bl1> pj3Var6, pj3<q20> pj3Var7) {
        this.f21441a = pj3Var;
        this.f21442b = pj3Var2;
        this.f21443c = pj3Var3;
        this.f21444d = pj3Var4;
        this.f21445e = pj3Var5;
        this.f21446f = pj3Var6;
        this.f21447g = pj3Var7;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new c12(this.f21441a.mo8141b(), ((gq0) this.f21442b).m14874a(), ((o21) this.f21443c).m12759a(), this.f21444d.mo8141b(), this.f21445e.mo8141b(), this.f21446f.mo8141b(), new q20());
    }
}
