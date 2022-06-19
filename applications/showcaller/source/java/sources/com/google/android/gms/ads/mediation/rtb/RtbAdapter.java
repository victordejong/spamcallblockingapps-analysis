package com.google.android.gms.ads.mediation.rtb;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.C5592a;
import com.google.android.gms.ads.mediation.AbstractC5760a;
import com.google.android.gms.ads.mediation.AbstractC5771d;
import com.google.android.gms.ads.mediation.AbstractC5774g;
import com.google.android.gms.ads.mediation.AbstractC5778k;
import com.google.android.gms.ads.mediation.AbstractC5779l;
import com.google.android.gms.ads.mediation.AbstractC5784q;
import com.google.android.gms.ads.mediation.AbstractC5791v;
import com.google.android.gms.ads.mediation.C5775h;
import com.google.android.gms.ads.mediation.C5780m;
import com.google.android.gms.ads.mediation.C5782o;
import com.google.android.gms.ads.mediation.C5785r;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/rtb/RtbAdapter.class */
public abstract class RtbAdapter extends AbstractC5760a {
    public abstract void collectSignals(@RecentlyNonNull C5786a c5786a, @RecentlyNonNull AbstractC5787b abstractC5787b);

    public void loadRtbBannerAd(@RecentlyNonNull C5775h c5775h, @RecentlyNonNull AbstractC5771d<AbstractC5774g, ?> abstractC5771d) {
        loadBannerAd(c5775h, abstractC5771d);
    }

    public void loadRtbInterscrollerAd(@RecentlyNonNull C5775h c5775h, @RecentlyNonNull AbstractC5771d<AbstractC5778k, ?> abstractC5771d) {
        abstractC5771d.mo8479a(new C5592a(7, getClass().getSimpleName().concat(" does not support interscroller ads."), "com.google.android.gms.ads"));
    }

    public void loadRtbInterstitialAd(@RecentlyNonNull C5780m c5780m, @RecentlyNonNull AbstractC5771d<AbstractC5779l, ?> abstractC5771d) {
        loadInterstitialAd(c5780m, abstractC5771d);
    }

    public void loadRtbNativeAd(@RecentlyNonNull C5782o c5782o, @RecentlyNonNull AbstractC5771d<AbstractC5791v, ?> abstractC5771d) {
        loadNativeAd(c5782o, abstractC5771d);
    }

    public void loadRtbRewardedAd(@RecentlyNonNull C5785r c5785r, @RecentlyNonNull AbstractC5771d<AbstractC5784q, ?> abstractC5771d) {
        loadRewardedAd(c5785r, abstractC5771d);
    }

    public void loadRtbRewardedInterstitialAd(@RecentlyNonNull C5785r c5785r, @RecentlyNonNull AbstractC5771d<AbstractC5784q, ?> abstractC5771d) {
        loadRewardedInterstitialAd(c5785r, abstractC5771d);
    }
}
