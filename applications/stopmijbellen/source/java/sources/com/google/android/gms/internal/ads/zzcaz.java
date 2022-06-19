package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcaz.class */
public final class zzcaz extends zzbpo {
    public final /* synthetic */ zzcba zza;

    public /* synthetic */ zzcaz(zzcba zzcbaVar, zzcay zzcayVar) {
        this.zza = zzcbaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpp
    public final void zze(zzbpc zzbpcVar) {
        NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener;
        NativeCustomFormatAd zzf;
        onCustomFormatAdLoadedListener = this.zza.zza;
        zzf = this.zza.zzf(zzbpcVar);
        onCustomFormatAdLoadedListener.onCustomFormatAdLoaded(zzf);
    }
}
