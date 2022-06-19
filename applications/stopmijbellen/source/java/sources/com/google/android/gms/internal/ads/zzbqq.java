package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqq.class */
public final class zzbqq extends zzbpv {
    private final UnifiedNativeAd.OnUnifiedNativeAdLoadedListener zza;

    public zzbqq(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
        this.zza = onUnifiedNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbpw
    public final void zze(zzbqf zzbqfVar) {
        this.zza.onUnifiedNativeAdLoaded(new zzbqg(zzbqfVar));
    }
}
