package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqm.class */
public final class zzbqm extends zzbpo {
    public final /* synthetic */ zzbqn zza;

    public /* synthetic */ zzbqm(zzbqn zzbqnVar, zzbql zzbqlVar) {
        this.zza = zzbqnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpp
    public final void zze(zzbpc zzbpcVar) {
        NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener;
        NativeCustomTemplateAd zzf;
        onCustomTemplateAdLoadedListener = this.zza.zza;
        zzf = this.zza.zzf(zzbpcVar);
        onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded(zzf);
    }
}
