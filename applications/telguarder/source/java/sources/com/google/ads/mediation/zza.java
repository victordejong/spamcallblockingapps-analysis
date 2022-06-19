package com.google.ads.mediation;

import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/zza.class */
public final class zza implements RewardedVideoAdListener {
    private final /* synthetic */ AbstractAdViewAdapter zzmi;

    public zza(AbstractAdViewAdapter abstractAdViewAdapter) {
        this.zzmi = abstractAdViewAdapter;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewarded(RewardItem rewardItem) {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.zzmi.zzmo;
        mediationRewardedVideoAdListener.onRewarded(this.zzmi, rewardItem);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdClosed() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.zzmi.zzmo;
        mediationRewardedVideoAdListener.onAdClosed(this.zzmi);
        this.zzmi.zzmn = null;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdFailedToLoad(int i) {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.zzmi.zzmo;
        mediationRewardedVideoAdListener.onAdFailedToLoad(this.zzmi, i);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdLeftApplication() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.zzmi.zzmo;
        mediationRewardedVideoAdListener.onAdLeftApplication(this.zzmi);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdLoaded() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.zzmi.zzmo;
        mediationRewardedVideoAdListener.onAdLoaded(this.zzmi);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdOpened() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.zzmi.zzmo;
        mediationRewardedVideoAdListener.onAdOpened(this.zzmi);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoCompleted() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.zzmi.zzmo;
        mediationRewardedVideoAdListener.onVideoCompleted(this.zzmi);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoStarted() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.zzmi.zzmo;
        mediationRewardedVideoAdListener.onVideoStarted(this.zzmi);
    }
}
