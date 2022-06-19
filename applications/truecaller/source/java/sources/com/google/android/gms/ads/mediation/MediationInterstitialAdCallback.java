package com.google.android.gms.ads.mediation;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.AdError;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/MediationInterstitialAdCallback.class */
public interface MediationInterstitialAdCallback extends MediationAdCallback {
    void onAdFailedToShow(@RecentlyNonNull AdError adError);

    @Deprecated
    void onAdFailedToShow(@RecentlyNonNull String str);

    void onAdLeftApplication();
}
