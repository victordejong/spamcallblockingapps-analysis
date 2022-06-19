package com.facebook.ads;

import android.content.Context;
import com.facebook.ads.AbstractC9941Ad;
import com.facebook.ads.FullScreenAd;
import com.facebook.ads.internal.api.InterstitialAdApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import java.util.EnumSet;
/* loaded from: classes3-dex2jar.jar:com/facebook/ads/InterstitialAd.class */
public class InterstitialAd implements FullScreenAd {
    private final InterstitialAdApi mInterstitialAdApi;

    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder.class */
    public interface InterstitialAdLoadConfigBuilder extends AbstractC9941Ad.LoadConfigBuilder {
        @Override // com.facebook.ads.AbstractC9941Ad.LoadConfigBuilder
        InterstitialLoadAdConfig build();

        InterstitialAdLoadConfigBuilder withAdListener(InterstitialAdListener interstitialAdListener);

        @Override // com.facebook.ads.AbstractC9941Ad.LoadConfigBuilder
        InterstitialAdLoadConfigBuilder withBid(String str);

        InterstitialAdLoadConfigBuilder withCacheFlags(EnumSet<CacheFlag> enumSet);

        InterstitialAdLoadConfigBuilder withRewardData(RewardData rewardData);

        InterstitialAdLoadConfigBuilder withRewardedAdListener(RewardedAdListener rewardedAdListener);
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/InterstitialAd$InterstitialAdShowConfigBuilder.class */
    public interface InterstitialAdShowConfigBuilder extends FullScreenAd.ShowConfigBuilder {
        @Override // com.facebook.ads.FullScreenAd.ShowConfigBuilder
        InterstitialShowAdConfig build();
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/InterstitialAd$InterstitialLoadAdConfig.class */
    public interface InterstitialLoadAdConfig extends AbstractC9941Ad.LoadAdConfig {
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/InterstitialAd$InterstitialShowAdConfig.class */
    public interface InterstitialShowAdConfig extends FullScreenAd.ShowAdConfig {
    }

    public InterstitialAd(Context context, String str) {
        this.mInterstitialAdApi = DynamicLoaderFactory.makeLoader(context).createInterstitialAd(context, str, this);
    }

    @Override // com.facebook.ads.FullScreenAd
    public InterstitialAdLoadConfigBuilder buildLoadAdConfig() {
        return this.mInterstitialAdApi.buildLoadAdConfig();
    }

    @Override // com.facebook.ads.FullScreenAd
    public InterstitialAdShowConfigBuilder buildShowAdConfig() {
        return this.mInterstitialAdApi.buildShowAdConfig();
    }

    @Override // com.facebook.ads.AbstractC9941Ad
    public void destroy() {
        this.mInterstitialAdApi.destroy();
    }

    @Override // com.facebook.ads.AbstractC9941Ad
    public String getPlacementId() {
        return this.mInterstitialAdApi.getPlacementId();
    }

    @Override // com.facebook.ads.AbstractC9941Ad
    public boolean isAdInvalidated() {
        return this.mInterstitialAdApi.isAdInvalidated();
    }

    public boolean isAdLoaded() {
        return this.mInterstitialAdApi.isAdLoaded();
    }

    @Override // com.facebook.ads.AbstractC9941Ad
    public void loadAd() {
        this.mInterstitialAdApi.loadAd();
    }

    public void loadAd(InterstitialLoadAdConfig interstitialLoadAdConfig) {
        this.mInterstitialAdApi.loadAd(interstitialLoadAdConfig);
    }

    @Override // com.facebook.ads.AbstractC9941Ad
    @Deprecated
    public void setExtraHints(ExtraHints extraHints) {
        this.mInterstitialAdApi.setExtraHints(extraHints);
    }

    @Override // com.facebook.ads.FullScreenAd
    public boolean show() {
        return this.mInterstitialAdApi.show();
    }

    public boolean show(InterstitialShowAdConfig interstitialShowAdConfig) {
        return this.mInterstitialAdApi.show(interstitialShowAdConfig);
    }
}
