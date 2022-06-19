package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.AdError;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationInterstitialAdCallback.class */
public interface MediationInterstitialAdCallback extends MediationAdCallback {
    void onAdFailedToShow(AdError adError);

    @Deprecated
    void onAdFailedToShow(String str);

    void onAdLeftApplication();
}
