package com.facebook.ads;
/* loaded from: classes3-dex2jar.jar:com/facebook/ads/RewardedVideoAdListener.class */
public interface RewardedVideoAdListener extends AdListener {
    @Override // com.facebook.ads.AdListener
    void onLoggingImpression(AbstractC9941Ad abstractC9941Ad);

    void onRewardedVideoClosed();

    void onRewardedVideoCompleted();
}
