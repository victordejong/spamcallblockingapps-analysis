package com.telguarder.features.advertisements.PostCallAds;

import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.telguarder.ApplicationObject;
import com.telguarder.features.advertisements.Advert;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.advertisements.AdvertNetworkName;
import com.telguarder.features.advertisements.PostCallAds.PostcallAdvertPreloader;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.location.LocationHelper;
import com.telguarder.helpers.log.Logger;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader.class */
public class PostcallAdMobPreloader extends PostcallAdvertPreloader {
    public static final int MAX_RELOAD_ATTEMPTS = 8;
    public static final String TAG = "PostcallAdMobPreloader";
    private static PostcallAdMobPreloader mInstance;
    public AdLoader mAdLoader;
    public Advert mAdvert;
    public Location mLocation;
    public UnifiedNativeAd mUnifiedNativeAd;
    public String ADMOB = AdvertNetworkName.ADMOB.toString().toLowerCase(Locale.ENGLISH) + "_preload";
    public int mLoadAttempt = 0;

    private PostcallAdMobPreloader() {
    }

    public static PostcallAdMobPreloader getInstance() {
        PostcallAdMobPreloader postcallAdMobPreloader;
        synchronized (PostcallAdMobPreloader.class) {
            try {
                if (mInstance == null) {
                    mInstance = new PostcallAdMobPreloader();
                }
                postcallAdMobPreloader = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return postcallAdMobPreloader;
    }

    public static boolean isInstanciated() {
        boolean z;
        synchronized (PostcallAdMobPreloader.class) {
            try {
                z = mInstance != null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    private void preloadStartError(String str) {
        setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
        AnalyticsManager.getInstance().sendAdvertErrorAction(this.ADMOB);
        StringBuilder sb = new StringBuilder();
        sb.append(this.ADMOB);
        sb.append(" ERROR: \n        - ");
        if (TextUtils.isEmpty(str)) {
            str = "unknown error";
        }
        sb.append(str);
        AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
        reset();
        PostcallAdvertProxy.getInstance().preloadBackup(ApplicationObject.getContext());
    }

    public void cleanInstance() {
        mInstance = null;
    }

    public /* synthetic */ void lambda$preload$0$PostcallAdMobPreloader() {
        preloadStartError("Timeout, stuck loading state..");
    }

    public /* synthetic */ void lambda$preload$1$PostcallAdMobPreloader(UnifiedNativeAd unifiedNativeAd) {
        this.mUnifiedNativeAd = unifiedNativeAd;
    }

    public void loadAdvert() {
        if (this.mLocation != null) {
            this.mAdLoader.loadAd(new AdRequest.Builder().setLocation(this.mLocation).build());
        } else {
            this.mAdLoader.loadAd(new AdRequest.Builder().build());
        }
    }

    public void onDestroy() {
        reset();
        cleanInstance();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x010c -> B:8:0x005e). Please submit an issue!!! */
    public void preload(Context context, Advert advert) {
        this.mLoadAttempt = 0;
        if (advert == null || advert.network == null) {
            this.mAdvert = null;
            preloadStartError("placement id processing error");
            return;
        }
        this.mAdvert = advert;
        try {
            AdvertManager.addAdNetworkFlowDebugInfo("\n");
            AdvertManager.addAdNetworkFlowDebugInfo(this.ADMOB + " START \n        - " + this.mAdvert.network.description + "\n        - " + this.mAdvert.network.placementId);
        } catch (Exception e) {
        }
        AnalyticsManager.getInstance().sendAdvertRequestedAction(this.ADMOB);
        reset();
        this.mTimeoutRunnable = new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdMobPreloader$05rXvv387Z3YHQ_IJZmEMMgLWXg
            @Override // java.lang.Runnable
            public final void run() {
                PostcallAdMobPreloader.this.lambda$preload$0$PostcallAdMobPreloader();
            }
        };
        setState(PostcallAdvertPreloader.AdvertPreloadState.LOADING);
        try {
            AdLoader.Builder builder = new AdLoader.Builder(context, this.mAdvert.network.placementId);
            builder.forUnifiedNativeAd(new UnifiedNativeAd.OnUnifiedNativeAdLoadedListener() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdMobPreloader$5jmy_RWz2CDJHUJG58d1Ogn_wP8
                @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.OnUnifiedNativeAdLoadedListener
                public final void onUnifiedNativeAdLoaded(UnifiedNativeAd unifiedNativeAd) {
                    PostcallAdMobPreloader.this.lambda$preload$1$PostcallAdMobPreloader(unifiedNativeAd);
                }
            });
            builder.withNativeAdOptions(new NativeAdOptions.Builder().setVideoOptions(new VideoOptions.Builder().setStartMuted(true).build()).build());
            PostcallAdmobListener.getInstance().initListener(context, this, null);
            this.mAdLoader = builder.withAdListener(PostcallAdmobListener.getInstance().getAdListener()).build();
            this.mLocation = LocationHelper.getInstance().getCurrentCoarseLocation();
            loadAdvert();
        } catch (Exception e2) {
            preloadStartError(e2.getMessage());
        }
    }

    public void reset() {
        cancelPreloadTimeoutHandler();
        UnifiedNativeAd unifiedNativeAd = this.mUnifiedNativeAd;
        if (unifiedNativeAd != null) {
            try {
                try {
                    unifiedNativeAd.destroy();
                } catch (Exception e) {
                    String str = TAG;
                    Logger.error(str, "PostcallAdMobPreloader reset error:" + e.toString());
                }
            } finally {
                this.mUnifiedNativeAd = null;
            }
        }
        this.mAdLoader = null;
    }
}
