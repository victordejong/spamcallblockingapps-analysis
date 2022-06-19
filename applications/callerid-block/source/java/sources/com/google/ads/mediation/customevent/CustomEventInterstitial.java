package com.google.ads.mediation.customevent;

import android.app.Activity;
import androidx.annotation.RecentlyNonNull;
import com.google.ads.mediation.C1271a;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventInterstitial.class */
public interface CustomEventInterstitial {
    /* synthetic */ void destroy();

    void requestInterstitialAd(@RecentlyNonNull AbstractC1275b abstractC1275b, @RecentlyNonNull Activity activity, @RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull C1271a c1271a, @RecentlyNonNull Object obj);

    void showInterstitial();
}
