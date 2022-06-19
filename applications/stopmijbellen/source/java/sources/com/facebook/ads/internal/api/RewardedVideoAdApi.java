package com.facebook.ads.internal.api;

import androidx.annotation.Keep;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.FullScreenAd;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.proguard.annotations.DoNotStripAny;
@Keep
@DoNotStripAny
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/RewardedVideoAdApi.class */
public interface RewardedVideoAdApi extends FullScreenAd {
    @Override // com.facebook.ads.FullScreenAd
    RewardedVideoAd.RewardedVideoAdLoadConfigBuilder buildLoadAdConfig();

    @Override // com.facebook.ads.FullScreenAd
    RewardedVideoAd.RewardedVideoAdShowConfigBuilder buildShowAdConfig();

    @Override // com.facebook.ads.AbstractC1609Ad
    void destroy();

    @Override // com.facebook.ads.AbstractC1609Ad
    String getPlacementId();

    int getVideoDuration();

    boolean isAdLoaded();

    @Override // com.facebook.ads.AbstractC1609Ad
    void loadAd();

    void loadAd(RewardedVideoAd.RewardedVideoLoadAdConfig rewardedVideoLoadAdConfig);

    void registerAdCompanionView(AdCompanionView adCompanionView);

    @Override // com.facebook.ads.AbstractC1609Ad
    @Deprecated
    void setExtraHints(ExtraHints extraHints);

    @Override // com.facebook.ads.FullScreenAd
    boolean show();

    boolean show(RewardedVideoAd.RewardedVideoShowAdConfig rewardedVideoShowAdConfig);

    void unregisterAdCompanionView();
}
