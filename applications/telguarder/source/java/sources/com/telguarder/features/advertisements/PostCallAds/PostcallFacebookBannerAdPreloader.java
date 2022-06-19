package com.telguarder.features.advertisements.PostCallAds;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.AbstractC0845Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.telguarder.ApplicationObject;
import com.telguarder.features.advertisements.Advert;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.advertisements.AdvertNetworkName;
import com.telguarder.features.advertisements.PostCallAds.PostcallAdvertPreloader;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.log.Logger;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader.class */
public class PostcallFacebookBannerAdPreloader extends PostcallAdvertPreloader {
    public static final int BANNER_HEIGHT = 250;
    public static final int BANNER_WIDTH = 300;
    public static final String FACEBOOK_BANNER = AdvertNetworkName.FACEBOOK_BANNER.toString().toLowerCase(Locale.ENGLISH) + "_preload";
    private static final int MAX_RELOAD_ATTEMPTS = 8;
    private static PostcallFacebookBannerAdPreloader mInstance;
    public AdView mAdView;
    private Advert mAdvert;
    private String sid;
    public boolean adClicked = false;
    private int mLoadAttempt = 0;
    private final AdListener adListener = new AdListener() { // from class: com.telguarder.features.advertisements.PostCallAds.PostcallFacebookBannerAdPreloader.1
        @Override // com.facebook.ads.AdListener
        public void onAdClicked(AbstractC0845Ad abstractC0845Ad) {
            Logger.debug(PostcallFacebookBannerAdPreloader.FACEBOOK_BANNER, "onAdClicked");
            PostcallFacebookBannerAdPreloader.this.adClicked = true;
            AnalyticsManager.getInstance().sendAdvertClickedAction(PostcallFacebookBannerAdPreloader.FACEBOOK_BANNER);
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(AbstractC0845Ad abstractC0845Ad) {
            Logger.debug(PostcallFacebookBannerAdPreloader.FACEBOOK_BANNER, "onAdLoaded");
            PostcallFacebookBannerAdPreloader.this.adClicked = false;
            PostcallFacebookBannerAdPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.LOADED);
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookBannerAdPreloader.FACEBOOK_BANNER + " AD LOADED");
        }

        @Override // com.facebook.ads.AdListener
        public void onError(AbstractC0845Ad abstractC0845Ad, AdError adError) {
            Logger.debug(PostcallFacebookBannerAdPreloader.FACEBOOK_BANNER, "onError: " + adError.getErrorMessage());
            if (adError != null) {
                int errorCode = adError.getErrorCode();
                if (errorCode == 2000) {
                    AnalyticsManager.getInstance().sendAdvertServerErrorAction(PostcallFacebookBannerAdPreloader.FACEBOOK_BANNER);
                    PostcallFacebookBannerAdPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookBannerAdPreloader.FACEBOOK_BANNER + " AD FAILED TO LOAD\n        - SERVER_ERROR_CODE");
                } else if (errorCode != 2001) {
                    switch (errorCode) {
                        case 1000:
                            AnalyticsManager.getInstance().sendAdvertNetworkErrorAction(PostcallFacebookBannerAdPreloader.FACEBOOK_BANNER);
                            AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookBannerAdPreloader.FACEBOOK_BANNER + " AD FAILED TO LOAD\n        - NETWORK_ERROR_CODE");
                            if (!PostcallFacebookBannerAdPreloader.this.mAdvert.isBackupNetwork && PostcallFacebookBannerAdPreloader.this.mLoadAttempt < 8) {
                                AdvertManager.addAdNetworkFlowDebugInfo(" PRELOAD RETRY.. ");
                                PostcallFacebookBannerAdPreloader.this.mLoadAttempt++;
                                if (PostcallFacebookBannerAdPreloader.this.mAdView == null) {
                                    return;
                                }
                                PostcallFacebookBannerAdPreloader.this.mAdView.loadAd(PostcallFacebookBannerAdPreloader.this.mAdView.buildLoadAdConfig().withAdListener(PostcallFacebookBannerAdListener.getInstance().getAdListener(PostcallFacebookBannerAdPreloader.this.adListener)).build());
                                return;
                            }
                            PostcallFacebookBannerAdPreloader.this.mLoadAttempt = 0;
                            PostcallFacebookBannerAdPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                            break;
                        case 1001:
                            AnalyticsManager.getInstance().sendAdvertNoFillErrorAction(PostcallFacebookBannerAdPreloader.FACEBOOK_BANNER);
                            PostcallFacebookBannerAdPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.NO_AD);
                            AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookBannerAdPreloader.FACEBOOK_BANNER + " AD FAILED TO LOAD\n        - NO_FILL_ERROR_CODE");
                            break;
                        case 1002:
                            AnalyticsManager.getInstance().sendAdvertTooFrequentErrorAction(PostcallFacebookBannerAdPreloader.FACEBOOK_BANNER);
                            PostcallFacebookBannerAdPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                            AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookBannerAdPreloader.FACEBOOK_BANNER + " AD FAILED TO LOAD\n        - LOAD_TOO_FREQUENTLY_ERROR_CODE");
                            break;
                        default:
                            AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallFacebookBannerAdPreloader.FACEBOOK_BANNER);
                            PostcallFacebookBannerAdPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                            AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookBannerAdPreloader.FACEBOOK_BANNER + " AD FAILED TO LOAD");
                            break;
                    }
                } else {
                    AnalyticsManager.getInstance().sendAdvertInternalErrorAction(PostcallFacebookBannerAdPreloader.FACEBOOK_BANNER);
                    PostcallFacebookBannerAdPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookBannerAdPreloader.FACEBOOK_BANNER + " AD FAILED TO LOAD\n        - INTERNAL_ERROR_CODE");
                }
            }
            PostcallFacebookBannerAdPreloader.this.reset();
            PostcallAdvertProxy.getInstance().preloadBackup(ApplicationObject.getContext());
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(AbstractC0845Ad abstractC0845Ad) {
            Logger.debug(PostcallFacebookBannerAdPreloader.FACEBOOK_BANNER, "onLoggingImpression");
            AnalyticsManager.getInstance().sendAdvertImpressionLoggedAction(PostcallFacebookBannerAdPreloader.FACEBOOK_BANNER);
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookBannerAdPreloader.FACEBOOK_BANNER + " AD IMPRESSION LOGGED");
        }
    };

    private PostcallFacebookBannerAdPreloader() {
    }

    public static PostcallFacebookBannerAdPreloader getInstance() {
        PostcallFacebookBannerAdPreloader postcallFacebookBannerAdPreloader;
        synchronized (PostcallFacebookBannerAdPreloader.class) {
            try {
                if (mInstance == null) {
                    mInstance = new PostcallFacebookBannerAdPreloader();
                }
                postcallFacebookBannerAdPreloader = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return postcallFacebookBannerAdPreloader;
    }

    public static boolean isInstanciated() {
        boolean z;
        synchronized (PostcallFacebookBannerAdPreloader.class) {
            try {
                z = mInstance != null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    private void preloadStartError(Context context, String str) {
        setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
        AnalyticsManager analyticsManager = AnalyticsManager.getInstance();
        String str2 = FACEBOOK_BANNER;
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

    private void setListeners(Context context) {
        this.mAdView.setOnTouchListener(new View.OnTouchListener() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallFacebookBannerAdPreloader$F5L7AP2DzvZFdYUMP46MpRt_k3E
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return PostcallFacebookBannerAdPreloader.this.lambda$setListeners$1$PostcallFacebookBannerAdPreloader(view, motionEvent);
            }
        });
    }

    public void cleanInstance() {
        mInstance = null;
    }

    public /* synthetic */ void lambda$preload$0$PostcallFacebookBannerAdPreloader(Context context) {
        preloadStartError(context, "Timeout, stuck loading state..");
    }

    public /* synthetic */ boolean lambda$setListeners$1$PostcallFacebookBannerAdPreloader(View view, MotionEvent motionEvent) {
        Logger.debug(FACEBOOK_BANNER, "onTouch");
        this.adClicked = true;
        return false;
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
        AdvertManager.addAdNetworkFlowDebugInfo("\n");
        StringBuilder sb = new StringBuilder();
        String str = FACEBOOK_BANNER;
        sb.append(str);
        sb.append(" START \n        - ");
        sb.append(this.mAdvert.network.description);
        sb.append("\n        - ");
        sb.append(this.sid);
        AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
        AnalyticsManager.getInstance().sendAdvertRequestedAction(str);
        reset();
        this.mTimeoutRunnable = new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallFacebookBannerAdPreloader$rvpXyI2W5cO4BX4BuG26l7khMk8
            @Override // java.lang.Runnable
            public final void run() {
                PostcallFacebookBannerAdPreloader.this.lambda$preload$0$PostcallFacebookBannerAdPreloader(context);
            }
        };
        setState(PostcallAdvertPreloader.AdvertPreloadState.LOADING);
        try {
            this.mAdView = new AdView(context, this.sid, AdSize.RECTANGLE_HEIGHT_250);
            setListeners(context);
            AdView adView = this.mAdView;
            adView.loadAd(adView.buildLoadAdConfig().withAdListener(PostcallFacebookBannerAdListener.getInstance().getAdListener(this.adListener)).build());
        } catch (Exception e) {
            preloadStartError(context, e.getMessage());
        }
    }

    public void reset() {
        cancelPreloadTimeoutHandler();
        if (this.mAdView != null) {
            try {
                PostcallFacebookBannerAdListener.getInstance().setInternalAdListener(null);
                this.mAdView.destroy();
            } catch (Exception e) {
            } catch (Throwable th) {
                this.mAdView = null;
                throw th;
            }
            this.mAdView = null;
        }
    }
}
