package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.appopen.AppOpenAd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efx.class */
public final class efx extends egf {

    /* renamed from: a */
    private final AppOpenAd.AppOpenAdLoadCallback f48987a;

    /* renamed from: b */
    private final String f48988b;

    public efx(AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback, String str) {
        this.f48987a = appOpenAdLoadCallback;
        this.f48988b = str;
    }

    @Override // com.google.android.gms.internal.ads.egc
    /* renamed from: a */
    public final void mo15074a(int i) {
        AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = this.f48987a;
        if (appOpenAdLoadCallback != null) {
            appOpenAdLoadCallback.onAppOpenAdFailedToLoad(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.egc
    /* renamed from: a */
    public final void mo15073a(egb egbVar) {
        if (this.f48987a != null) {
            efz efzVar = new efz(egbVar, this.f48988b);
            this.f48987a.onAppOpenAdLoaded(efzVar);
            this.f48987a.onAdLoaded(efzVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.egc
    /* renamed from: a */
    public final void mo15072a(zzvh zzvhVar) {
        if (this.f48987a != null) {
            LoadAdError zzqi = zzvhVar.zzqi();
            this.f48987a.onAppOpenAdFailedToLoad(zzqi);
            this.f48987a.onAdFailedToLoad(zzqi);
        }
    }
}
