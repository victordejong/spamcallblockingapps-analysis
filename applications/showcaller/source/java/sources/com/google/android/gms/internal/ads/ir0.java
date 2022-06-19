package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ir0.class */
final class ir0 implements pf2 {

    /* renamed from: a */
    private final Context f24396a;

    /* renamed from: b */
    private final zzbdl f24397b;

    /* renamed from: c */
    private final String f24398c;

    /* renamed from: d */
    private final fs0 f24399d;

    /* renamed from: e */
    private final ir0 f24400e = this;

    /* renamed from: f */
    private final pj3<Context> f24401f;

    /* renamed from: g */
    private final pj3<zzbdl> f24402g;

    /* renamed from: h */
    private final pj3<a42> f24403h;

    /* renamed from: i */
    private final pj3<e42> f24404i;

    /* renamed from: j */
    private final pj3<mf2> f24405j;

    public /* synthetic */ ir0(fs0 fs0Var, Context context, String str, zzbdl zzbdlVar, wr0 wr0Var) {
        pj3 pj3Var;
        pj3 pj3Var2;
        pj3 pj3Var3;
        this.f24399d = fs0Var;
        this.f24396a = context;
        this.f24397b = zzbdlVar;
        this.f24398c = str;
        cj3 m15781a = dj3.m15781a(context);
        this.f24401f = m15781a;
        cj3 m15781a2 = dj3.m15781a(zzbdlVar);
        this.f24402g = m15781a2;
        pj3Var = fs0Var.f23098p;
        pj3<a42> m16584a = aj3.m16584a(new b42(pj3Var));
        this.f24403h = m16584a;
        pj3<e42> m16584a2 = aj3.m16584a(g42.m14982a());
        this.f24404i = m16584a2;
        pj3Var2 = fs0Var.f23100q;
        pj3Var3 = fs0Var.f23057O;
        this.f24405j = aj3.m16584a(new nf2(m15781a, pj3Var2, m15781a2, pj3Var3, m16584a, m16584a2, zj2.m8349a()));
    }

    @Override // com.google.android.gms.internal.ads.pf2
    public final f32 zza() {
        return new f32(this.f24396a, this.f24397b, this.f24398c, this.f24405j.mo8141b(), this.f24403h.mo8141b());
    }
}
