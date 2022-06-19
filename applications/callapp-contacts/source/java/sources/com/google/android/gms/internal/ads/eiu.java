package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eiu.class */
public final class eiu extends ekh {

    /* renamed from: a */
    final AdListener f49060a;

    public eiu(AdListener adListener) {
        this.f49060a = adListener;
    }

    @Override // com.google.android.gms.internal.ads.eki
    /* renamed from: a */
    public final void mo14824a() {
        this.f49060a.onAdClosed();
    }

    @Override // com.google.android.gms.internal.ads.eki
    /* renamed from: a */
    public final void mo14823a(int i) {
        this.f49060a.onAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.internal.ads.eki
    /* renamed from: a */
    public final void mo14822a(zzvh zzvhVar) {
        this.f49060a.onAdFailedToLoad(zzvhVar.zzqi());
    }

    @Override // com.google.android.gms.internal.ads.eki
    /* renamed from: b */
    public final void mo14821b() {
        this.f49060a.onAdLeftApplication();
    }

    @Override // com.google.android.gms.internal.ads.eki
    /* renamed from: c */
    public final void mo14820c() {
        this.f49060a.onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.eki
    /* renamed from: d */
    public final void mo14819d() {
        this.f49060a.onAdOpened();
    }

    @Override // com.google.android.gms.internal.ads.eki
    /* renamed from: e */
    public final void mo14818e() {
        this.f49060a.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.eki
    /* renamed from: f */
    public final void mo14817f() {
        this.f49060a.onAdImpression();
    }
}
