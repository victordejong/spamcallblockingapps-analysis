package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/btf.class */
final class btf implements crh<avq> {

    /* renamed from: a */
    private final /* synthetic */ awq f12214a;

    /* renamed from: b */
    private final /* synthetic */ btg f12215b;

    public btf(btg btgVar, awq awqVar) {
        this.f12215b = btgVar;
        this.f12214a = awqVar;
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final /* synthetic */ void mo6719a(avq avqVar) {
        avq avqVar2 = avqVar;
        synchronized (this.f12215b) {
            this.f12215b.f12226k = null;
            this.f12215b.f12225j = avqVar2;
            avqVar2.mo12299g_();
        }
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6718a(Throwable th) {
        synchronized (this.f12215b) {
            this.f12215b.f12226k = null;
            this.f12214a.mo12373a().mo11258a(zzcjk.m6639a(th));
            chp.m11298a(th, "InterstitialAdManagerShim.onFailure");
        }
    }
}
