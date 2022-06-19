package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbza.class */
public final class zzbza extends zzbnu {
    private final NativeAd.OnNativeAdLoadedListener zza;

    public zzbza(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
        this.zza = onNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbnv
    public final void zze(zzboe zzboeVar) {
        this.zza.onNativeAdLoaded(new zzbyu(zzboeVar));
    }
}
