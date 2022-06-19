package com.facebook.ads;

import android.content.Context;
import com.facebook.ads.AbstractC0845Ad;
import com.facebook.ads.FullScreenAd;
import com.facebook.ads.internal.api.RewardedVideoAdApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
/* loaded from: classes-dex2jar.jar:com/facebook/ads/RewardedVideoAd.class */
public class RewardedVideoAd implements FullScreenAd {
    public static final int UNSET_VIDEO_DURATION = -1;
    private final RewardedVideoAdApi mRewardedVideoAdApi;

    /* loaded from: classes-dex2jar.jar:com/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder.class */
    public interface RewardedVideoAdLoadConfigBuilder extends AbstractC0845Ad.LoadConfigBuilder {
        @Override // com.facebook.ads.AbstractC0845Ad.LoadConfigBuilder
        RewardedVideoLoadAdConfig build();

        RewardedVideoAdLoadConfigBuilder withAdExperience(AdExperienceType adExperienceType);

        RewardedVideoAdLoadConfigBuilder withAdListener(RewardedVideoAdListener rewardedVideoAdListener);

        @Override // com.facebook.ads.AbstractC0845Ad.LoadConfigBuilder
        RewardedVideoAdLoadConfigBuilder withBid(String str);

        RewardedVideoAdLoadConfigBuilder withFailOnCacheFailureEnabled(boolean z);

        RewardedVideoAdLoadConfigBuilder withRewardData(RewardData rewardData);
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder.class */
    public interface RewardedVideoAdShowConfigBuilder extends FullScreenAd.ShowConfigBuilder {
        @Override // com.facebook.ads.FullScreenAd.ShowConfigBuilder
        RewardedVideoShowAdConfig build();

        RewardedVideoAdShowConfigBuilder withAppOrientation(int i);
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig.class */
    public interface RewardedVideoLoadAdConfig extends AbstractC0845Ad.LoadAdConfig {
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig.class */
    public interface RewardedVideoShowAdConfig extends FullScreenAd.ShowAdConfig {
    }

    public RewardedVideoAd(Context context, String str) {
        this.mRewardedVideoAdApi = DynamicLoaderFactory.makeLoader(context).createRewardedVideoAd(context, str, this);
    }

    @Override // com.facebook.ads.FullScreenAd
    public RewardedVideoAdLoadConfigBuilder buildLoadAdConfig() {
        return this.mRewardedVideoAdApi.buildLoadAdConfig();
    }

    @Override // com.facebook.ads.FullScreenAd
    public RewardedVideoAdShowConfigBuilder buildShowAdConfig() {
        return this.mRewardedVideoAdApi.buildShowAdConfig();
    }

    @Override // com.facebook.ads.AbstractC0845Ad
    public void destroy() {
        this.mRewardedVideoAdApi.destroy();
    }

    @Override // com.facebook.ads.AbstractC0845Ad
    public String getPlacementId() {
        return this.mRewardedVideoAdApi.getPlacementId();
    }

    public int getVideoDuration() {
        return this.mRewardedVideoAdApi.getVideoDuration();
    }

    @Override // com.facebook.ads.AbstractC0845Ad
    public boolean isAdInvalidated() {
        return this.mRewardedVideoAdApi.isAdInvalidated();
    }

    public boolean isAdLoaded() {
        return this.mRewardedVideoAdApi.isAdLoaded();
    }

    @Override // com.facebook.ads.AbstractC0845Ad
    public void loadAd() {
        this.mRewardedVideoAdApi.loadAd();
    }

    public void loadAd(RewardedVideoLoadAdConfig rewardedVideoLoadAdConfig) {
        this.mRewardedVideoAdApi.loadAd(rewardedVideoLoadAdConfig);
    }

    @Override // com.facebook.ads.AbstractC0845Ad
    @Deprecated
    public void setExtraHints(ExtraHints extraHints) {
        this.mRewardedVideoAdApi.setExtraHints(extraHints);
    }

    @Override // com.facebook.ads.FullScreenAd
    public boolean show() {
        return this.mRewardedVideoAdApi.show();
    }

    public boolean show(RewardedVideoShowAdConfig rewardedVideoShowAdConfig) {
        return this.mRewardedVideoAdApi.show(rewardedVideoShowAdConfig);
    }
}
