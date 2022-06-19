package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqk.class */
public final class zzbqk extends zzbpl {
    public final /* synthetic */ zzbqn zza;

    public /* synthetic */ zzbqk(zzbqn zzbqnVar, zzbqj zzbqjVar) {
        this.zza = zzbqnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpm
    public final void zze(zzbpc zzbpcVar, String str) {
        NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener;
        NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener2;
        NativeCustomTemplateAd zzf;
        onCustomClickListener = this.zza.zzb;
        if (onCustomClickListener == null) {
            return;
        }
        onCustomClickListener2 = this.zza.zzb;
        zzf = this.zza.zzf(zzbpcVar);
        onCustomClickListener2.onCustomClick(zzf, str);
    }
}
