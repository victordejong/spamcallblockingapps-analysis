package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzboj.class */
public final class zzboj extends zzbnk {
    public final /* synthetic */ zzbol zza;

    public /* synthetic */ zzboj(zzbol zzbolVar, zzboi zzboiVar) {
        this.zza = zzbolVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnl
    public final void zze(zzbnb zzbnbVar, String str) {
        NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener;
        NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener2;
        NativeCustomTemplateAd zzf;
        onCustomClickListener = this.zza.zzb;
        if (onCustomClickListener == null) {
            return;
        }
        onCustomClickListener2 = this.zza.zzb;
        zzf = this.zza.zzf(zzbnbVar);
        onCustomClickListener2.onCustomClick(zzf, str);
    }
}
