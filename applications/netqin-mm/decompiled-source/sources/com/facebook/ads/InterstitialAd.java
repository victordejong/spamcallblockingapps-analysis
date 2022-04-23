package com.facebook.ads;

import android.content.Context;
import androidx.annotation.Keep;
import com.facebook.ads.internal.api.InterstitialAdApi;
import com.facebook.ads.internal.bench.Benchmark;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import java.util.EnumSet;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/InterstitialAd.class */
public class InterstitialAd implements AbstractC7079Ad {
    public final InterstitialAdApi mInterstitialAdApi;

    @Benchmark
    public InterstitialAd(Context context, String str) {
        this.mInterstitialAdApi = DynamicLoaderFactory.makeLoader(context).createInterstitialAd(context, str, this);
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public void destroy() {
        this.mInterstitialAdApi.destroy();
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public String getPlacementId() {
        return this.mInterstitialAdApi.getPlacementId();
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public boolean isAdInvalidated() {
        return this.mInterstitialAdApi.isAdInvalidated();
    }

    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    public boolean isAdLoaded() {
        return this.mInterstitialAdApi.isAdLoaded();
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public void loadAd() {
        this.mInterstitialAdApi.loadAd();
    }

    @Benchmark
    public void loadAd(EnumSet<CacheFlag> enumSet) {
        this.mInterstitialAdApi.loadAd(enumSet);
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public void loadAdFromBid(String str) {
        this.mInterstitialAdApi.loadAdFromBid(str);
    }

    @Benchmark
    public void loadAdFromBid(EnumSet<CacheFlag> enumSet, String str) {
        this.mInterstitialAdApi.loadAdFromBid(enumSet, str);
    }

    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    public void setAdListener(InterstitialAdListener interstitialAdListener) {
        this.mInterstitialAdApi.setAdListener(interstitialAdListener);
    }

    @Override // com.facebook.ads.AbstractC7079Ad
    public void setExtraHints(ExtraHints extraHints) {
        this.mInterstitialAdApi.setExtraHints(extraHints);
    }

    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    public void setRewardedAdListener(RewardedAdListener rewardedAdListener) {
        this.mInterstitialAdApi.setRewardedAdListener(rewardedAdListener);
    }

    @Benchmark
    public boolean show() {
        return this.mInterstitialAdApi.show();
    }
}
