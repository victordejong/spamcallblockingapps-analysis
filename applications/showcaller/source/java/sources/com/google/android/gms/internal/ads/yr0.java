package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yr0.class */
final class yr0 implements yi2 {

    /* renamed from: a */
    private final fs0 f32612a;

    /* renamed from: b */
    private final yr0 f32613b = this;

    /* renamed from: c */
    private final pj3<Context> f32614c;

    /* renamed from: d */
    private final pj3<sg2<kk1, fk1>> f32615d;

    /* renamed from: e */
    private final pj3<hi2> f32616e;

    /* renamed from: f */
    private final pj3<sj2> f32617f;

    /* renamed from: g */
    private final pj3<ri2> f32618g;

    /* renamed from: h */
    private final pj3<bj2> f32619h;

    /* renamed from: i */
    private final pj3<String> f32620i;

    /* renamed from: j */
    private final pj3<vi2> f32621j;

    public /* synthetic */ yr0(fs0 fs0Var, Context context, String str, wr0 wr0Var) {
        pj3 pj3Var;
        pj3 pj3Var2;
        pj3 pj3Var3;
        pj3 pj3Var4;
        pj3 pj3Var5;
        this.f32612a = fs0Var;
        cj3 m15781a = dj3.m15781a(context);
        this.f32614c = m15781a;
        pj3Var = fs0Var.f23107t0;
        pj3Var2 = fs0Var.f23109u0;
        xg2 xg2Var = new xg2(m15781a, pj3Var, pj3Var2);
        this.f32615d = xg2Var;
        pj3Var3 = fs0Var.f23107t0;
        pj3<hi2> m16584a = aj3.m16584a(new ii2(pj3Var3));
        this.f32616e = m16584a;
        pj3<sj2> m16584a2 = aj3.m16584a(uj2.m10320a());
        this.f32617f = m16584a2;
        pj3Var4 = fs0Var.f23100q;
        pj3Var5 = fs0Var.f23057O;
        pj3<ri2> m16584a3 = aj3.m16584a(new si2(m15781a, pj3Var4, pj3Var5, xg2Var, m16584a, zj2.m8349a(), m16584a2));
        this.f32618g = m16584a3;
        this.f32619h = aj3.m16584a(new cj2(m16584a3, m16584a, m16584a2));
        cj3 m15780c = dj3.m15780c(str);
        this.f32620i = m15780c;
        this.f32621j = aj3.m16584a(new wi2(m15780c, m16584a3, m15781a, m16584a, m16584a2));
    }

    @Override // com.google.android.gms.internal.ads.yi2
    /* renamed from: b */
    public final vi2 mo8713b() {
        return this.f32621j.mo8141b();
    }

    @Override // com.google.android.gms.internal.ads.yi2
    public final bj2 zza() {
        return this.f32619h.mo8141b();
    }
}
