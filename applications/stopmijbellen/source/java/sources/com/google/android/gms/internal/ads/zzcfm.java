package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfm.class */
public final class zzcfm extends zzcff {
    private final RewardedAdLoadCallback zza;
    private final RewardedAd zzb;

    public zzcfm(RewardedAdLoadCallback rewardedAdLoadCallback, RewardedAd rewardedAd) {
        this.zza = rewardedAdLoadCallback;
        this.zzb = rewardedAd;
    }

    @Override // com.google.android.gms.internal.ads.zzcfg
    public final void zze(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcfg
    public final void zzf(zzbew zzbewVar) {
        if (this.zza != null) {
            this.zza.onAdFailedToLoad(zzbewVar.zzb());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfg
    public final void zzg() {
        RewardedAdLoadCallback rewardedAdLoadCallback = this.zza;
        if (rewardedAdLoadCallback != null) {
            rewardedAdLoadCallback.onAdLoaded(this.zzb);
        }
    }
}
