package com.facebook.ads.internal.api;

import androidx.annotation.Keep;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.FullScreenAd;
import com.facebook.ads.RewardedInterstitialAd;
import com.facebook.proguard.annotations.DoNotStripAny;
@Keep
@DoNotStripAny
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/RewardedInterstitialAdApi.class */
public interface RewardedInterstitialAdApi extends FullScreenAd {
    @Override // com.facebook.ads.FullScreenAd
    RewardedInterstitialAd.RewardedInterstitialAdLoadConfigBuilder buildLoadAdConfig();

    @Override // com.facebook.ads.FullScreenAd
    RewardedInterstitialAd.RewardedInterstitialAdShowConfigBuilder buildShowAdConfig();

    @Override // com.facebook.ads.AbstractC1609Ad
    void destroy();

    @Override // com.facebook.ads.AbstractC1609Ad
    String getPlacementId();

    int getVideoDuration();

    boolean isAdLoaded();

    @Override // com.facebook.ads.AbstractC1609Ad
    void loadAd();

    void loadAd(RewardedInterstitialAd.RewardedInterstitialLoadAdConfig rewardedInterstitialLoadAdConfig);

    void registerAdCompanionView(AdCompanionView adCompanionView);

    @Override // com.facebook.ads.AbstractC1609Ad
    @Deprecated
    void setExtraHints(ExtraHints extraHints);

    @Override // com.facebook.ads.FullScreenAd
    boolean show();

    boolean show(RewardedInterstitialAd.RewardedInterstitialShowAdConfig rewardedInterstitialShowAdConfig);

    void unregisterAdCompanionView();
}
