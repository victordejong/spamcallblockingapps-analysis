package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eiu.class */
public final class eiu extends ekh {

    /* renamed from: a  reason: collision with root package name */
    final AdListener f27869a;

    public eiu(AdListener adListener) {
        this.f27869a = adListener;
    }

    @Override // com.google.android.gms.internal.ads.eki
    public final void a() {
        this.f27869a.onAdClosed();
    }

    @Override // com.google.android.gms.internal.ads.eki
    public final void a(int i) {
        this.f27869a.onAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.internal.ads.eki
    public final void a(zzvh zzvhVar) {
        this.f27869a.onAdFailedToLoad(zzvhVar.zzqi());
    }

    @Override // com.google.android.gms.internal.ads.eki
    public final void b() {
        this.f27869a.onAdLeftApplication();
    }

    @Override // com.google.android.gms.internal.ads.eki
    public final void c() {
        this.f27869a.onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.eki
    public final void d() {
        this.f27869a.onAdOpened();
    }

    @Override // com.google.android.gms.internal.ads.eki
    public final void e() {
        this.f27869a.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.eki
    public final void f() {
        this.f27869a.onAdImpression();
    }
}
