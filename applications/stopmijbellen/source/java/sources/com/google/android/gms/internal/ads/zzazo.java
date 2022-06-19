package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.appopen.AppOpenAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazo.class */
public final class zzazo extends zzazv {
    private final AppOpenAd.AppOpenAdLoadCallback zza;
    private final String zzb;

    public zzazo(AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback, String str) {
        this.zza = appOpenAdLoadCallback;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzazw
    public final void zzb(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzazw
    public final void zzc(zzbew zzbewVar) {
        if (this.zza != null) {
            this.zza.onAdFailedToLoad(zzbewVar.zzb());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzazw
    public final void zzd(zzazt zzaztVar) {
        if (this.zza != null) {
            this.zza.onAdLoaded(new zzazp(zzaztVar, this.zzb));
        }
    }
}
