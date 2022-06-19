package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfs.class */
public final class zzcfs extends zzcff {
    private final RewardedInterstitialAdLoadCallback zza;
    private final zzcft zzb;

    public zzcfs(RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback, zzcft zzcftVar) {
        this.zza = rewardedInterstitialAdLoadCallback;
        this.zzb = zzcftVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcfg
    public final void zze(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcfg
    public final void zzf(zzbew zzbewVar) {
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.zza;
        if (rewardedInterstitialAdLoadCallback != null) {
            rewardedInterstitialAdLoadCallback.onAdFailedToLoad(zzbewVar.zzb());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcfg
    public final void zzg() {
        zzcft zzcftVar;
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.zza;
        if (rewardedInterstitialAdLoadCallback == null || (zzcftVar = this.zzb) == null) {
            return;
        }
        rewardedInterstitialAdLoadCallback.onAdLoaded(zzcftVar);
    }
}
