package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcax.class */
public final class zzcax extends zzbpl {
    public final /* synthetic */ zzcba zza;

    public /* synthetic */ zzcax(zzcba zzcbaVar, zzcaw zzcawVar) {
        this.zza = zzcbaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zze(zzbpc zzbpcVar, String str) {
        NativeCustomFormatAd.OnCustomClickListener onCustomClickListener;
        NativeCustomFormatAd.OnCustomClickListener onCustomClickListener2;
        NativeCustomFormatAd zzf;
        onCustomClickListener = this.zza.zzb;
        if (onCustomClickListener == null) {
            return;
        }
        onCustomClickListener2 = this.zza.zzb;
        zzf = this.zza.zzf(zzbpcVar);
        onCustomClickListener2.onCustomClick(zzf, str);
    }
}
