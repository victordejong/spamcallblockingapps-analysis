package com.google.android.gms.ads.mediation.customevent;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventNativeListener.class */
public interface CustomEventNativeListener extends CustomEventListener {
    void onAdImpression();

    void onAdLoaded(@RecentlyNonNull UnifiedNativeAdMapper unifiedNativeAdMapper);
}
