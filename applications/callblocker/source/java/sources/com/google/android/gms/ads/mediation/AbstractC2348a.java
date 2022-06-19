package com.google.android.gms.ads.mediation;

import android.content.Context;
import java.util.List;
/* renamed from: com.google.android.gms.ads.mediation.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/a.class */
public abstract class AbstractC2348a {
    public abstract C2382x getSDKVersionInfo();

    public abstract C2382x getVersionInfo();

    public abstract void initialize(Context context, AbstractC2349b abstractC2349b, List<C2365i> list);

    public void loadBannerAd(C2363g c2363g, AbstractC2359d<Object, Object> abstractC2359d) {
        abstractC2359d.mo7437a(String.valueOf(getClass().getSimpleName()).concat(" does not support banner ads."));
    }

    public void loadInterstitialAd(C2367k c2367k, AbstractC2359d<AbstractC2366j, Object> abstractC2359d) {
        abstractC2359d.mo7437a(String.valueOf(getClass().getSimpleName()).concat(" does not support interstitial ads."));
    }

    public void loadNativeAd(C2369m c2369m, AbstractC2359d<C2381w, Object> abstractC2359d) {
        abstractC2359d.mo7437a(String.valueOf(getClass().getSimpleName()).concat(" does not support native ads."));
    }

    public void loadRewardedAd(C2372p c2372p, AbstractC2359d<AbstractC2371o, Object> abstractC2359d) {
        abstractC2359d.mo7437a(String.valueOf(getClass().getSimpleName()).concat(" does not support rewarded ads."));
    }

    public final void zza(C2372p c2372p, AbstractC2359d<AbstractC2371o, Object> abstractC2359d) {
        abstractC2359d.mo7437a(String.valueOf(getClass().getSimpleName()).concat(" does not support rewarded interstitial ads."));
    }
}
