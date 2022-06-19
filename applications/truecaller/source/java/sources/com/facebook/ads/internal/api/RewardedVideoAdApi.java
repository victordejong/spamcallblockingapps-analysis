package com.facebook.ads.internal.api;

import androidx.annotation.Keep;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.FullScreenAd;
import com.facebook.ads.RewardedVideoAd;
@Keep
/* loaded from: classes2-dex2jar.jar:com/facebook/ads/internal/api/RewardedVideoAdApi.class */
public interface RewardedVideoAdApi extends FullScreenAd {
    @Override // com.facebook.ads.FullScreenAd
    RewardedVideoAd.RewardedVideoAdLoadConfigBuilder buildLoadAdConfig();

    @Override // com.facebook.ads.FullScreenAd
    RewardedVideoAd.RewardedVideoAdShowConfigBuilder buildShowAdConfig();

    @Override // com.facebook.ads.AbstractC0929Ad
    void destroy();

    @Override // com.facebook.ads.AbstractC0929Ad
    String getPlacementId();

    int getVideoDuration();

    boolean isAdLoaded();

    @Override // com.facebook.ads.AbstractC0929Ad
    void loadAd();

    void loadAd(RewardedVideoAd.RewardedVideoLoadAdConfig rewardedVideoLoadAdConfig);

    void registerAdCompanionView(AdCompanionView adCompanionView);

    @Override // com.facebook.ads.AbstractC0929Ad
    @Deprecated
    void setExtraHints(ExtraHints extraHints);

    @Override // com.facebook.ads.FullScreenAd
    boolean show();

    boolean show(RewardedVideoAd.RewardedVideoShowAdConfig rewardedVideoShowAdConfig);

    void unregisterAdCompanionView();
}
