package com.facebook.ads.internal.api;

import androidx.annotation.Keep;
import androidx.annotation.UiThread;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.FullScreenAd;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import com.facebook.ads.RewardedAdListener;
import java.util.EnumSet;
@Keep
@UiThread
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/api/InterstitialAdApi.class */
public interface InterstitialAdApi extends FullScreenAd {
    @Override // com.facebook.ads.FullScreenAd
    InterstitialAd.InterstitialAdLoadConfigBuilder buildLoadAdConfig();

    @Override // com.facebook.ads.FullScreenAd
    InterstitialAd.InterstitialAdShowConfigBuilder buildShowAdConfig();

    boolean isAdLoaded();

    void loadAd(InterstitialAd.InterstitialLoadAdConfig interstitialLoadAdConfig);

    @Deprecated
    void loadAd(EnumSet<CacheFlag> enumSet);

    @Deprecated
    void loadAdFromBid(EnumSet<CacheFlag> enumSet, String str);

    @Deprecated
    void setAdListener(InterstitialAdListener interstitialAdListener);

    @Override // com.facebook.ads.AbstractC2237Ad
    void setExtraHints(ExtraHints extraHints);

    @Deprecated
    void setRewardedAdListener(RewardedAdListener rewardedAdListener);

    @Override // com.facebook.ads.FullScreenAd
    boolean show();

    boolean show(InterstitialAd.InterstitialShowAdConfig interstitialShowAdConfig);
}
