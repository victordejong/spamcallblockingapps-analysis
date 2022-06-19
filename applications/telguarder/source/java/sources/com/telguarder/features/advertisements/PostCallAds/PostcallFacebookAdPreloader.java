package com.telguarder.features.advertisements.PostCallAds;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.AbstractC0845Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdListener;
import com.telguarder.features.advertisements.Advert;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.advertisements.AdvertNetworkName;
import com.telguarder.features.advertisements.PostCallAds.PostcallAdvertPreloader;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.log.Logger;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader.class */
public class PostcallFacebookAdPreloader extends PostcallAdvertPreloader {
    public static final String FACEBOOK = AdvertNetworkName.FACEBOOK.toString().toLowerCase(Locale.ENGLISH) + "_preload";
    private static final int MAX_RELOAD_ATTEMPTS = 8;
    private static PostcallFacebookAdPreloader mInstance;
    private Advert mAdvert;
    public NativeAd mNativeAd;
    private String sid;
    public boolean adClicked = false;
    private int mLoadAttempt = 0;

    private PostcallFacebookAdPreloader() {
    }

    public static PostcallFacebookAdPreloader getInstance() {
        PostcallFacebookAdPreloader postcallFacebookAdPreloader;
        synchronized (PostcallFacebookAdPreloader.class) {
            try {
                if (mInstance == null) {
                    mInstance = new PostcallFacebookAdPreloader();
                }
                postcallFacebookAdPreloader = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return postcallFacebookAdPreloader;
    }

    public static boolean isInstanciated() {
        boolean z;
        synchronized (PostcallFacebookAdPreloader.class) {
            try {
                z = mInstance != null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public void loadAdvert(final Context context) {
        reset();
        NativeAd nativeAd = new NativeAd(context, this.sid);
        this.mNativeAd = nativeAd;
        nativeAd.setOnTouchListener(new View.OnTouchListener() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallFacebookAdPreloader$5bIOXvHA5AjXIS5ZlichWZlaF1A
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return PostcallFacebookAdPreloader.this.lambda$loadAdvert$1$PostcallFacebookAdPreloader(view, motionEvent);
            }
        });
        NativeAdListener nativeAdListener = new NativeAdListener() { // from class: com.telguarder.features.advertisements.PostCallAds.PostcallFacebookAdPreloader.1
            @Override // com.facebook.ads.AdListener
            public void onAdClicked(AbstractC0845Ad abstractC0845Ad) {
                Logger.debug(PostcallFacebookAdPreloader.FACEBOOK, "onAdClicked");
                PostcallFacebookAdPreloader.this.adClicked = true;
                AnalyticsManager.getInstance().sendAdvertClickedAction(PostcallFacebookAdPreloader.FACEBOOK);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookAdPreloader.FACEBOOK + " AD CLICKED");
            }

            @Override // com.facebook.ads.AdListener
            public void onAdLoaded(AbstractC0845Ad abstractC0845Ad) {
                Logger.debug(PostcallFacebookAdPreloader.FACEBOOK, "onAdLoaded");
                PostcallFacebookAdPreloader.this.adClicked = false;
                PostcallFacebookAdPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.LOADED);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookAdPreloader.FACEBOOK + " AD LOADED\n        - " + PostcallFacebookAdPreloader.this.mNativeAd.getAdvertiserName());
            }

            @Override // com.facebook.ads.AdListener
            public void onError(AbstractC0845Ad abstractC0845Ad, AdError adError) {
                Logger.debug(PostcallFacebookAdPreloader.FACEBOOK, "onError: " + adError.getErrorMessage());
                if (adError != null) {
                    int errorCode = adError.getErrorCode();
                    if (errorCode == 2000) {
                        AnalyticsManager.getInstance().sendAdvertServerErrorAction(PostcallFacebookAdPreloader.FACEBOOK);
                        PostcallFacebookAdPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                        AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookAdPreloader.FACEBOOK + " AD FAILED TO LOAD\n        - SERVER_ERROR_CODE");
                    } else if (errorCode != 2001) {
                        switch (errorCode) {
                            case 1000:
                                AnalyticsManager.getInstance().sendAdvertNetworkErrorAction(PostcallFacebookAdPreloader.FACEBOOK);
                                AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookAdPreloader.FACEBOOK + " AD FAILED TO LOAD\n        - NETWORK_ERROR_CODE");
                                if (!PostcallFacebookAdPreloader.this.mAdvert.isBackupNetwork && PostcallFacebookAdPreloader.this.mLoadAttempt < 8) {
                                    AdvertManager.addAdNetworkFlowDebugInfo(" PRELOAD RETRY.. ");
                                    PostcallFacebookAdPreloader.this.mLoadAttempt++;
                                    PostcallFacebookAdPreloader.this.loadAdvert(context);
                                    return;
                                }
                                PostcallFacebookAdPreloader.this.mLoadAttempt = 0;
                                PostcallFacebookAdPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                                break;
                                break;
                            case 1001:
                                AnalyticsManager.getInstance().sendAdvertNoFillErrorAction(PostcallFacebookAdPreloader.FACEBOOK);
                                PostcallFacebookAdPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.NO_AD);
                                AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookAdPreloader.FACEBOOK + " AD FAILED TO LOAD\n        - NO_FILL_ERROR_CODE");
                                break;
                            case 1002:
                                AnalyticsManager.getInstance().sendAdvertTooFrequentErrorAction(PostcallFacebookAdPreloader.FACEBOOK);
                                PostcallFacebookAdPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                                AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookAdPreloader.FACEBOOK + " AD FAILED TO LOAD\n        - LOAD_TOO_FREQUENTLY_ERROR_CODE");
                                break;
                            default:
                                AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallFacebookAdPreloader.FACEBOOK);
                                PostcallFacebookAdPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                                AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookAdPreloader.FACEBOOK + " AD FAILED TO LOAD");
                                break;
                        }
                    } else {
                        AnalyticsManager.getInstance().sendAdvertInternalErrorAction(PostcallFacebookAdPreloader.FACEBOOK);
                        PostcallFacebookAdPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                        AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookAdPreloader.FACEBOOK + " AD FAILED TO LOAD\n        - INTERNAL_ERROR_CODE");
                    }
                }
                PostcallFacebookAdPreloader.this.reset();
                PostcallAdvertProxy.getInstance().preloadBackup(context);
            }

            @Override // com.facebook.ads.AdListener
            public void onLoggingImpression(AbstractC0845Ad abstractC0845Ad) {
                Logger.debug(PostcallFacebookAdPreloader.FACEBOOK, "onLoggingImpression");
                AnalyticsManager.getInstance().sendAdvertImpressionLoggedAction(PostcallFacebookAdPreloader.FACEBOOK);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookAdPreloader.FACEBOOK + " AD IMPRESSION LOGGED");
            }

            @Override // com.facebook.ads.NativeAdListener
            public void onMediaDownloaded(AbstractC0845Ad abstractC0845Ad) {
                Logger.debug(PostcallFacebookAdPreloader.FACEBOOK, "onAdLoading");
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookAdPreloader.FACEBOOK + " AD MEDIA DOWNLOADED");
            }
        };
        NativeAd nativeAd2 = this.mNativeAd;
        nativeAd2.loadAd(nativeAd2.buildLoadAdConfig().withAdListener(PostcallFacebookAdListener.getInstance().getAdListener(nativeAdListener)).build());
    }

    private void preloadStartError(Context context, String str) {
        setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
        AnalyticsManager analyticsManager = AnalyticsManager.getInstance();
        String str2 = FACEBOOK;
        analyticsManager.sendAdvertErrorAction(str2);
        StringBuilder sb = new StringBuilder();
        sb.append(str2);
        sb.append(" ERROR: \n        - ");
        if (TextUtils.isEmpty(str)) {
            str = "unknown error";
        }
        sb.append(str);
        AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
        reset();
        PostcallAdvertProxy.getInstance().preloadBackup(context);
    }

    public void cleanInstance() {
        mInstance = null;
    }

    public /* synthetic */ boolean lambda$loadAdvert$1$PostcallFacebookAdPreloader(View view, MotionEvent motionEvent) {
        Logger.debug(FACEBOOK, "onTouch");
        this.adClicked = true;
        return false;
    }

    public /* synthetic */ void lambda$preload$0$PostcallFacebookAdPreloader(Context context) {
        preloadStartError(context, "Timeout, stuck loading state..");
    }

    public void onDestroy() {
        reset();
        cleanInstance();
    }

    public void preload(final Context context, Advert advert) {
        this.mLoadAttempt = 0;
        if (advert == null || advert.network == null) {
            this.mAdvert = null;
            preloadStartError(context, "placement id processing error");
            return;
        }
        this.mAdvert = advert;
        this.sid = advert.network.placementId;
        try {
            AnalyticsManager analyticsManager = AnalyticsManager.getInstance();
            String str = FACEBOOK;
            analyticsManager.sendAdvertRequestedAction(str);
            try {
                AdvertManager.addAdNetworkFlowDebugInfo("\n");
                AdvertManager.addAdNetworkFlowDebugInfo(str + " START \n        - " + this.mAdvert.network.description + "\n        - " + this.sid);
            } catch (Exception e) {
            }
            reset();
            this.mTimeoutRunnable = new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallFacebookAdPreloader$a06hLqNvdS3f_wiSB_iwWebWk2o
                @Override // java.lang.Runnable
                public final void run() {
                    PostcallFacebookAdPreloader.this.lambda$preload$0$PostcallFacebookAdPreloader(context);
                }
            };
            setState(PostcallAdvertPreloader.AdvertPreloadState.LOADING);
            loadAdvert(context);
        } catch (Exception e2) {
            preloadStartError(context, e2.getMessage());
        }
    }

    public void reset() {
        cancelPreloadTimeoutHandler();
        try {
            if (this.mNativeAd == null) {
                return;
            }
            try {
                PostcallFacebookAdListener.getInstance().setInternalAdListener(null);
                this.mNativeAd.destroy();
            } catch (Exception e) {
                String str = FACEBOOK;
                Logger.error(str, "PostcallFacebookAdPreloader reset error:" + e.toString());
            }
        } finally {
            this.mNativeAd = null;
        }
    }
}
