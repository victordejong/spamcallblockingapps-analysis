package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.appopen.AppOpenAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxr.class */
public final class zzaxr extends zzaxy {
    private final AppOpenAd.AppOpenAdLoadCallback zza;
    private final String zzb;

    public zzaxr(AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback, String str) {
        this.zza = appOpenAdLoadCallback;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzaxz
    public final void zzb(zzaxw zzaxwVar) {
        if (this.zza != null) {
            this.zza.onAdLoaded(new zzaxs(zzaxwVar, this.zzb));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxz
    public final void zzc(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzaxz
    public final void zzd(zzbcz zzbczVar) {
        if (this.zza != null) {
            this.zza.onAdFailedToLoad(zzbczVar.zzb());
        }
    }
}
