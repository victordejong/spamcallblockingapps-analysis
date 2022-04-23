package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.appopen.AppOpenAd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efx.class */
public final class efx extends egf {

    /* renamed from: a  reason: collision with root package name */
    private final AppOpenAd.AppOpenAdLoadCallback f27803a;

    /* renamed from: b  reason: collision with root package name */
    private final String f27804b;

    public efx(AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback, String str) {
        this.f27803a = appOpenAdLoadCallback;
        this.f27804b = str;
    }

    @Override // com.google.android.gms.internal.ads.egc
    public final void a(int i) {
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.f27803a;
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.onAppOpenAdFailedToLoad(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.egc
    public final void a(egb egbVar) {
        if (this.f27803a != null) {
            efz efzVar = new efz(egbVar, this.f27804b);
            this.f27803a.onAppOpenAdLoaded(efzVar);
            this.f27803a.onAdLoaded(efzVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.egc
    public final void a(zzvh zzvhVar) {
        if (this.f27803a != null) {
            LoadAdError zzqi = zzvhVar.zzqi();
            this.f27803a.onAppOpenAdFailedToLoad(zzqi);
            this.f27803a.onAdFailedToLoad(zzqi);
        }
    }
}
