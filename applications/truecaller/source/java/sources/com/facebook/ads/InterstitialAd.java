package com.facebook.ads;

import android.content.Context;
import androidx.annotation.Keep;
import com.facebook.ads.AbstractC0929Ad;
import com.facebook.ads.FullScreenAd;
import com.facebook.ads.internal.api.AdCompanionView;
import com.facebook.ads.internal.api.InterstitialAdApi;
import com.facebook.ads.internal.bench.Benchmark;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.util.common.Preconditions;
import java.util.EnumSet;
@Keep
/* loaded from: classes2-dex2jar.jar:com/facebook/ads/InterstitialAd.class */
public class InterstitialAd implements FullScreenAd {
    private final InterstitialAdApi mInterstitialAdApi;

    @Keep
    /* loaded from: classes2-dex2jar.jar:com/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder.class */
    public interface InterstitialAdLoadConfigBuilder extends AbstractC0929Ad.LoadConfigBuilder {
        @Override // com.facebook.ads.AbstractC0929Ad.LoadConfigBuilder
        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        InterstitialLoadAdConfig build();

        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        InterstitialAdLoadConfigBuilder withAdCompanionView(boolean z);

        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        InterstitialAdLoadConfigBuilder withAdListener(InterstitialAdListener interstitialAdListener);

        @Override // com.facebook.ads.AbstractC0929Ad.LoadConfigBuilder
        InterstitialAdLoadConfigBuilder withBid(String str);

        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        InterstitialAdLoadConfigBuilder withCacheFlags(EnumSet<CacheFlag> enumSet);

        InterstitialAdLoadConfigBuilder withRewardData(RewardData rewardData);

        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        InterstitialAdLoadConfigBuilder withRewardedAdListener(RewardedAdListener rewardedAdListener);
    }

    @Keep
    /* loaded from: classes2-dex2jar.jar:com/facebook/ads/InterstitialAd$InterstitialAdShowConfigBuilder.class */
    public interface InterstitialAdShowConfigBuilder extends FullScreenAd.ShowConfigBuilder {
        @Override // com.facebook.ads.FullScreenAd.ShowConfigBuilder
        @Benchmark(failAtMillis = 5, warnAtMillis = 1)
        InterstitialShowAdConfig build();
    }

    @Keep
    /* loaded from: classes2-dex2jar.jar:com/facebook/ads/InterstitialAd$InterstitialLoadAdConfig.class */
    public interface InterstitialLoadAdConfig extends AbstractC0929Ad.LoadAdConfig {
    }

    @Keep
    /* loaded from: classes2-dex2jar.jar:com/facebook/ads/InterstitialAd$InterstitialShowAdConfig.class */
    public interface InterstitialShowAdConfig extends FullScreenAd.ShowAdConfig {
    }

    @Benchmark
    public InterstitialAd(Context context, String str) {
        this.mInterstitialAdApi = DynamicLoaderFactory.makeLoader(context).createInterstitialAd(context, str, this);
    }

    @Override // com.facebook.ads.FullScreenAd
    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    public InterstitialAdLoadConfigBuilder buildLoadAdConfig() {
        return this.mInterstitialAdApi.buildLoadAdConfig();
    }

    @Override // com.facebook.ads.FullScreenAd
    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    public InterstitialAdShowConfigBuilder buildShowAdConfig() {
        return this.mInterstitialAdApi.buildShowAdConfig();
    }

    @Override // com.facebook.ads.AbstractC0929Ad
    public void destroy() {
        this.mInterstitialAdApi.destroy();
    }

    @Override // com.facebook.ads.AbstractC0929Ad
    public String getPlacementId() {
        return this.mInterstitialAdApi.getPlacementId();
    }

    @Override // com.facebook.ads.AbstractC0929Ad
    public boolean isAdInvalidated() {
        return this.mInterstitialAdApi.isAdInvalidated();
    }

    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    public boolean isAdLoaded() {
        return this.mInterstitialAdApi.isAdLoaded();
    }

    @Override // com.facebook.ads.AbstractC0929Ad
    public void loadAd() {
        this.mInterstitialAdApi.loadAd();
    }

    public void loadAd(InterstitialLoadAdConfig interstitialLoadAdConfig) {
        this.mInterstitialAdApi.loadAd(interstitialLoadAdConfig);
    }

    public void registerAdCompanionView(AdCompanionView adCompanionView) {
        Preconditions.checkIsOnMainThread();
        this.mInterstitialAdApi.registerAdCompanionView(adCompanionView);
    }

    @Override // com.facebook.ads.AbstractC0929Ad
    @Deprecated
    public void setExtraHints(ExtraHints extraHints) {
        this.mInterstitialAdApi.setExtraHints(extraHints);
    }

    @Override // com.facebook.ads.FullScreenAd
    @Benchmark
    public boolean show() {
        return this.mInterstitialAdApi.show();
    }

    @Benchmark
    public boolean show(InterstitialShowAdConfig interstitialShowAdConfig) {
        return this.mInterstitialAdApi.show(interstitialShowAdConfig);
    }

    public void unregisterAdCompanionView() {
        Preconditions.checkIsOnMainThread();
        this.mInterstitialAdApi.unregisterAdCompanionView();
    }
}
