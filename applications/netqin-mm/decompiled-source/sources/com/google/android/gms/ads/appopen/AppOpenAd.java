package com.google.android.gms.ads.appopen;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzsm;
import com.google.android.gms.internal.ads.zzsr;
import com.google.android.gms.internal.ads.zzxc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/appopen/AppOpenAd.class */
public abstract class AppOpenAd {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback.class */
    public static class AppOpenAdLoadCallback {
        @Deprecated
        /* renamed from: a */
        public void m18081a(int i) {
        }

        /* renamed from: a */
        public void mo5286a(LoadAdError loadAdError) {
        }

        /* renamed from: a */
        public void mo5285a(AppOpenAd appOpenAd) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdOrientation.class */
    public @interface AppOpenAdOrientation {
    }

    /* renamed from: a */
    public static void m18082a(Context context, String str, AdRequest adRequest, @AppOpenAdOrientation int i, AppOpenAdLoadCallback appOpenAdLoadCallback) {
        Preconditions.m17287a(context, "Context cannot be null.");
        Preconditions.m17287a(str, (Object) "adUnitId cannot be null.");
        Preconditions.m17287a(adRequest, "AdRequest cannot be null.");
        new zzsr(context, str, adRequest.m18148a(), i, appOpenAdLoadCallback).m11465a();
    }

    /* renamed from: a */
    public abstract zzxc mo11469a();

    /* renamed from: a */
    public abstract void mo11468a(Activity activity, FullScreenContentCallback fullScreenContentCallback);

    /* renamed from: a */
    public abstract void mo11467a(zzsm zzsmVar);
}
