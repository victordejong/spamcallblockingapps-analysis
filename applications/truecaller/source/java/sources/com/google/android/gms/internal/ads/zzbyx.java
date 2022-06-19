package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyx.class */
public final class zzbyx extends zzbnn {
    public final /* synthetic */ zzbyy zza;

    public /* synthetic */ zzbyx(zzbyy zzbyyVar, zzbyv zzbyvVar) {
        this.zza = zzbyyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbno
    public final void zze(zzbnb zzbnbVar) {
        NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener;
        NativeCustomFormatAd zzf;
        onCustomFormatAdLoadedListener = this.zza.zza;
        zzf = this.zza.zzf(zzbnbVar);
        onCustomFormatAdLoadedListener.onCustomFormatAdLoaded(zzf);
    }
}
