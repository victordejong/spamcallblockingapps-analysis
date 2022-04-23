package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzags.class */
public final class zzags extends zzafw {

    /* renamed from: a */
    public final UnifiedNativeAd.OnUnifiedNativeAdLoadedListener f24088a;

    public zzags(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
        this.f24088a = onUnifiedNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzaft
    /* renamed from: a */
    public final void mo16767a(zzage zzageVar) {
        this.f24088a.onUnifiedNativeAdLoaded(new zzagf(zzageVar));
    }
}
