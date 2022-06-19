package com.google.android.gms.ads.mediation;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.MobileAds;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/Adapter.class */
public abstract class Adapter implements MediationExtrasReceiver {
    @RecentlyNonNull
    public abstract VersionInfo getSDKVersionInfo();

    @RecentlyNonNull
    public abstract VersionInfo getVersionInfo();

    public abstract void initialize(@RecentlyNonNull Context context, @RecentlyNonNull InitializationCompleteCallback initializationCompleteCallback, @RecentlyNonNull List<MediationConfiguration> list);

    public void loadBannerAd(@RecentlyNonNull MediationBannerAdConfiguration mediationBannerAdConfiguration, @RecentlyNonNull MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
        mediationAdLoadCallback.onFailure(new AdError(7, getClass().getSimpleName().concat(" does not support banner ads."), MobileAds.ERROR_DOMAIN));
    }

    public void loadInterscrollerAd(@RecentlyNonNull MediationBannerAdConfiguration mediationBannerAdConfiguration, @RecentlyNonNull MediationAdLoadCallback<MediationInterscrollerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
        mediationAdLoadCallback.onFailure(new AdError(7, getClass().getSimpleName().concat(" does not support interscroller ads."), MobileAds.ERROR_DOMAIN));
    }

    public void loadInterstitialAd(@RecentlyNonNull MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, @RecentlyNonNull MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
        mediationAdLoadCallback.onFailure(new AdError(7, getClass().getSimpleName().concat(" does not support interstitial ads."), MobileAds.ERROR_DOMAIN));
    }

    public void loadNativeAd(@RecentlyNonNull MediationNativeAdConfiguration mediationNativeAdConfiguration, @RecentlyNonNull MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback) {
        mediationAdLoadCallback.onFailure(new AdError(7, getClass().getSimpleName().concat(" does not support native ads."), MobileAds.ERROR_DOMAIN));
    }

    public void loadRewardedAd(@RecentlyNonNull MediationRewardedAdConfiguration mediationRewardedAdConfiguration, @RecentlyNonNull MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        mediationAdLoadCallback.onFailure(new AdError(7, getClass().getSimpleName().concat(" does not support rewarded ads."), MobileAds.ERROR_DOMAIN));
    }

    public void loadRewardedInterstitialAd(@RecentlyNonNull MediationRewardedAdConfiguration mediationRewardedAdConfiguration, @RecentlyNonNull MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        mediationAdLoadCallback.onFailure(new AdError(7, getClass().getSimpleName().concat(" does not support rewarded interstitial ads."), MobileAds.ERROR_DOMAIN));
    }
}
