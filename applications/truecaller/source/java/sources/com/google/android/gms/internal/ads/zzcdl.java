package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAdLoadCallback;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcdl.class */
public final class zzcdl extends zzccy {
    private final RewardedInterstitialAdLoadCallback zza;
    private final zzcdm zzb;

    public zzcdl(RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback, zzcdm zzcdmVar) {
        this.zza = rewardedInterstitialAdLoadCallback;
        this.zzb = zzcdmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzccz
    public final void zze() {
        zzcdm zzcdmVar;
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.zza;
        if (rewardedInterstitialAdLoadCallback == null || (zzcdmVar = this.zzb) == null) {
            return;
        }
        rewardedInterstitialAdLoadCallback.onAdLoaded(zzcdmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzccz
    public final void zzf(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzccz
    public final void zzg(zzbcz zzbczVar) {
        RewardedInterstitialAdLoadCallback rewardedInterstitialAdLoadCallback = this.zza;
        if (rewardedInterstitialAdLoadCallback != null) {
            rewardedInterstitialAdLoadCallback.onAdFailedToLoad(zzbczVar.zzb());
        }
    }
}
