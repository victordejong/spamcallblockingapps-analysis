package com.google.android.gms.ads.admanager;

import android.content.Context;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.ads.C12666jn;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/admanager/AdManagerInterstitialAd.class */
public abstract class AdManagerInterstitialAd extends InterstitialAd {
    public static void load(Context context, String str, AdManagerAdRequest adManagerAdRequest, AdManagerInterstitialAdLoadCallback adManagerInterstitialAdLoadCallback) {
        C12045o.m19161a(context, "Context cannot be null.");
        C12045o.m19161a(str, (Object) "AdUnitId cannot be null.");
        C12045o.m19161a(adManagerAdRequest, "AdManagerAdRequest cannot be null.");
        C12045o.m19161a(adManagerInterstitialAdLoadCallback, "LoadCallback cannot be null.");
        new C12666jn(context, str).m14577a(adManagerAdRequest.zzdt(), adManagerInterstitialAdLoadCallback);
    }

    public abstract AppEventListener getAppEventListener();

    public abstract void setAppEventListener(AppEventListener appEventListener);
}
