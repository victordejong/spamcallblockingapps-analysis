package com.google.android.gms.ads.admanager;

import android.content.Context;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.ads.jn;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/admanager/AdManagerInterstitialAd.class */
public abstract class AdManagerInterstitialAd extends InterstitialAd {
    public static void load(Context context, String str, AdManagerAdRequest adManagerAdRequest, AdManagerInterstitialAdLoadCallback adManagerInterstitialAdLoadCallback) {
        o.a(context, "Context cannot be null.");
        o.a(str, (Object) "AdUnitId cannot be null.");
        o.a(adManagerAdRequest, "AdManagerAdRequest cannot be null.");
        o.a(adManagerInterstitialAdLoadCallback, "LoadCallback cannot be null.");
        new jn(context, str).a(adManagerAdRequest.zzdt(), adManagerInterstitialAdLoadCallback);
    }

    public abstract AppEventListener getAppEventListener();

    public abstract void setAppEventListener(AppEventListener appEventListener);
}
