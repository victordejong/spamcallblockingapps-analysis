package com.facebook.ads;
/* loaded from: classes3-dex2jar.jar:com/facebook/ads/RewardedVideoAdListener.class */
public interface RewardedVideoAdListener extends AdListener {
    @Override // com.facebook.ads.AdListener
    void onLoggingImpression(Ad ad);

    void onRewardedVideoClosed();

    void onRewardedVideoCompleted();
}
