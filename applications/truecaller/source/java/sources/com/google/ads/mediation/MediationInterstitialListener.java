package com.google.ads.mediation;

import androidx.annotation.RecentlyNonNull;
import com.google.ads.AdRequest;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/MediationInterstitialListener.class */
public interface MediationInterstitialListener {
    void onDismissScreen(@RecentlyNonNull MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter);

    void onFailedToReceiveAd(@RecentlyNonNull MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, @RecentlyNonNull AdRequest.ErrorCode errorCode);

    void onLeaveApplication(@RecentlyNonNull MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter);

    void onPresentScreen(@RecentlyNonNull MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter);

    void onReceivedAd(@RecentlyNonNull MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter);
}
