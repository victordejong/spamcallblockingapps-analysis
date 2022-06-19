package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyw.class */
public final class zzbyw extends zzbnk {
    public final /* synthetic */ zzbyy zza;

    public /* synthetic */ zzbyw(zzbyy zzbyyVar, zzbyv zzbyvVar) {
        this.zza = zzbyyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void zze(zzbnb zzbnbVar, String str) {
        NativeCustomFormatAd.OnCustomClickListener onCustomClickListener;
        NativeCustomFormatAd.OnCustomClickListener onCustomClickListener2;
        NativeCustomFormatAd zzf;
        onCustomClickListener = this.zza.zzb;
        if (onCustomClickListener == null) {
            return;
        }
        onCustomClickListener2 = this.zza.zzb;
        zzf = this.zza.zzf(zzbnbVar);
        onCustomClickListener2.onCustomClick(zzf, str);
    }
}
