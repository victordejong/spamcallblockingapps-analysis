package com.telguarder.features.advertisements.PostCallAds;

import android.location.Location;
import android.text.TextUtils;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.ResponseInfo;
import com.telguarder.ApplicationObject;
import com.telguarder.features.advertisements.Advert;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.advertisements.AdvertNetworkName;
import com.telguarder.features.advertisements.PostCallAds.PostcallAdMobBannerPreloader;
import com.telguarder.features.advertisements.PostCallAds.PostcallAdvertPreloader;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.location.LocationHelper;
import com.telguarder.helpers.log.Logger;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader.class */
public class PostcallAdMobBannerPreloader extends PostcallAdvertPreloader {
    public static final int BANNER_HEIGHT = 250;
    public static final int BANNER_WIDTH = 300;
    private static final int MAX_RELOAD_ATTEMPTS = 8;
    private static final String TAG = "PostcallAdMobBannerPreloader";
    private static PostcallAdMobBannerPreloader mInstance;
    public AdView mAdView;
    private Advert mAdvert;
    private Location mLocation;
    public ResponseInfo mResponseInfo;
    private String sid;
    public String ADMOB_BANNER = AdvertNetworkName.ADMOB_BANNER.toString().toLowerCase(Locale.ENGLISH) + "_preload";
    private int mLoadAttempt = 0;
    private AdListener adListener = new C21021();

    /* renamed from: com.telguarder.features.advertisements.PostCallAds.PostcallAdMobBannerPreloader$1 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1.class */
    public class C21021 extends AdListener {
        C21021() {
            PostcallAdMobBannerPreloader.this = r4;
        }

        public /* synthetic */ void lambda$onAdLoaded$0$PostcallAdMobBannerPreloader$1() {
            try {
                PostcallAdMobBannerPreloader.this.loadAdvert();
            } catch (Exception e) {
            }
        }

        @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.internal.ads.zzvc
        public void onAdClicked() {
            super.onAdClicked();
            Logger.debug(PostcallAdMobBannerPreloader.TAG, "onAdClicked");
            AnalyticsManager.getInstance().sendAdvertClickedAction(PostcallAdMobBannerPreloader.this.ADMOB_BANNER);
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerPreloader.this.ADMOB_BANNER + " AD CLICKED");
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
            super.onAdClosed();
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerPreloader.this.ADMOB_BANNER + " AD CLOSED");
            Logger.debug(PostcallAdMobBannerPreloader.TAG, "onAdClosed");
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int i) {
            super.onAdFailedToLoad(i);
            Logger.debug(PostcallAdMobBannerPreloader.TAG, "onAdFailedToLoad");
            if (i == 0) {
                AnalyticsManager.getInstance().sendAdvertInternalErrorAction(PostcallAdMobBannerPreloader.this.ADMOB_BANNER);
                PostcallAdMobBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerPreloader.this.ADMOB_BANNER + " AD FAILED TO LOAD\n        - ERROR_CODE_INTERNAL_ERROR");
            } else if (i == 1) {
                AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallAdMobBannerPreloader.this.ADMOB_BANNER);
                PostcallAdMobBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerPreloader.this.ADMOB_BANNER + " AD FAILED TO LOAD\n        - ERROR_CODE_INVALID_REQUEST");
            } else if (i == 2) {
                AnalyticsManager.getInstance().sendAdvertNetworkErrorAction(PostcallAdMobBannerPreloader.this.ADMOB_BANNER);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerPreloader.this.ADMOB_BANNER + " AD FAILED TO LOAD\n        - ERROR_CODE_NETWORK_ERROR");
                if (!PostcallAdMobBannerPreloader.this.mAdvert.isBackupNetwork && PostcallAdMobBannerPreloader.this.mLoadAttempt < 8) {
                    AdvertManager.addAdNetworkFlowDebugInfo(" PRELOAD RETRY.. ");
                    PostcallAdMobBannerPreloader.this.mLoadAttempt++;
                    PostcallAdMobBannerPreloader.this.loadAdvert();
                    return;
                }
                PostcallAdMobBannerPreloader.this.mLoadAttempt = 0;
                PostcallAdMobBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
            } else if (i != 3) {
                AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallAdMobBannerPreloader.this.ADMOB_BANNER);
                PostcallAdMobBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerPreloader.this.ADMOB_BANNER + " AD FAILED TO LOAD");
            } else {
                AnalyticsManager.getInstance().sendAdvertNoFillErrorAction(PostcallAdMobBannerPreloader.this.ADMOB_BANNER);
                PostcallAdMobBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.NO_AD);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerPreloader.this.ADMOB_BANNER + " AD FAILED TO LOAD\n        - ERROR_CODE_NO_FILL");
            }
            PostcallAdMobBannerPreloader.this.reset();
            PostcallAdvertProxy.getInstance().preloadBackup(ApplicationObject.getContext());
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdImpression() {
            super.onAdImpression();
            Logger.debug(PostcallAdMobBannerPreloader.TAG, "onAdImpression");
            AnalyticsManager.getInstance().sendAdvertImpressionLoggedAction(PostcallAdMobBannerPreloader.this.ADMOB_BANNER);
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerPreloader.this.ADMOB_BANNER + " AD IMPRESSION LOGGED");
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLeftApplication() {
            super.onAdLeftApplication();
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerPreloader.this.ADMOB_BANNER + " AD LEFT APPLICATION");
            Logger.debug(PostcallAdMobBannerPreloader.TAG, "onAdLeftApplication");
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            super.onAdLoaded();
            Logger.debug(PostcallAdMobBannerPreloader.TAG, "onAdLoaded");
            if (PostcallAdMobBannerPreloader.this.mAdView == null) {
                PostcallAdMobBannerPreloader.this.mResponseInfo = null;
                PostcallAdMobBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerPreloader.this.ADMOB_BANNER + " ADVIEW LOST");
                PostcallAdMobBannerPreloader.this.reset();
                PostcallAdvertProxy.getInstance().preloadBackup(ApplicationObject.getContext());
                return;
            }
            AdSize adSize = PostcallAdMobBannerPreloader.this.mAdView.getAdSize();
            PostcallAdMobBannerPreloader postcallAdMobBannerPreloader = PostcallAdMobBannerPreloader.this;
            postcallAdMobBannerPreloader.mResponseInfo = postcallAdMobBannerPreloader.mAdView.getResponseInfo();
            PostcallAdMobBannerPreloader.this.mExpiredAdRunnable = new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdMobBannerPreloader$1$SJZ3WjRg_SRg4kRjURA5DpHCzcU
                @Override // java.lang.Runnable
                public final void run() {
                    PostcallAdMobBannerPreloader.C21021.this.lambda$onAdLoaded$0$PostcallAdMobBannerPreloader$1();
                }
            };
            PostcallAdMobBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.LOADED);
            PostcallAdMobBannerPreloader.this.mAdView.pause();
            StringBuilder sb = new StringBuilder();
            sb.append(PostcallAdMobBannerPreloader.this.ADMOB_BANNER);
            sb.append(" AD LOADED\n        - adSize: ");
            sb.append(adSize != null ? adSize.toString() : "");
            sb.append("\n        - responseId: ");
            sb.append(PostcallAdMobBannerPreloader.this.mResponseInfo != null ? PostcallAdMobBannerPreloader.this.mResponseInfo.getResponseId() : "");
            sb.append("\n        - mediationAdapter: ");
            String str = "";
            if (PostcallAdMobBannerPreloader.this.mResponseInfo != null) {
                str = PostcallAdMobBannerPreloader.this.mResponseInfo.getMediationAdapterClassName();
            }
            sb.append(str);
            AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            super.onAdOpened();
            Logger.debug(PostcallAdMobBannerPreloader.TAG, "onAdOpened");
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerPreloader.this.ADMOB_BANNER + " AD OPENED");
            AnalyticsManager.getInstance().sendAdvertOpenedAction(PostcallAdMobBannerPreloader.this.ADMOB_BANNER);
        }
    }

    private PostcallAdMobBannerPreloader() {
    }

    public static PostcallAdMobBannerPreloader getInstance() {
        PostcallAdMobBannerPreloader postcallAdMobBannerPreloader;
        synchronized (PostcallAdMobBannerPreloader.class) {
            try {
                if (mInstance == null) {
                    mInstance = new PostcallAdMobBannerPreloader();
                }
                postcallAdMobBannerPreloader = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return postcallAdMobBannerPreloader;
    }

    private void initEvents() {
        this.mAdView.setAdListener(this.adListener);
    }

    public static boolean isInstanciated() {
        boolean z;
        synchronized (PostcallAdMobBannerPreloader.class) {
            try {
                z = mInstance != null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public void loadAdvert() {
        if (this.mLocation != null) {
            AdView adView = this.mAdView;
            if (adView == null) {
                return;
            }
            adView.loadAd(new AdRequest.Builder().setLocation(this.mLocation).build());
            return;
        }
        AdView adView2 = this.mAdView;
        if (adView2 == null) {
            return;
        }
        adView2.loadAd(new AdRequest.Builder().build());
    }

    private void preloadStartError(String str) {
        setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
        AnalyticsManager.getInstance().sendAdvertErrorAction(this.ADMOB_BANNER);
        StringBuilder sb = new StringBuilder();
        sb.append(this.ADMOB_BANNER);
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

    public /* synthetic */ void lambda$preload$0$PostcallAdMobBannerPreloader() {
        preloadStartError("Timeout, stuck loading state..");
    }

    public void onDestroy() {
        reset();
        cleanInstance();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x00cf -> B:8:0x0060). Please submit an issue!!! */
    public void preload(Advert advert) {
        this.mLoadAttempt = 0;
        if (advert == null || advert.network == null) {
            this.mAdvert = null;
            preloadStartError("placement id processing error");
            return;
        }
        this.mAdvert = advert;
        this.sid = advert.network.placementId;
        try {
            AdvertManager.addAdNetworkFlowDebugInfo("\n");
            AdvertManager.addAdNetworkFlowDebugInfo(this.ADMOB_BANNER + " START \n        - " + advert.network.description + "\n        - " + this.sid);
        } catch (Exception e) {
        }
        AnalyticsManager.getInstance().sendAdvertRequestedAction(this.ADMOB_BANNER);
        reset();
        this.mTimeoutRunnable = new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdMobBannerPreloader$qw_F61pTSpcHA0_ZchhQ4fHanw0
            @Override // java.lang.Runnable
            public final void run() {
                PostcallAdMobBannerPreloader.this.lambda$preload$0$PostcallAdMobBannerPreloader();
            }
        };
        setState(PostcallAdvertPreloader.AdvertPreloadState.LOADING);
        try {
            AdView adView = new AdView(ApplicationObject.getContext());
            this.mAdView = adView;
            adView.setAdSize(AdSize.MEDIUM_RECTANGLE);
            this.mAdView.setAdUnitId(this.sid);
            initEvents();
            this.mLocation = LocationHelper.getInstance().getCurrentCoarseLocation();
            loadAdvert();
        } catch (Exception e2) {
            preloadStartError(e2.getMessage());
        }
    }

    public void reset() {
        cancelPreloadTimeoutHandler();
        AdView adView = this.mAdView;
        if (adView != null) {
            try {
                try {
                    adView.setAdListener(null);
                    this.mAdView.setVisibility(8);
                    this.mAdView.destroy();
                } catch (Exception e) {
                    String str = TAG;
                    Logger.error(str, "PostcallAdMobBannerPreloader reset error:" + e.toString());
                }
            } finally {
                this.mAdView = null;
            }
        }
    }
}
