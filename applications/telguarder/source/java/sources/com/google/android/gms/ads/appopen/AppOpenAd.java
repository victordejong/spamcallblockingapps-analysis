package com.google.android.gms.ads.appopen;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.AdLoadCallback;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzsq;
import com.google.android.gms.internal.ads.zzsw;
import com.google.android.gms.internal.ads.zzxl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/appopen/AppOpenAd.class */
public abstract class AppOpenAd {
    public static final int APP_OPEN_AD_ORIENTATION_LANDSCAPE = 2;
    public static final int APP_OPEN_AD_ORIENTATION_PORTRAIT = 1;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback.class */
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

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdOrientation.class */
    public @interface AppOpenAdOrientation {
    }

    public static void load(Context context, String str, AdRequest adRequest, int i, AppOpenAdLoadCallback appOpenAdLoadCallback) {
        Preconditions.checkNotNull(context, "Context cannot be null.");
        Preconditions.checkNotNull(str, "adUnitId cannot be null.");
        Preconditions.checkNotNull(adRequest, "AdRequest cannot be null.");
        new zzsw(context, str, adRequest.zzds(), i, appOpenAdLoadCallback).zzmu();
    }

    public static void load(Context context, String str, AdManagerAdRequest adManagerAdRequest, int i, AppOpenAdLoadCallback appOpenAdLoadCallback) {
        Preconditions.checkNotNull(context, "Context cannot be null.");
        Preconditions.checkNotNull(str, "adUnitId cannot be null.");
        Preconditions.checkNotNull(adManagerAdRequest, "AdManagerAdRequest cannot be null.");
        new zzsw(context, str, adManagerAdRequest.zzds(), i, appOpenAdLoadCallback).zzmu();
    }

    @Deprecated
    public static void load(Context context, String str, PublisherAdRequest publisherAdRequest, int i, AppOpenAdLoadCallback appOpenAdLoadCallback) {
        Preconditions.checkNotNull(context, "Context cannot be null.");
        Preconditions.checkNotNull(str, "adUnitId cannot be null.");
        Preconditions.checkNotNull(publisherAdRequest, "PublisherAdRequest cannot be null.");
        new zzsw(context, str, publisherAdRequest.zzds(), i, appOpenAdLoadCallback).zzmu();
    }

    public abstract String getAdUnitId();

    public abstract FullScreenContentCallback getFullScreenContentCallback();

    public abstract ResponseInfo getResponseInfo();

    public abstract void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback);

    public abstract void setImmersiveMode(boolean z);

    public abstract void show(Activity activity);

    @Deprecated
    public abstract void show(Activity activity, FullScreenContentCallback fullScreenContentCallback);

    public abstract void zza(zzsq zzsqVar);

    public abstract zzxl zzdx();
}
