package com.google.android.gms.ads.admanager;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbsh;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/admanager/AdManagerInterstitialAd.class */
public abstract class AdManagerInterstitialAd extends InterstitialAd {
    public static void load(@RecentlyNonNull Context context, @RecentlyNonNull String str, @RecentlyNonNull AdManagerAdRequest adManagerAdRequest, @RecentlyNonNull AdManagerInterstitialAdLoadCallback adManagerInterstitialAdLoadCallback) {
        Preconditions.m38897k(context, "Context cannot be null.");
        Preconditions.m38897k(str, "AdUnitId cannot be null.");
        Preconditions.m38897k(adManagerAdRequest, "AdManagerAdRequest cannot be null.");
        Preconditions.m38897k(adManagerInterstitialAdLoadCallback, "LoadCallback cannot be null.");
        new zzbsh(context, str).zza(adManagerAdRequest.zza(), adManagerInterstitialAdLoadCallback);
    }

    @RecentlyNullable
    public abstract AppEventListener getAppEventListener();

    public abstract void setAppEventListener(AppEventListener appEventListener);
}
