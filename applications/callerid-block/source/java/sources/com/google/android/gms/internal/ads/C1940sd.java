package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.sd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sd.class */
public final class C1940sd {

    /* renamed from: a */
    private final C1994vc f8441a;

    /* renamed from: b */
    private rz1<wc> f8442b;

    public C1940sd(C1994vc c1994vc) {
        this.f8441a = c1994vc;
    }

    /* renamed from: d */
    private final void m5751d() {
        if (this.f8442b == null) {
            fp fpVar = new fp();
            this.f8442b = fpVar;
            this.f8441a.m5300b(null).m6531a(new od(fpVar), new pd(fpVar));
        }
    }

    /* renamed from: a */
    public final <I, O> vd<I, O> m5754a(String str, AbstractC1662bd<I> abstractC1662bd, AbstractC1647ad<O> abstractC1647ad) {
        m5751d();
        return new vd<>(this.f8442b, "google.afma.activeView.handleUpdate", abstractC1662bd, abstractC1647ad);
    }

    /* renamed from: b */
    public final void m5753b(String str, AbstractC1766h9<? super wc> abstractC1766h9) {
        m5751d();
        this.f8442b = kz1.h(this.f8442b, new qd(str, abstractC1766h9), C2073zo.f9415f);
    }

    /* renamed from: c */
    public final void m5752c(String str, AbstractC1766h9<? super wc> abstractC1766h9) {
        this.f8442b = kz1.i(this.f8442b, new rd(str, abstractC1766h9), C2073zo.f9415f);
    }
}
