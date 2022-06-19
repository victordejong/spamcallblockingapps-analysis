package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbc.class */
public final class zzcbc extends zzbpv {
    private final NativeAd.OnNativeAdLoadedListener zza;

    public zzcbc(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
        this.zza = onNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbpw
    public final void zze(zzbqf zzbqfVar) {
        this.zza.onNativeAdLoaded(new zzcav(zzbqfVar));
    }
}
