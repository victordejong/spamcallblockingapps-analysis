package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.rewarded.RewardItem;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/mediation/MediationRewardedAdCallback.class */
public interface MediationRewardedAdCallback extends MediationAdCallback {
    void onAdFailedToShow(AdError adError);

    @Deprecated
    void onAdFailedToShow(String str);

    void onUserEarnedReward(RewardItem rewardItem);

    void onVideoComplete();

    void onVideoStart();
}
