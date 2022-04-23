package com.google.android.gms.ads.instream;

import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.ads.jj;
import com.google.android.gms.internal.ads.jo;
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
        o.b(i == 2 || i == 3, "Instream ads only support Landscape and Portrait media aspect ratios");
        new jo(context, str).a(instreamAdLoadCallback).a(new jj(i)).a().a(adRequest.zzdt());
    }

    public static void load(Context context, String str, InstreamAdLoadCallback instreamAdLoadCallback) {
        new jo(context, "").a(instreamAdLoadCallback).a(new jj(str)).a().a(new PublisherAdRequest.Builder().build().zzdt());
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

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void zza(InstreamAdView instreamAdView);
}
