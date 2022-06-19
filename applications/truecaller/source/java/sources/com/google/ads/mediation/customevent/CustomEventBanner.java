package com.google.ads.mediation.customevent;

import android.app.Activity;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventBanner.class */
public interface CustomEventBanner extends CustomEvent {
    void requestBannerAd(@RecentlyNonNull CustomEventBannerListener customEventBannerListener, @RecentlyNonNull Activity activity, @RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull AdSize adSize, @RecentlyNonNull MediationAdRequest mediationAdRequest, @RecentlyNonNull Object obj);
}
