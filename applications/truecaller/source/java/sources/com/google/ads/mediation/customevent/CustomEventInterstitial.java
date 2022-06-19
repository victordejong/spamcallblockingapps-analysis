package com.google.ads.mediation.customevent;

import android.app.Activity;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.mediation.MediationAdRequest;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventInterstitial.class */
public interface CustomEventInterstitial extends CustomEvent {
    void requestInterstitialAd(@RecentlyNonNull CustomEventInterstitialListener customEventInterstitialListener, @RecentlyNonNull Activity activity, @RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull MediationAdRequest mediationAdRequest, @RecentlyNonNull Object obj);

    void showInterstitial();
}
