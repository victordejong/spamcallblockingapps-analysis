package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzard.class */
public final class zzard extends zzagj {
    private final NativeAd.OnNativeAdLoadedListener zzdqw;

    public zzard(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
        this.zzdqw = onNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final void zza(zzagr zzagrVar) {
        this.zzdqw.onNativeAdLoaded(new zzaqx(zzagrVar));
    }
}
