package com.google.android.gms.ads.mediation.rtb;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/rtb/RtbAdapter.class */
public abstract class RtbAdapter extends Adapter {
    public abstract void collectSignals(@RecentlyNonNull RtbSignalData rtbSignalData, @RecentlyNonNull SignalCallbacks signalCallbacks);

    public void loadRtbBannerAd(@RecentlyNonNull MediationBannerAdConfiguration mediationBannerAdConfiguration, @RecentlyNonNull MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
        loadBannerAd(mediationBannerAdConfiguration, mediationAdLoadCallback);
    }

    public void loadRtbInterscrollerAd(@RecentlyNonNull MediationBannerAdConfiguration mediationBannerAdConfiguration, @RecentlyNonNull MediationAdLoadCallback<MediationInterscrollerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
        mediationAdLoadCallback.onFailure(new AdError(7, getClass().getSimpleName().concat(" does not support interscroller ads."), MobileAds.ERROR_DOMAIN));
    }

    public void loadRtbInterstitialAd(@RecentlyNonNull MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, @RecentlyNonNull MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
        loadInterstitialAd(mediationInterstitialAdConfiguration, mediationAdLoadCallback);
    }

    public void loadRtbNativeAd(@RecentlyNonNull MediationNativeAdConfiguration mediationNativeAdConfiguration, @RecentlyNonNull MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback) {
        loadNativeAd(mediationNativeAdConfiguration, mediationAdLoadCallback);
    }

    public void loadRtbRewardedAd(@RecentlyNonNull MediationRewardedAdConfiguration mediationRewardedAdConfiguration, @RecentlyNonNull MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        loadRewardedAd(mediationRewardedAdConfiguration, mediationAdLoadCallback);
    }

    public void loadRtbRewardedInterstitialAd(@RecentlyNonNull MediationRewardedAdConfiguration mediationRewardedAdConfiguration, @RecentlyNonNull MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        loadRewardedInterstitialAd(mediationRewardedAdConfiguration, mediationAdLoadCallback);
    }
}
