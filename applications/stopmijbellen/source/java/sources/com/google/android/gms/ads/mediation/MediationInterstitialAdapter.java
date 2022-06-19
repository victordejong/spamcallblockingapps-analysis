package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationInterstitialAdapter.class */
public interface MediationInterstitialAdapter extends MediationAdapter {
    void requestInterstitialAd(@RecentlyNonNull Context context, @RecentlyNonNull MediationInterstitialListener mediationInterstitialListener, @RecentlyNonNull Bundle bundle, @RecentlyNonNull MediationAdRequest mediationAdRequest, Bundle bundle2);

    void showInterstitial();
}
