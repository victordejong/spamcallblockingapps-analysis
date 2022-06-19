package com.google.android.gms.ads.instream;

import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.ads.C12662jj;
import com.google.android.gms.internal.ads.C12667jo;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/instream/InstreamAd.class */
public abstract class InstreamAd {

    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback.class */
    public static class InstreamAdLoadCallback {
        @Deprecated
        public void onInstreamAdFailedToLoad(int i) {
        }

        public void onInstreamAdFailedToLoad(LoadAdError loadAdError) {
        }

        public void onInstreamAdLoaded(InstreamAd instreamAd) {
        }
    }

    public static void load(Context context, String str, AdRequest adRequest, int i, InstreamAdLoadCallback instreamAdLoadCallback) {
        C12045o.m19153b(i == 2 || i == 3, "Instream ads only support Landscape and Portrait media aspect ratios");
        new C12667jo(context, str).m14575a(instreamAdLoadCallback).m14574a(new C12662jj(i)).m14576a().m14581a(adRequest.zzdt());
    }

    public static void load(Context context, String str, InstreamAdLoadCallback instreamAdLoadCallback) {
        new C12667jo(context, "").m14575a(instreamAdLoadCallback).m14574a(new C12662jj(str)).m14576a().m14581a(new PublisherAdRequest.Builder().build().zzdt());
    }

    public abstract void destroy();

    @Deprecated
    public abstract float getAspectRatio();

    public abstract MediaContent getMediaContent();

    @Deprecated
    public abstract VideoController getVideoController();

    @Deprecated
    public abstract float getVideoCurrentTime();

    @Deprecated
    public abstract float getVideoDuration();

    public abstract void zza(InstreamAdView instreamAdView);
}
