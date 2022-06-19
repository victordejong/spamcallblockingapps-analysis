package com.google.android.gms.ads.interstitial;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.ads.C12666jn;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/interstitial/InterstitialAd.class */
public abstract class InterstitialAd {
    public static void load(Context context, String str, AdRequest adRequest, InterstitialAdLoadCallback interstitialAdLoadCallback) {
        C12045o.m19161a(context, "Context cannot be null.");
        C12045o.m19161a(str, (Object) "AdUnitId cannot be null.");
        C12045o.m19161a(adRequest, "AdRequest cannot be null.");
        C12045o.m19161a(interstitialAdLoadCallback, "LoadCallback cannot be null.");
        new C12666jn(context, str).m14577a(adRequest.zzdt(), interstitialAdLoadCallback);
    }

    public abstract String getAdUnitId();

    public abstract FullScreenContentCallback getFullScreenContentCallback();

    public abstract OnPaidEventListener getOnPaidEventListener();

    public abstract ResponseInfo getResponseInfo();

    public abstract void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback);

    public abstract void setImmersiveMode(boolean z);

    public abstract void setOnPaidEventListener(OnPaidEventListener onPaidEventListener);

    public abstract void show(Activity activity);
}
