package com.facebook.ads.internal.api;

import com.facebook.ads.ExtraHints;
import com.facebook.ads.FullScreenAd;
import com.facebook.ads.RewardedVideoAd;
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/RewardedVideoAdApi.class */
public interface RewardedVideoAdApi extends FullScreenAd {
    @Override // com.facebook.ads.FullScreenAd
    RewardedVideoAd.RewardedVideoAdLoadConfigBuilder buildLoadAdConfig();

    @Override // com.facebook.ads.FullScreenAd
    RewardedVideoAd.RewardedVideoAdShowConfigBuilder buildShowAdConfig();

    @Override // com.facebook.ads.AbstractC0845Ad
    void destroy();

    @Override // com.facebook.ads.AbstractC0845Ad
    String getPlacementId();

    int getVideoDuration();

    boolean isAdLoaded();

    @Override // com.facebook.ads.AbstractC0845Ad
    void loadAd();

    void loadAd(RewardedVideoAd.RewardedVideoLoadAdConfig rewardedVideoLoadAdConfig);

    @Override // com.facebook.ads.AbstractC0845Ad
    @Deprecated
    void setExtraHints(ExtraHints extraHints);

    @Override // com.facebook.ads.FullScreenAd
    boolean show();

    boolean show(RewardedVideoAd.RewardedVideoShowAdConfig rewardedVideoShowAdConfig);
}
