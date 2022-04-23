package com.google.android.gms.ads.mediation;

import android.content.Context;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/Adapter.class */
public abstract class Adapter implements MediationExtrasReceiver {
    public abstract VersionInfo getSDKVersionInfo();

    public abstract VersionInfo getVersionInfo();

    public abstract void initialize(Context context, InitializationCompleteCallback initializationCompleteCallback, List<MediationConfiguration> list);

    public void loadBannerAd(MediationBannerAdConfiguration mediationBannerAdConfiguration, MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
        mediationAdLoadCallback.mo17937a(String.valueOf(getClass().getSimpleName()).concat(" does not support banner ads."));
    }

    public void loadInterstitialAd(MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
        mediationAdLoadCallback.mo17937a(String.valueOf(getClass().getSimpleName()).concat(" does not support interstitial ads."));
    }

    public void loadNativeAd(MediationNativeAdConfiguration mediationNativeAdConfiguration, MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback) {
        mediationAdLoadCallback.mo17937a(String.valueOf(getClass().getSimpleName()).concat(" does not support native ads."));
    }

    public void loadRewardedAd(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        mediationAdLoadCallback.mo17937a(String.valueOf(getClass().getSimpleName()).concat(" does not support rewarded ads."));
    }

    public void loadRewardedInterstitialAd(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        mediationAdLoadCallback.mo17937a(String.valueOf(getClass().getSimpleName()).concat(" does not support rewarded interstitial ads."));
    }
}
