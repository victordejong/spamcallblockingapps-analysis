package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bts.class */
final class bts implements crh<amh> {

    /* renamed from: a */
    private final /* synthetic */ bto f12245a;

    /* renamed from: b */
    private final /* synthetic */ axo f12246b;

    /* renamed from: c */
    private final /* synthetic */ btr f12247c;

    public bts(btr btrVar, bto btoVar, axo axoVar) {
        this.f12247c = btrVar;
        this.f12245a = btoVar;
        this.f12246b = axoVar;
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final /* synthetic */ void mo6719a(amh amhVar) {
        amh amhVar2 = amhVar;
        synchronized (this.f12247c) {
            this.f12245a.mo11376a(amhVar2);
        }
    }

    @Override // com.google.android.gms.internal.ads.crh
    /* renamed from: a */
    public final void mo6718a(Throwable th) {
        this.f12246b.mo12345b().mo11258a(zzcjk.m6639a(th));
        chp.m11298a(th, "NativeAdLoader.onFailure");
        this.f12245a.mo11377a();
    }
}
