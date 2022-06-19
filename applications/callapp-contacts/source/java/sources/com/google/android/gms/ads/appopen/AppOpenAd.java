package com.google.android.gms.ads.appopen;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.AdLoadCallback;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.ads.egh;
import com.google.android.gms.internal.ads.ego;
import com.google.android.gms.internal.ads.ekw;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/appopen/AppOpenAd.class */
public abstract class AppOpenAd {
    public static final int APP_OPEN_AD_ORIENTATION_LANDSCAPE = 2;
    public static final int APP_OPEN_AD_ORIENTATION_PORTRAIT = 1;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback.class */
    public static class AppOpenAdLoadCallback extends AdLoadCallback<AppOpenAd> {
        @Deprecated
        public void onAppOpenAdFailedToLoad(int i) {
        }

        @Deprecated
        public void onAppOpenAdFailedToLoad(LoadAdError loadAdError) {
        }

        @Deprecated
        public void onAppOpenAdLoaded(AppOpenAd appOpenAd) {
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdOrientation.class */
    public @interface AppOpenAdOrientation {
    }

    public static void load(Context context, String str, AdRequest adRequest, int i, AppOpenAdLoadCallback appOpenAdLoadCallback) {
        C12045o.m19161a(context, "Context cannot be null.");
        C12045o.m19161a(str, (Object) "adUnitId cannot be null.");
        C12045o.m19161a(adRequest, "AdRequest cannot be null.");
        new ego(context, str, adRequest.zzdt(), i, appOpenAdLoadCallback).m15060a();
    }

    public static void load(Context context, String str, AdManagerAdRequest adManagerAdRequest, int i, AppOpenAdLoadCallback appOpenAdLoadCallback) {
        C12045o.m19161a(context, "Context cannot be null.");
        C12045o.m19161a(str, (Object) "adUnitId cannot be null.");
        C12045o.m19161a(adManagerAdRequest, "AdManagerAdRequest cannot be null.");
        new ego(context, str, adManagerAdRequest.zzdt(), i, appOpenAdLoadCallback).m15060a();
    }

    @Deprecated
    public static void load(Context context, String str, PublisherAdRequest publisherAdRequest, int i, AppOpenAdLoadCallback appOpenAdLoadCallback) {
        C12045o.m19161a(context, "Context cannot be null.");
        C12045o.m19161a(str, (Object) "adUnitId cannot be null.");
        C12045o.m19161a(publisherAdRequest, "PublisherAdRequest cannot be null.");
        new ego(context, str, publisherAdRequest.zzdt(), i, appOpenAdLoadCallback).m15060a();
    }

    public abstract String getAdUnitId();

    public abstract FullScreenContentCallback getFullScreenContentCallback();

    public abstract OnPaidEventListener getOnPaidEventListener();

    public abstract ResponseInfo getResponseInfo();

    public abstract void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback);

    public abstract void setImmersiveMode(boolean z);

    public abstract void setOnPaidEventListener(OnPaidEventListener onPaidEventListener);

    public abstract void show(Activity activity);

    @Deprecated
    public abstract void show(Activity activity, FullScreenContentCallback fullScreenContentCallback);

    public abstract void zza(egh eghVar);

    public abstract ekw zzea();
}
