package com.facebook.ads;

import androidx.annotation.Keep;
@Keep
/* loaded from: classes2-dex2jar.jar:com/facebook/ads/RewardedAdListener.class */
public interface RewardedAdListener {
    void onRewardedAdCompleted();

    void onRewardedAdServerFailed();

    void onRewardedAdServerSucceeded();
}
