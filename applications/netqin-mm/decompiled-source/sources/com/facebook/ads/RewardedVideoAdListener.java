package com.facebook.ads;

import androidx.annotation.Keep;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/RewardedVideoAdListener.class */
public interface RewardedVideoAdListener extends AdListener {
    @Override // com.facebook.ads.AdListener
    void onLoggingImpression(AbstractC7079Ad ad);

    void onRewardedVideoClosed();

    void onRewardedVideoCompleted();
}
