package com.google.android.gms.ads.mediation;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.C1347a;
import java.util.List;
/* renamed from: com.google.android.gms.ads.mediation.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/a.class */
public abstract class AbstractC1461a {
    @RecentlyNonNull
    public abstract C1483w getSDKVersionInfo();

    @RecentlyNonNull
    public abstract C1483w getVersionInfo();

    public abstract void initialize(@RecentlyNonNull Context context, @RecentlyNonNull AbstractC1462b bVar, @RecentlyNonNull List<C1473j> list);

    public void loadBannerAd(@RecentlyNonNull h hVar, @RecentlyNonNull AbstractC1468d<AbstractC1471g, Object> dVar) {
        dVar.m8695a(new C1347a(7, String.valueOf(getClass().getSimpleName()).concat(" does not support banner ads."), "com.google.android.gms.ads"));
    }

    public void loadInterscrollerAd(@RecentlyNonNull h hVar, @RecentlyNonNull AbstractC1468d<k, Object> dVar) {
        dVar.m8695a(new C1347a(7, String.valueOf(getClass().getSimpleName()).concat(" does not support interscroller ads."), "com.google.android.gms.ads"));
    }

    public void loadInterstitialAd(@RecentlyNonNull m mVar, @RecentlyNonNull AbstractC1468d<AbstractC1474l, Object> dVar) {
        dVar.m8695a(new C1347a(7, String.valueOf(getClass().getSimpleName()).concat(" does not support interstitial ads."), "com.google.android.gms.ads"));
    }

    public void loadNativeAd(@RecentlyNonNull o oVar, @RecentlyNonNull AbstractC1468d<AbstractC1482v, Object> dVar) {
        dVar.m8695a(new C1347a(7, String.valueOf(getClass().getSimpleName()).concat(" does not support native ads."), "com.google.android.gms.ads"));
    }

    public void loadRewardedAd(@RecentlyNonNull r rVar, @RecentlyNonNull AbstractC1468d<AbstractC1477q, Object> dVar) {
        dVar.m8695a(new C1347a(7, String.valueOf(getClass().getSimpleName()).concat(" does not support rewarded ads."), "com.google.android.gms.ads"));
    }

    public void loadRewardedInterstitialAd(@RecentlyNonNull r rVar, @RecentlyNonNull AbstractC1468d<AbstractC1477q, Object> dVar) {
        dVar.m8695a(new C1347a(7, String.valueOf(getClass().getSimpleName()).concat(" does not support rewarded interstitial ads."), "com.google.android.gms.ads"));
    }
}
