package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vr0.class */
final class vr0 implements jh2 {

    /* renamed from: a */
    private final fs0 f31318a;

    /* renamed from: b */
    private final vr0 f31319b = this;

    /* renamed from: c */
    private final pj3<Context> f31320c;

    /* renamed from: d */
    private final pj3<zzbdl> f31321d;

    /* renamed from: e */
    private final pj3<String> f31322e;

    /* renamed from: f */
    private final pj3<a42> f31323f;

    /* renamed from: g */
    private final pj3<hi2> f31324g;

    /* renamed from: h */
    private final pj3<gh2> f31325h;

    /* renamed from: i */
    private final pj3<i42> f31326i;

    public /* synthetic */ vr0(fs0 fs0Var, Context context, String str, zzbdl zzbdlVar, wr0 wr0Var) {
        pj3 pj3Var;
        pj3 pj3Var2;
        pj3 pj3Var3;
        pj3 pj3Var4;
        this.f31318a = fs0Var;
        cj3 m15781a = dj3.m15781a(context);
        this.f31320c = m15781a;
        cj3 m15781a2 = dj3.m15781a(zzbdlVar);
        this.f31321d = m15781a2;
        cj3 m15781a3 = dj3.m15781a(str);
        this.f31322e = m15781a3;
        pj3Var = fs0Var.f23098p;
        pj3<a42> m16584a = aj3.m16584a(new b42(pj3Var));
        this.f31323f = m16584a;
        pj3Var2 = fs0Var.f23107t0;
        pj3<hi2> m16584a2 = aj3.m16584a(new ii2(pj3Var2));
        this.f31324g = m16584a2;
        pj3Var3 = fs0Var.f23100q;
        pj3Var4 = fs0Var.f23057O;
        pj3<gh2> m16584a3 = aj3.m16584a(new hh2(m15781a, pj3Var3, pj3Var4, m16584a, m16584a2, zj2.m8349a()));
        this.f31325h = m16584a3;
        this.f31326i = aj3.m16584a(new j42(m15781a, m15781a2, m15781a3, m16584a3, m16584a, m16584a2));
    }

    @Override // com.google.android.gms.internal.ads.jh2
    public final i42 zza() {
        return this.f31326i.mo8141b();
    }
}
