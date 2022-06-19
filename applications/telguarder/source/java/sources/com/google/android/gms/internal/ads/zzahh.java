package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzahh.class */
public final class zzahh extends zzagj {
    private final UnifiedNativeAd.OnUnifiedNativeAdLoadedListener zzdgy;

    public zzahh(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
        this.zzdgy = onUnifiedNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final void zza(zzagr zzagrVar) {
        this.zzdgy.onUnifiedNativeAdLoaded(new zzags(zzagrVar));
    }
}
