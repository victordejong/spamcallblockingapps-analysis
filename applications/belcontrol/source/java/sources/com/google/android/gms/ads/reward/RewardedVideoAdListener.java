package com.google.android.gms.ads.reward;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/reward/RewardedVideoAdListener.class */
public interface RewardedVideoAdListener {
    void onRewarded(RewardItem rewardItem);

    void onRewardedVideoAdClosed();

    void onRewardedVideoAdFailedToLoad(int i);

    void onRewardedVideoAdLeftApplication();

    void onRewardedVideoAdLoaded();

    void onRewardedVideoAdOpened();

    void onRewardedVideoCompleted();

    void onRewardedVideoStarted();
}
