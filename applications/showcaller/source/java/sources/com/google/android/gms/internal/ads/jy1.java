package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jy1.class */
public final class jy1 implements f03<xw0> {

    /* renamed from: a */
    final /* synthetic */ ky1 f25030a;

    public jy1(ky1 ky1Var) {
        this.f25030a = ky1Var;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
        vx0 vx0Var;
        a31 a31Var;
        vx0Var = this.f25030a.f25883a;
        zzbcz m16455h = vx0Var.mo9842b().m16455h(th);
        a31Var = this.f25030a.f25886d;
        a31Var.mo9146O(m16455h);
        nk2.m12892a(m16455h.f33653d, th, "DelayedBannerAd.onFailure");
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8125b(xw0 xw0Var) {
        xw0Var.mo9021a();
    }
}
