package com.telguarder.features.advertisements.PostCallAds;

import android.location.Location;
import android.text.TextUtils;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.pubmatic.sdk.video.POBVastError;
import com.telguarder.ApplicationObject;
import com.telguarder.features.advertisements.Advert;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.advertisements.AdvertNetworkName;
import com.telguarder.features.advertisements.PostCallAds.PostcallAdManagerBannerPreloader;
import com.telguarder.features.advertisements.PostCallAds.PostcallAdvertPreloader;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.location.LocationHelper;
import com.telguarder.helpers.log.Logger;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader.class */
public class PostcallAdManagerBannerPreloader extends PostcallAdvertPreloader {
    private static final int MAX_RELOAD_ATTEMPTS = 8;
    private static final String TAG = "PostcallAdManagerBannerPreloader";
    private static PostcallAdManagerBannerPreloader mInstance;
    public PublisherAdView mAdView;
    private Advert mAdvert;
    public AdSize mCurrentAdSize;
    private Location mLocation;
    public ResponseInfo mResponseInfo;
    private String sid;
    public String AD_MANAGER_BANNER = AdvertNetworkName.AD_MANAGER_BANNER.toString().toLowerCase(Locale.ENGLISH) + "_preload";
    private int mLoadAttempt = 0;
    private AdListener adListener = new C20991();

    /* renamed from: com.telguarder.features.advertisements.PostCallAds.PostcallAdManagerBannerPreloader$1 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1.class */
    public class C20991 extends AdListener {
        C20991() {
            PostcallAdManagerBannerPreloader.this = r4;
        }

        public /* synthetic */ void lambda$onAdLoaded$0$PostcallAdManagerBannerPreloader$1() {
            try {
                PostcallAdManagerBannerPreloader.this.loadAdvert();
            } catch (Exception e) {
            }
        }

        @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.internal.ads.zzvc
        public void onAdClicked() {
            super.onAdClicked();
            Logger.debug(PostcallAdManagerBannerPreloader.TAG, "onAdClicked");
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerPreloader.this.AD_MANAGER_BANNER + " AD CLICKED");
            AnalyticsManager.getInstance().sendAdvertClickedAction(PostcallAdManagerBannerPreloader.this.AD_MANAGER_BANNER);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
            super.onAdClosed();
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerPreloader.this.AD_MANAGER_BANNER + " AD CLOSED");
            Logger.debug(PostcallAdManagerBannerPreloader.TAG, "onAdClosed");
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int i) {
            super.onAdFailedToLoad(i);
            Logger.debug(PostcallAdManagerBannerPreloader.TAG, "onAdFailedToLoad");
            if (i == 0) {
                AnalyticsManager.getInstance().sendAdvertInternalErrorAction(PostcallAdManagerBannerPreloader.this.AD_MANAGER_BANNER);
                PostcallAdManagerBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerPreloader.this.AD_MANAGER_BANNER + " AD FAILED TO LOAD\n        - ERROR_CODE_INTERNAL_ERROR");
            } else if (i == 1) {
                AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallAdManagerBannerPreloader.this.AD_MANAGER_BANNER);
                PostcallAdManagerBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerPreloader.this.AD_MANAGER_BANNER + " AD FAILED TO LOAD\n        - ERROR_CODE_INVALID_REQUEST");
            } else if (i == 2) {
                AnalyticsManager.getInstance().sendAdvertNetworkErrorAction(PostcallAdManagerBannerPreloader.this.AD_MANAGER_BANNER);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerPreloader.this.AD_MANAGER_BANNER + " AD FAILED TO LOAD\n        - ERROR_CODE_NETWORK_ERROR");
                if (!PostcallAdManagerBannerPreloader.this.mAdvert.isBackupNetwork && PostcallAdManagerBannerPreloader.this.mLoadAttempt < 8) {
                    AdvertManager.addAdNetworkFlowDebugInfo(" PRELOAD RETRY.. ");
                    PostcallAdManagerBannerPreloader.this.mLoadAttempt++;
                    PostcallAdManagerBannerPreloader.this.loadAdvert();
                    return;
                }
                PostcallAdManagerBannerPreloader.this.mLoadAttempt = 0;
                PostcallAdManagerBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
            } else if (i != 3) {
                AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallAdManagerBannerPreloader.this.AD_MANAGER_BANNER);
                PostcallAdManagerBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerPreloader.this.AD_MANAGER_BANNER + " AD FAILED TO LOAD");
            } else {
                AnalyticsManager.getInstance().sendAdvertNoFillErrorAction(PostcallAdManagerBannerPreloader.this.AD_MANAGER_BANNER);
                PostcallAdManagerBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.NO_AD);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerPreloader.this.AD_MANAGER_BANNER + " AD FAILED TO LOAD\n        - ERROR_CODE_NO_FILL");
            }
            PostcallAdManagerBannerPreloader.this.reset();
            PostcallAdvertProxy.getInstance().preloadBackup(ApplicationObject.getContext());
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdImpression() {
            super.onAdImpression();
            Logger.debug(PostcallAdManagerBannerPreloader.TAG, "onAdImpression");
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerPreloader.this.AD_MANAGER_BANNER + " AD IMPRESSION LOGGED");
            AnalyticsManager.getInstance().sendAdvertImpressionLoggedAction(PostcallAdManagerBannerPreloader.this.AD_MANAGER_BANNER);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLeftApplication() {
            super.onAdLeftApplication();
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerPreloader.this.AD_MANAGER_BANNER + " AD LEFT APPLICATION");
            Logger.debug(PostcallAdManagerBannerPreloader.TAG, "onAdLeftApplication");
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            super.onAdLoaded();
            Logger.debug(PostcallAdManagerBannerPreloader.TAG, "onAdLoaded");
            if (PostcallAdManagerBannerPreloader.this.mAdView == null) {
                PostcallAdManagerBannerPreloader.this.mCurrentAdSize = null;
                PostcallAdManagerBannerPreloader.this.mResponseInfo = null;
                PostcallAdManagerBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerPreloader.this.AD_MANAGER_BANNER + " ADVIEW LOST");
                PostcallAdManagerBannerPreloader.this.reset();
                PostcallAdvertProxy.getInstance().preloadBackup(ApplicationObject.getContext());
                return;
            }
            PostcallAdManagerBannerPreloader postcallAdManagerBannerPreloader = PostcallAdManagerBannerPreloader.this;
            postcallAdManagerBannerPreloader.mCurrentAdSize = postcallAdManagerBannerPreloader.mAdView.getAdSize();
            PostcallAdManagerBannerPreloader postcallAdManagerBannerPreloader2 = PostcallAdManagerBannerPreloader.this;
            postcallAdManagerBannerPreloader2.mResponseInfo = postcallAdManagerBannerPreloader2.mAdView.getResponseInfo();
            PostcallAdManagerBannerPreloader.this.mExpiredAdRunnable = new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdManagerBannerPreloader$1$Lnp3LZqj_CeocMMUqTjx62sCQUA
                @Override // java.lang.Runnable
                public final void run() {
                    PostcallAdManagerBannerPreloader.C20991.this.lambda$onAdLoaded$0$PostcallAdManagerBannerPreloader$1();
                }
            };
            PostcallAdManagerBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.LOADED);
            PostcallAdManagerBannerPreloader.this.mAdView.pause();
            StringBuilder sb = new StringBuilder();
            sb.append(PostcallAdManagerBannerPreloader.this.AD_MANAGER_BANNER);
            sb.append(" AD LOADED\n        - adSize: ");
            sb.append(PostcallAdManagerBannerPreloader.this.mCurrentAdSize != null ? PostcallAdManagerBannerPreloader.this.mCurrentAdSize.toString() : "");
            sb.append("\n        - responseId: ");
            sb.append(PostcallAdManagerBannerPreloader.this.mResponseInfo != null ? PostcallAdManagerBannerPreloader.this.mResponseInfo.getResponseId() : "");
            sb.append("\n        - mediationAdapter: ");
            String str = "";
            if (PostcallAdManagerBannerPreloader.this.mResponseInfo != null) {
                str = PostcallAdManagerBannerPreloader.this.mResponseInfo.getMediationAdapterClassName();
            }
            sb.append(str);
            AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            super.onAdOpened();
            Logger.debug(PostcallAdManagerBannerPreloader.TAG, "onAdOpened");
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerPreloader.this.AD_MANAGER_BANNER + " AD OPENED");
            AnalyticsManager.getInstance().sendAdvertOpenedAction(PostcallAdManagerBannerPreloader.this.AD_MANAGER_BANNER);
        }
    }

    private PostcallAdManagerBannerPreloader() {
    }

    public static PostcallAdManagerBannerPreloader getInstance() {
        PostcallAdManagerBannerPreloader postcallAdManagerBannerPreloader;
        synchronized (PostcallAdManagerBannerPreloader.class) {
            try {
                if (mInstance == null) {
                    mInstance = new PostcallAdManagerBannerPreloader();
                }
                postcallAdManagerBannerPreloader = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return postcallAdManagerBannerPreloader;
    }

    private void initEvents() {
        this.mAdView.setAdListener(this.adListener);
    }

    public static boolean isInstanciated() {
        boolean z;
        synchronized (PostcallAdManagerBannerPreloader.class) {
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
            PublisherAdView publisherAdView = this.mAdView;
            if (publisherAdView == null) {
                return;
            }
            publisherAdView.loadAd(new PublisherAdRequest.Builder().setLocation(this.mLocation).build());
            return;
        }
        PublisherAdView publisherAdView2 = this.mAdView;
        if (publisherAdView2 == null) {
            return;
        }
        publisherAdView2.loadAd(new PublisherAdRequest.Builder().build());
    }

    private void preloadStartError(String str) {
        setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
        AnalyticsManager.getInstance().sendAdvertErrorAction(this.AD_MANAGER_BANNER);
        StringBuilder sb = new StringBuilder();
        sb.append(this.AD_MANAGER_BANNER);
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

    public /* synthetic */ void lambda$preload$0$PostcallAdManagerBannerPreloader() {
        preloadStartError("Timeout, stuck loading state..");
    }

    public void onDestroy() {
        reset();
        cleanInstance();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x01a4 -> B:8:0x0060). Please submit an issue!!! */
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
            AdvertManager.addAdNetworkFlowDebugInfo(this.AD_MANAGER_BANNER + " START \n        - " + advert.network.description + "\n        - " + this.sid);
        } catch (Exception e) {
        }
        AnalyticsManager.getInstance().sendAdvertRequestedAction(this.AD_MANAGER_BANNER);
        reset();
        this.mTimeoutRunnable = new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdManagerBannerPreloader$Kuyi49LLz3jT0iBQbVW4nWwSeW0
            @Override // java.lang.Runnable
            public final void run() {
                PostcallAdManagerBannerPreloader.this.lambda$preload$0$PostcallAdManagerBannerPreloader();
            }
        };
        setState(PostcallAdvertPreloader.AdvertPreloadState.LOADING);
        try {
            PublisherAdView publisherAdView = new PublisherAdView(ApplicationObject.getContext());
            this.mAdView = publisherAdView;
            publisherAdView.setAdSizes(new AdSize(320, 50), new AdSize(300, 100), new AdSize(300, 250), new AdSize(320, 250), new AdSize(336, 280), new AdSize(300, 300), new AdSize(320, 320), new AdSize(320, POBVastError.GENERAL_LINEAR_ERROR), new AdSize(320, 480), new AdSize(300, POBVastError.GENERAL_COMPANION_AD_ERROR));
            this.mCurrentAdSize = null;
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
        PublisherAdView publisherAdView = this.mAdView;
        if (publisherAdView != null) {
            try {
                try {
                    publisherAdView.setAdListener(null);
                    this.mAdView.setVisibility(8);
                    this.mAdView.destroy();
                } catch (Exception e) {
                    String str = TAG;
                    Logger.error(str, "PostcallAdManagerPreloader reset error:" + e.toString());
                }
            } finally {
                this.mAdView = null;
            }
        }
    }
}
