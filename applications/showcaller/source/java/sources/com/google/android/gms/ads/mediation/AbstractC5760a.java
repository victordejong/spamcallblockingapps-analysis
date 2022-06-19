package com.google.android.gms.ads.mediation;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.C5592a;
import java.util.List;
/* renamed from: com.google.android.gms.ads.mediation.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/a.class */
public abstract class AbstractC5760a {
    @RecentlyNonNull
    public abstract C5792w getSDKVersionInfo();

    @RecentlyNonNull
    public abstract C5792w getVersionInfo();

    public abstract void initialize(@RecentlyNonNull Context context, @RecentlyNonNull AbstractC5761b abstractC5761b, @RecentlyNonNull List<C5777j> list);

    public void loadBannerAd(@RecentlyNonNull C5775h c5775h, @RecentlyNonNull AbstractC5771d<AbstractC5774g, ?> abstractC5771d) {
        abstractC5771d.mo8479a(new C5592a(7, getClass().getSimpleName().concat(" does not support banner ads."), "com.google.android.gms.ads"));
    }

    public void loadInterscrollerAd(@RecentlyNonNull C5775h c5775h, @RecentlyNonNull AbstractC5771d<AbstractC5778k, ?> abstractC5771d) {
        abstractC5771d.mo8479a(new C5592a(7, getClass().getSimpleName().concat(" does not support interscroller ads."), "com.google.android.gms.ads"));
    }

    public void loadInterstitialAd(@RecentlyNonNull C5780m c5780m, @RecentlyNonNull AbstractC5771d<AbstractC5779l, ?> abstractC5771d) {
        abstractC5771d.mo8479a(new C5592a(7, getClass().getSimpleName().concat(" does not support interstitial ads."), "com.google.android.gms.ads"));
    }

    public void loadNativeAd(@RecentlyNonNull C5782o c5782o, @RecentlyNonNull AbstractC5771d<AbstractC5791v, ?> abstractC5771d) {
        abstractC5771d.mo8479a(new C5592a(7, getClass().getSimpleName().concat(" does not support native ads."), "com.google.android.gms.ads"));
    }

    public void loadRewardedAd(@RecentlyNonNull C5785r c5785r, @RecentlyNonNull AbstractC5771d<AbstractC5784q, ?> abstractC5771d) {
        abstractC5771d.mo8479a(new C5592a(7, getClass().getSimpleName().concat(" does not support rewarded ads."), "com.google.android.gms.ads"));
    }

    public void loadRewardedInterstitialAd(@RecentlyNonNull C5785r c5785r, @RecentlyNonNull AbstractC5771d<AbstractC5784q, ?> abstractC5771d) {
        abstractC5771d.mo8479a(new C5592a(7, getClass().getSimpleName().concat(" does not support rewarded interstitial ads."), "com.google.android.gms.ads"));
    }
}
