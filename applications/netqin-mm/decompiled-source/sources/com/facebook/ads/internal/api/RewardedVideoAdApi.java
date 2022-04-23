package com.facebook.ads.internal.api;

import androidx.annotation.Keep;
import com.facebook.ads.AbstractC7079Ad;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedVideoAdListener;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/RewardedVideoAdApi.class */
public interface RewardedVideoAdApi extends AbstractC7079Ad {
    @Override // com.facebook.ads.AbstractC7079Ad
    void destroy();

    void enableRVChain(boolean z);

    @Override // com.facebook.ads.AbstractC7079Ad
    String getPlacementId();

    int getVideoDuration();

    @Override // com.facebook.ads.AbstractC7079Ad
    boolean isAdInvalidated();

    boolean isAdLoaded();

    @Override // com.facebook.ads.AbstractC7079Ad
    void loadAd();

    void loadAd(boolean z);

    @Override // com.facebook.ads.AbstractC7079Ad
    void loadAdFromBid(String str);

    void loadAdFromBid(String str, boolean z);

    void setAdListener(RewardedVideoAdListener rewardedVideoAdListener);

    @Override // com.facebook.ads.AbstractC7079Ad
    void setExtraHints(ExtraHints extraHints);

    void setRewardData(RewardData rewardData);

    boolean show();

    boolean show(int i);
}
