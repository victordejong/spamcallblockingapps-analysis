package com.facebook.ads;

import androidx.annotation.Keep;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/RewardedInterstitialAdListener.class */
public interface RewardedInterstitialAdListener extends AdListener {
    void onRewardedInterstitialClosed();

    void onRewardedInterstitialCompleted();
}
