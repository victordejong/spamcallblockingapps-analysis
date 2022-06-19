package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/buf.class */
final class buf implements dbi<alq> {

    /* renamed from: a */
    private final /* synthetic */ bua f44763a;

    public buf(bua buaVar) {
        this.f44763a = buaVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final /* synthetic */ void mo13892a(alq alqVar) {
        alqVar.mo18208h();
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        zzvh m18505a = this.f44763a.f44743a.mo18558b().m18505a(th);
        this.f44763a.f44746d.mo17319a(m18505a);
        cqb.m17342a(m18505a.errorCode, th, "DelayedBannerAd.onFailure");
    }
}
