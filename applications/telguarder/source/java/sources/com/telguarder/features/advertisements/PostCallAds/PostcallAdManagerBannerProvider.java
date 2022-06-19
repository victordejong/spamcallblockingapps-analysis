package com.telguarder.features.advertisements.PostCallAds;

import android.content.Context;
import android.location.Location;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.pubmatic.sdk.omsdk.POBOMSDKLogConstants;
import com.pubmatic.sdk.video.POBVastError;
import com.telguarder.features.advertisements.Advert;
import com.telguarder.features.advertisements.AdvertContainer;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.advertisements.AdvertNetworkName;
import com.telguarder.features.advertisements.PostCallAds.PostcallAdvertPreloader;
import com.telguarder.features.postCallStatistics.CSAdRowViewHolder;
import com.telguarder.features.postCallStatistics.CSViewAdapter;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.location.LocationHelper;
import com.telguarder.helpers.log.Logger;
import com.telguarder.helpers.p022ui.UiHelper;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider.class */
public class PostcallAdManagerBannerProvider extends PostcallAdvertProvider {
    private static final String TAG = "PostcallAdManagerBannerProvider";
    private PublisherAdView mAdView;
    private Advert mAdvert;
    private AdSize mCurrentAdSize;
    private ResponseInfo mResponseInfo;
    private String AD_MANAGER_BANNER = AdvertNetworkName.AD_MANAGER_BANNER.toString().toLowerCase(Locale.ENGLISH);
    private boolean visibilityIssueReload = false;
    private final Runnable mTimeoutRunnable = new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdManagerBannerProvider$WP2IgPkLRgAoy6UN_GbKHONhUeE
        @Override // java.lang.Runnable
        public final void run() {
            PostcallAdManagerBannerProvider.this.lambda$new$0$PostcallAdManagerBannerProvider();
        }
    };
    private AdListener adListener = new AdListener() { // from class: com.telguarder.features.advertisements.PostCallAds.PostcallAdManagerBannerProvider.1
        @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.internal.ads.zzvc
        public void onAdClicked() {
            super.onAdClicked();
            Logger.debug(PostcallAdManagerBannerProvider.TAG, "onAdClicked");
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerProvider.this.AD_MANAGER_BANNER + " AD CLICKED");
            AnalyticsManager.getInstance().sendAdvertClickedAction(PostcallAdManagerBannerProvider.this.AD_MANAGER_BANNER);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
            super.onAdClosed();
            PostcallAdManagerBannerProvider.this.closed = true;
            PostcallAdvertProxy.getInstance().hideAdInfoText();
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerProvider.this.AD_MANAGER_BANNER + " AD CLOSED");
            Logger.debug(PostcallAdManagerBannerProvider.TAG, "onAdClosed");
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int i) {
            super.onAdFailedToLoad(i);
            if (PostcallAdManagerBannerPreloader.isInstanciated()) {
                PostcallAdManagerBannerPreloader.getInstance().cancelAllPreloadTimeoutHandlers();
            }
            Logger.debug(PostcallAdManagerBannerProvider.TAG, "onAdFailedToLoad");
            if (i == 0) {
                AnalyticsManager.getInstance().sendAdvertInternalErrorAction(PostcallAdManagerBannerProvider.this.AD_MANAGER_BANNER);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerProvider.this.AD_MANAGER_BANNER + " AD FAILED TO LOAD\n        - ERROR_CODE_INTERNAL_ERROR");
            } else if (i == 1) {
                AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallAdManagerBannerProvider.this.AD_MANAGER_BANNER);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerProvider.this.AD_MANAGER_BANNER + " AD FAILED TO LOAD\n        - ERROR_CODE_INVALID_REQUEST");
            } else if (i == 2) {
                AnalyticsManager.getInstance().sendAdvertNetworkErrorAction(PostcallAdManagerBannerProvider.this.AD_MANAGER_BANNER);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerProvider.this.AD_MANAGER_BANNER + " AD FAILED TO LOAD\n        - ERROR_CODE_NETWORK_ERROR");
            } else if (i != 3) {
                AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallAdManagerBannerProvider.this.AD_MANAGER_BANNER);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerProvider.this.AD_MANAGER_BANNER + " AD FAILED TO LOAD");
            } else {
                AnalyticsManager.getInstance().sendAdvertNoFillErrorAction(PostcallAdManagerBannerProvider.this.AD_MANAGER_BANNER);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerProvider.this.AD_MANAGER_BANNER + " AD FAILED TO LOAD\n        - ERROR_CODE_NO_FILL");
            }
            PostcallAdManagerBannerProvider.this.error();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdImpression() {
            super.onAdImpression();
            if (PostcallAdManagerBannerPreloader.isInstanciated()) {
                PostcallAdManagerBannerPreloader.getInstance().cancelAllPreloadTimeoutHandlers();
            }
            Logger.debug(PostcallAdManagerBannerProvider.TAG, "onAdImpression");
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerProvider.this.AD_MANAGER_BANNER + " AD IMPRESSION LOGGED");
            AnalyticsManager.getInstance().sendAdvertImpressionLoggedAction(PostcallAdManagerBannerProvider.this.AD_MANAGER_BANNER);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLeftApplication() {
            super.onAdLeftApplication();
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerProvider.this.AD_MANAGER_BANNER + " AD LEFT APPLICATION");
            Logger.debug(PostcallAdManagerBannerProvider.TAG, "onAdLeftApplication");
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            super.onAdLoaded();
            if (PostcallAdManagerBannerPreloader.isInstanciated()) {
                PostcallAdManagerBannerPreloader.getInstance().cancelAllPreloadTimeoutHandlers();
            }
            Logger.debug(PostcallAdManagerBannerProvider.TAG, "onAdLoaded");
            if (PostcallAdManagerBannerProvider.this.mAdView == null) {
                PostcallAdManagerBannerProvider.this.mCurrentAdSize = null;
                PostcallAdManagerBannerProvider.this.mResponseInfo = null;
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerProvider.this.AD_MANAGER_BANNER + " ADVIEW LOST");
                PostcallAdManagerBannerProvider.this.error();
                return;
            }
            PostcallAdManagerBannerProvider postcallAdManagerBannerProvider = PostcallAdManagerBannerProvider.this;
            postcallAdManagerBannerProvider.mCurrentAdSize = postcallAdManagerBannerProvider.mAdView.getAdSize();
            PostcallAdManagerBannerProvider postcallAdManagerBannerProvider2 = PostcallAdManagerBannerProvider.this;
            postcallAdManagerBannerProvider2.mResponseInfo = postcallAdManagerBannerProvider2.mAdView.getResponseInfo();
            PostcallAdManagerBannerProvider.this.addAdManagerBannerView(false);
            StringBuilder sb = new StringBuilder();
            sb.append(PostcallAdManagerBannerProvider.this.AD_MANAGER_BANNER);
            sb.append(" AD LOADED\n        - adSize: ");
            sb.append(PostcallAdManagerBannerProvider.this.mCurrentAdSize != null ? PostcallAdManagerBannerProvider.this.mCurrentAdSize.toString() : "");
            sb.append("\n        - responseId: ");
            sb.append(PostcallAdManagerBannerProvider.this.mResponseInfo != null ? PostcallAdManagerBannerProvider.this.mResponseInfo.getResponseId() : "");
            sb.append("\n        - mediationAdapter: ");
            String str = "";
            if (PostcallAdManagerBannerProvider.this.mResponseInfo != null) {
                str = PostcallAdManagerBannerProvider.this.mResponseInfo.getMediationAdapterClassName();
            }
            sb.append(str);
            AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            super.onAdOpened();
            Logger.debug(PostcallAdManagerBannerProvider.TAG, "onAdOpened");
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdManagerBannerProvider.this.AD_MANAGER_BANNER + " AD OPENED");
            AnalyticsManager.getInstance().sendAdvertOpenedAction(PostcallAdManagerBannerProvider.this.AD_MANAGER_BANNER);
        }
    };

    /* renamed from: com.telguarder.features.advertisements.PostCallAds.PostcallAdManagerBannerProvider$2 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$2.class */
    public static /* synthetic */ class C21012 {

        /* renamed from: $SwitchMap$com$telguarder$features$advertisements$PostCallAds$PostcallAdvertPreloader$AdvertPreloadState */
        static final /* synthetic */ int[] f1278xca06b7a7;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[PostcallAdvertPreloader.AdvertPreloadState.values().length];
            f1278xca06b7a7 = iArr;
            try {
                iArr[PostcallAdvertPreloader.AdvertPreloadState.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1278xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.LOADED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1278xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1278xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.NO_AD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public PostcallAdManagerBannerProvider(Advert advert, AppCompatActivity appCompatActivity) {
        super(advert, appCompatActivity);
        if (advert == null || advert.network == null) {
            return;
        }
        this.mAdvert = advert;
    }

    private void adWasNotVisible() {
        if (this.visibilityIssueReload) {
            AdvertManager.addAdNetworkFlowDebugInfo(this.AD_MANAGER_BANNER + " AD SHOW ERROR\n        - ad was not visible again");
            error();
            return;
        }
        this.visibilityIssueReload = true;
        AdvertManager.addAdNetworkFlowDebugInfo(this.AD_MANAGER_BANNER + " AD SHOW ERROR\n        - ad was not visible");
        this.adPresented = false;
        this.holderPreparedAlready = false;
        this.adShowBeginTimestamp = 0L;
        addAdManagerBannerView(true);
    }

    private void adWasVisible() {
        String str;
        PublisherAdView publisherAdView = this.mAdView;
        if (publisherAdView != null) {
            try {
                publisherAdView.resume();
            } catch (Exception e) {
            }
        }
        this.mVisibilityPrcnt = UiHelper.getVisibilityPrcnt(this.mAdView);
        StringBuilder sb = new StringBuilder();
        sb.append(this.AD_MANAGER_BANNER);
        sb.append(" AD SHOW SUCCESS\n        - visible area: ");
        if (this.mVisibilityPrcnt != -1) {
            str = this.mVisibilityPrcnt + "%";
        } else {
            str = "error";
        }
        sb.append(str);
        AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
        this.adShowBeginTimestamp = System.currentTimeMillis();
        this.adPresented = true;
        AnalyticsManager.getInstance().sendAdvertLoadedAction(this.AD_MANAGER_BANNER);
        if (PostcallAdManagerBannerPreloader.isInstanciated()) {
            PostcallAdManagerBannerPreloader.getInstance().cleanInstance();
        }
        if (this.mOnSuccess != null) {
            this.mOnSuccess.run();
        }
    }

    public void addAdManagerBannerView(final Boolean bool) {
        if (CSViewAdapter.isInstantiated()) {
            CSViewAdapter.getInstance().setAdHolderCallbackInterface(new CSAdRowViewHolder.AdHolderCallbackInterface() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdManagerBannerProvider$_O2kkGOS_nvv8SbgNY9EFohBASY
                @Override // com.telguarder.features.postCallStatistics.CSAdRowViewHolder.AdHolderCallbackInterface
                public final void onDataBinding(ViewGroup viewGroup) {
                    PostcallAdManagerBannerProvider.this.lambda$addAdManagerBannerView$1$PostcallAdManagerBannerProvider(bool, viewGroup);
                }
            });
        } else {
            error();
        }
    }

    private void addViewToTheHolder() {
        if (this.mHolder == null || !(this.mHolder instanceof AdvertContainer) || this.mAdView == null) {
            AdvertManager.addAdNetworkFlowDebugInfo(this.AD_MANAGER_BANNER + " ERROR: \n        - holder or view not available");
            AnalyticsManager.getInstance().sendAdvertErrorAction(this.AD_MANAGER_BANNER);
            error();
            return;
        }
        try {
            if (this.mCurrentAdSize != null) {
                ((AdvertContainer) this.mHolder).addViewToHolder(getHostActivity(), this.mCurrentAdSize.getWidth(), this.mCurrentAdSize.getHeight(), this.mAdView, new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdManagerBannerProvider$ysMW_xWSPIgv4O2uFNsR59qRFsU
                    @Override // java.lang.Runnable
                    public final void run() {
                        PostcallAdManagerBannerProvider.this.lambda$addViewToTheHolder$2$PostcallAdManagerBannerProvider();
                    }
                });
            } else {
                ((AdvertContainer) this.mHolder).addViewToHolder(getHostActivity(), 0, 0, this.mAdView, new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdManagerBannerProvider$JDEjWxPvRKTc5BgbcvhoeIELye0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PostcallAdManagerBannerProvider.this.lambda$addViewToTheHolder$3$PostcallAdManagerBannerProvider();
                    }
                });
            }
        } catch (Exception e) {
            AdvertManager.addAdNetworkFlowDebugInfo(this.AD_MANAGER_BANNER + " ERROR: \n        - " + e.getMessage());
            AnalyticsManager.getInstance().sendAdvertErrorAction(this.AD_MANAGER_BANNER);
            error();
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x01b2 -> B:8:0x0061). Please submit an issue!!! */
    private void createAndLoadAd() {
        if (this.mAdView != null) {
            onHideViews();
        }
        try {
            this.AD_MANAGER_BANNER = AdvertNetworkName.AD_MANAGER_BANNER.toString().toLowerCase(Locale.ENGLISH);
            try {
                AdvertManager.addAdNetworkFlowDebugInfo(this.AD_MANAGER_BANNER + " CREATE AND LOAD \n        - " + this.mAdvert.network.description + "\n        - " + this.mAdvert.network.placementId);
            } catch (Exception e) {
            }
            AnalyticsManager.getInstance().sendAdvertRequestedAction(this.AD_MANAGER_BANNER);
            PublisherAdView publisherAdView = new PublisherAdView(getHostActivity());
            this.mAdView = publisherAdView;
            publisherAdView.setAdSizes(new AdSize(320, 50), new AdSize(300, 100), new AdSize(300, 250), new AdSize(320, 250), new AdSize(336, 280), new AdSize(300, 300), new AdSize(320, 320), new AdSize(320, POBVastError.GENERAL_LINEAR_ERROR), new AdSize(320, 480), new AdSize(300, POBVastError.GENERAL_COMPANION_AD_ERROR));
            this.mCurrentAdSize = null;
            this.mAdView.setAdUnitId(this.mAdvert.network.placementId);
            initEvents();
            addAdManagerBannerView(true);
        } catch (Exception e2) {
            AnalyticsManager.getInstance().sendAdvertErrorAction(this.AD_MANAGER_BANNER);
            AdvertManager.addAdNetworkFlowDebugInfo(this.AD_MANAGER_BANNER + " ERROR: \n        - " + e2.getMessage());
            error();
        }
    }

    private void destroyAdView() {
        PublisherAdView publisherAdView = this.mAdView;
        if (publisherAdView != null) {
            try {
                try {
                    publisherAdView.setAdListener(null);
                    this.mAdView.setVisibility(8);
                    this.mAdView.destroy();
                } catch (Exception e) {
                    String str = TAG;
                    Logger.error(str, "onHideViews error:" + e.toString());
                }
            } finally {
                this.mAdView = null;
            }
        }
    }

    public void error() {
        this.adPresented = false;
        this.holderPreparedAlready = false;
        this.adShowBeginTimestamp = 0L;
        if (PostcallAdManagerBannerPreloader.isInstanciated()) {
            PostcallAdManagerBannerPreloader.getInstance().onDestroy();
        }
        if (this.mOnError != null) {
            this.mOnError.run();
        }
    }

    private void handleErrorState(String str) {
        AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(this.AD_MANAGER_BANNER, str, this.mAdvert);
        error();
    }

    private void handleLoadinState() {
        PostcallAdManagerBannerPreloader.getInstance().mTimeoutRunnable = this.mTimeoutRunnable;
        this.mAdView = PostcallAdManagerBannerPreloader.getInstance().mAdView;
        this.mCurrentAdSize = PostcallAdManagerBannerPreloader.getInstance().mCurrentAdSize;
        initEvents();
    }

    private void initEvents() {
        this.mAdView.setAdListener(this.adListener);
    }

    private void logVisibility() {
        if (this.adShowBeginTimestamp > 0) {
            AnalyticsManager.getInstance().sendAdvertVisibilityTimeAction(this.AD_MANAGER_BANNER, System.currentTimeMillis() - this.adShowBeginTimestamp, this.mVisibilityPrcnt);
            this.adShowBeginTimestamp = 0L;
        }
    }

    private void requestAdManagerBanner() {
        AdvertManager.addAdNetworkFlowDebugInfo("\n");
        if (!PostcallAdvertProxy.getInstance().mLoadStarted || !PostcallAdManagerBannerPreloader.isInstanciated() || PostcallAdManagerBannerPreloader.getInstance().getState() == null) {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(this.AD_MANAGER_BANNER, null, this.mAdvert);
            createAndLoadAd();
            return;
        }
        int i = C21012.f1278xca06b7a7[PostcallAdManagerBannerPreloader.getInstance().getState().ordinal()];
        if (i == 1) {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(this.AD_MANAGER_BANNER, "LOADING", this.mAdvert);
            handleLoadinState();
        } else if (i == 2) {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(this.AD_MANAGER_BANNER, POBOMSDKLogConstants.MSG_OMSDK_LOADED_EVENT, this.mAdvert);
            this.mAdView = PostcallAdManagerBannerPreloader.getInstance().mAdView;
            this.mCurrentAdSize = PostcallAdManagerBannerPreloader.getInstance().mCurrentAdSize;
            initEvents();
            addAdManagerBannerView(false);
        } else if (i == 3) {
            handleErrorState("ERROR");
        } else if (i != 4) {
        } else {
            handleErrorState("NO_AD");
        }
    }

    /* renamed from: success */
    public void lambda$addViewToTheHolder$3$PostcallAdManagerBannerProvider() {
        if (!this.adPresented) {
            if (!(this.mHolder instanceof AdvertContainer)) {
                adWasNotVisible();
            } else if (((AdvertContainer) this.mHolder).containerAndChildVisible) {
                adWasVisible();
            } else {
                adWasNotVisible();
            }
        }
    }

    public /* synthetic */ void lambda$addAdManagerBannerView$1$PostcallAdManagerBannerProvider(Boolean bool, ViewGroup viewGroup) {
        try {
            if (this.holderPreparedAlready) {
                return;
            }
            if (this.adPresented && viewGroup == this.mHolder) {
                return;
            }
            if (bool.booleanValue() && this.newLoadStartedAlready) {
                return;
            }
            if (viewGroup != null && this.mAdView != null && PostcallAdvertProxy.getInstance().mLoadStarted) {
                if (!bool.booleanValue()) {
                    this.holderPreparedAlready = true;
                    this.mHolder = viewGroup;
                    addViewToTheHolder();
                    return;
                }
                this.newLoadStartedAlready = true;
                if (this.mAdView == null) {
                    return;
                }
                Location currentCoarseLocation = LocationHelper.getInstance().getCurrentCoarseLocation();
                if (currentCoarseLocation != null) {
                    PublisherAdView publisherAdView = this.mAdView;
                    if (publisherAdView == null) {
                        return;
                    }
                    publisherAdView.loadAd(new PublisherAdRequest.Builder().setLocation(currentCoarseLocation).build());
                    return;
                }
                PublisherAdView publisherAdView2 = this.mAdView;
                if (publisherAdView2 == null) {
                    return;
                }
                publisherAdView2.loadAd(new PublisherAdRequest.Builder().build());
                return;
            }
            error();
        } catch (Exception e) {
            AdvertManager.addAdNetworkFlowDebugInfo(this.AD_MANAGER_BANNER + " ERROR: \n        - " + e.getMessage());
            AnalyticsManager.getInstance().sendAdvertErrorAction(this.AD_MANAGER_BANNER);
            error();
        }
    }

    public /* synthetic */ void lambda$new$0$PostcallAdManagerBannerProvider() {
        AnalyticsManager.getInstance().sendAdvertErrorAction(this.AD_MANAGER_BANNER);
        AdvertManager.addAdNetworkFlowDebugInfo(this.AD_MANAGER_BANNER + " ERROR: \n        - Timeout, stuck loading state..");
        error();
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onDestroy() {
        if (!this.adPresented) {
            AnalyticsManager.getInstance().sendAdvertMissedAction(this.AD_MANAGER_BANNER);
        }
        if (PostcallAdManagerBannerPreloader.isInstanciated()) {
            PostcallAdManagerBannerPreloader.getInstance().onDestroy();
        }
        destroyAdView();
        super.onDestroy();
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onHideViews() {
        if (this.mHolder != null && (this.mHolder instanceof AdvertContainer)) {
            ((AdvertContainer) this.mHolder).clearVisibilityHandlers();
        }
        logVisibility();
        destroyAdView();
        if (PostcallAdManagerBannerPreloader.isInstanciated()) {
            PostcallAdManagerBannerPreloader.getInstance().reset();
        }
        this.adPresented = false;
        this.holderPreparedAlready = false;
        super.onHideViews();
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onLoadAd(Context context, Runnable runnable, Runnable runnable2) {
        super.onLoadAd(context, runnable, runnable2);
        this.adShowBeginTimestamp = 0L;
        requestAdManagerBanner();
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onPause() {
        super.onPause();
        PublisherAdView publisherAdView = this.mAdView;
        if (publisherAdView != null) {
            try {
                publisherAdView.pause();
            } catch (Exception e) {
            }
        }
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onResume() {
        super.onResume();
        PublisherAdView publisherAdView = this.mAdView;
        if (publisherAdView != null) {
            try {
                publisherAdView.resume();
            } catch (Exception e) {
            }
        }
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onStop() {
        logVisibility();
        super.onStop();
    }
}
