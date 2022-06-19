package com.google.android.gms.ads.mediation;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AdError;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/MediationInterstitialListener.class */
public interface MediationInterstitialListener {
    void onAdClicked(@RecentlyNonNull MediationInterstitialAdapter mediationInterstitialAdapter);

    void onAdClosed(@RecentlyNonNull MediationInterstitialAdapter mediationInterstitialAdapter);

    @Deprecated
    void onAdFailedToLoad(@RecentlyNonNull MediationInterstitialAdapter mediationInterstitialAdapter, int i);

    void onAdFailedToLoad(@RecentlyNonNull MediationInterstitialAdapter mediationInterstitialAdapter, @RecentlyNonNull AdError adError);

    void onAdLeftApplication(@RecentlyNonNull MediationInterstitialAdapter mediationInterstitialAdapter);

    void onAdLoaded(@RecentlyNonNull MediationInterstitialAdapter mediationInterstitialAdapter);

    void onAdOpened(@RecentlyNonNull MediationInterstitialAdapter mediationInterstitialAdapter);
}
