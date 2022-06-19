package com.google.ads.mediation.customevent;

import android.app.Activity;
import androidx.annotation.RecentlyNonNull;
import p154l2.C3483a;
import p187o2.AbstractC3843b;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventInterstitial.class */
public interface CustomEventInterstitial {
    /* synthetic */ void destroy();

    void requestInterstitialAd(@RecentlyNonNull AbstractC3843b abstractC3843b, @RecentlyNonNull Activity activity, @RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull C3483a c3483a, @RecentlyNonNull Object obj);

    void showInterstitial();
}
