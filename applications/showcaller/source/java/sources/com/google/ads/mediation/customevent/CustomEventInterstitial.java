package com.google.ads.mediation.customevent;

import android.app.Activity;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.mediation.C4586a;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventInterstitial.class */
public interface CustomEventInterstitial {
    /* synthetic */ void destroy();

    void requestInterstitialAd(@RecentlyNonNull AbstractC4590b abstractC4590b, @RecentlyNonNull Activity activity, @RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull C4586a c4586a, @RecentlyNonNull Object obj);

    void showInterstitial();
}
