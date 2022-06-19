package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdRequest;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventInterstitial.class */
public interface CustomEventInterstitial extends CustomEvent {
    void requestInterstitialAd(Context context, CustomEventInterstitialListener customEventInterstitialListener, String str, MediationAdRequest mediationAdRequest, Bundle bundle);

    void showInterstitial();
}
