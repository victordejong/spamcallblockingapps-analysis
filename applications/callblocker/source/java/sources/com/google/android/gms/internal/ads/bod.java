package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bod.class */
public final class bod implements crh<akk> {

    /* renamed from: a */
    private final /* synthetic */ bny f11660a;

    public bod(bny bnyVar) {
        this.f11660a = bnyVar;
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final /* synthetic */ void mo6719a(akk akkVar) {
        akkVar.mo12299g_();
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6718a(Throwable th) {
        apt aptVar;
        aptVar = this.f11660a.f11643d;
        aptVar.mo11258a(zzcjk.m6639a(th));
        chp.m11298a(th, "DelayedBannerAd.onFailure");
    }
}
