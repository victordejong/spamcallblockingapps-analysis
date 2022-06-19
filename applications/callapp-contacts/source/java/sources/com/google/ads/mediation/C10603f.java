package com.google.ads.mediation;

import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
/* renamed from: com.google.ads.mediation.f */
/* loaded from: classes3-dex2jar.jar:com/google/ads/mediation/f.class */
public final class C10603f implements RewardedVideoAdListener {

    /* renamed from: a */
    private final /* synthetic */ AbstractAdViewAdapter f34368a;

    public C10603f(AbstractAdViewAdapter abstractAdViewAdapter) {
        this.f34368a = abstractAdViewAdapter;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewarded(RewardItem rewardItem) {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f34368a.zzmt;
        mediationRewardedVideoAdListener.onRewarded(this.f34368a, rewardItem);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdClosed() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f34368a.zzmt;
        mediationRewardedVideoAdListener.onAdClosed(this.f34368a);
        this.f34368a.zzms = null;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdFailedToLoad(int i) {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f34368a.zzmt;
        mediationRewardedVideoAdListener.onAdFailedToLoad(this.f34368a, i);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdLeftApplication() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f34368a.zzmt;
        mediationRewardedVideoAdListener.onAdLeftApplication(this.f34368a);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdLoaded() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f34368a.zzmt;
        mediationRewardedVideoAdListener.onAdLoaded(this.f34368a);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoAdOpened() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f34368a.zzmt;
        mediationRewardedVideoAdListener.onAdOpened(this.f34368a);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoCompleted() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f34368a.zzmt;
        mediationRewardedVideoAdListener.onVideoCompleted(this.f34368a);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
    public final void onRewardedVideoStarted() {
        MediationRewardedVideoAdListener mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener = this.f34368a.zzmt;
        mediationRewardedVideoAdListener.onVideoStarted(this.f34368a);
    }
}
