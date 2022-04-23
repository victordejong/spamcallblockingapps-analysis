package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/MediationInterstitialAdapter.class */
public interface MediationInterstitialAdapter extends MediationAdapter {
    void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2);

    void showInterstitial();
}
