package com.facebook.ads.internal.api;

import androidx.annotation.Keep;
import androidx.annotation.UiThread;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.FullScreenAd;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.RewardedVideoAdListener;
@Keep
@UiThread
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/RewardedVideoAdApi.class */
public interface RewardedVideoAdApi extends FullScreenAd {
    @Override // com.facebook.ads.FullScreenAd
    RewardedVideoAd.RewardedVideoAdLoadConfigBuilder buildLoadAdConfig();

    @Override // com.facebook.ads.FullScreenAd
    RewardedVideoAd.RewardedVideoAdShowConfigBuilder buildShowAdConfig();

    @Override // com.facebook.ads.AbstractC2237Ad
    void destroy();

    @Deprecated
    void enableRVChain(boolean z);

    @Override // com.facebook.ads.AbstractC2237Ad
    String getPlacementId();

    int getVideoDuration();

    @Override // com.facebook.ads.AbstractC2237Ad
    boolean isAdInvalidated();

    boolean isAdLoaded();

    @Override // com.facebook.ads.AbstractC2237Ad
    void loadAd();

    void loadAd(RewardedVideoAd.RewardedVideoLoadAdConfig rewardedVideoLoadAdConfig);

    @Deprecated
    void loadAd(boolean z);

    @Override // com.facebook.ads.AbstractC2237Ad
    @Deprecated
    void loadAdFromBid(String str);

    @Deprecated
    void loadAdFromBid(String str, boolean z);

    @Deprecated
    void setAdListener(RewardedVideoAdListener rewardedVideoAdListener);

    @Override // com.facebook.ads.AbstractC2237Ad
    void setExtraHints(ExtraHints extraHints);

    @Deprecated
    void setRewardData(RewardData rewardData);

    @Override // com.facebook.ads.FullScreenAd
    boolean show();

    @Deprecated
    boolean show(int i);

    boolean show(RewardedVideoAd.RewardedVideoShowAdConfig rewardedVideoShowAdConfig);
}
