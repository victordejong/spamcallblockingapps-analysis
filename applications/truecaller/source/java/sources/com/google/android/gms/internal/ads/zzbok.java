package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbok.class */
public final class zzbok extends zzbnn {
    public final /* synthetic */ zzbol zza;

    public /* synthetic */ zzbok(zzbol zzbolVar, zzboi zzboiVar) {
        this.zza = zzbolVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbno
    public final void zze(zzbnb zzbnbVar) {
        NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener;
        NativeCustomTemplateAd zzf;
        onCustomTemplateAdLoadedListener = this.zza.zza;
        zzf = this.zza.zzf(zzbnbVar);
        onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded(zzf);
    }
}
