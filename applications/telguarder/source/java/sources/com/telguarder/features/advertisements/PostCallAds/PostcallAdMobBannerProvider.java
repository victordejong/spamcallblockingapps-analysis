package com.telguarder.features.advertisements.PostCallAds;

import android.content.Context;
import android.location.Location;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.ResponseInfo;
import com.pubmatic.sdk.omsdk.POBOMSDKLogConstants;
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
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider.class */
public class PostcallAdMobBannerProvider extends PostcallAdvertProvider {
    private static final String TAG = "PostcallAdMobBannerProvider";
    private AdView mAdView;
    private Advert mAdvert;
    public ResponseInfo mResponseInfo;
    private String ADMOB_BANNER = AdvertNetworkName.ADMOB_BANNER.toString().toLowerCase(Locale.ENGLISH);
    private boolean visibilityIssueReload = false;
    private final Runnable mTimeoutRunnable = new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdMobBannerProvider$75QsfSvzQT32uwXTJpps4FNia8k
        @Override // java.lang.Runnable
        public final void run() {
            PostcallAdMobBannerProvider.this.lambda$new$0$PostcallAdMobBannerProvider();
        }
    };
    private AdListener adListener = new AdListener() { // from class: com.telguarder.features.advertisements.PostCallAds.PostcallAdMobBannerProvider.1
        @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.internal.ads.zzvc
        public void onAdClicked() {
            super.onAdClicked();
            Logger.debug(PostcallAdMobBannerProvider.TAG, "onAdClicked");
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerProvider.this.ADMOB_BANNER + " AD CLICKED");
            AnalyticsManager.getInstance().sendAdvertClickedAction(PostcallAdMobBannerProvider.this.ADMOB_BANNER);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
            super.onAdClosed();
            PostcallAdMobBannerProvider.this.closed = true;
            PostcallAdvertProxy.getInstance().hideAdInfoText();
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerProvider.this.ADMOB_BANNER + " AD CLOSED");
            Logger.debug(PostcallAdMobBannerProvider.TAG, "onAdClosed");
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int i) {
            super.onAdFailedToLoad(i);
            if (PostcallAdMobBannerPreloader.isInstanciated()) {
                PostcallAdMobBannerPreloader.getInstance().cancelAllPreloadTimeoutHandlers();
            }
            Logger.debug(PostcallAdMobBannerProvider.TAG, "onAdFailedToLoad");
            if (i == 0) {
                AnalyticsManager.getInstance().sendAdvertInternalErrorAction(PostcallAdMobBannerProvider.this.ADMOB_BANNER);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerProvider.this.ADMOB_BANNER + " AD FAILED TO LOAD\n        - ERROR_CODE_INTERNAL_ERROR");
            } else if (i == 1) {
                AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallAdMobBannerProvider.this.ADMOB_BANNER);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerProvider.this.ADMOB_BANNER + " AD FAILED TO LOAD\n        - ERROR_CODE_INVALID_REQUEST");
            } else if (i == 2) {
                AnalyticsManager.getInstance().sendAdvertNetworkErrorAction(PostcallAdMobBannerProvider.this.ADMOB_BANNER);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerProvider.this.ADMOB_BANNER + " AD FAILED TO LOAD\n        - ERROR_CODE_NETWORK_ERROR");
            } else if (i != 3) {
                AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallAdMobBannerProvider.this.ADMOB_BANNER);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerProvider.this.ADMOB_BANNER + " AD FAILED TO LOAD");
            } else {
                AnalyticsManager.getInstance().sendAdvertNoFillErrorAction(PostcallAdMobBannerProvider.this.ADMOB_BANNER);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerProvider.this.ADMOB_BANNER + " AD FAILED TO LOAD\n        - ERROR_CODE_NO_FILL");
            }
            PostcallAdMobBannerProvider.this.error();
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdImpression() {
            super.onAdImpression();
            if (PostcallAdMobBannerPreloader.isInstanciated()) {
                PostcallAdMobBannerPreloader.getInstance().cancelAllPreloadTimeoutHandlers();
            }
            Logger.debug(PostcallAdMobBannerProvider.TAG, "onAdImpression");
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerProvider.this.ADMOB_BANNER + " AD IMPRESSION LOGGED");
            AnalyticsManager.getInstance().sendAdvertImpressionLoggedAction(PostcallAdMobBannerProvider.this.ADMOB_BANNER);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLeftApplication() {
            super.onAdLeftApplication();
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerProvider.this.ADMOB_BANNER + " AD LEFT APPLICATION");
            Logger.debug(PostcallAdMobBannerProvider.TAG, "onAdLeftApplication");
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            super.onAdLoaded();
            if (PostcallAdMobBannerPreloader.isInstanciated()) {
                PostcallAdMobBannerPreloader.getInstance().cancelAllPreloadTimeoutHandlers();
            }
            Logger.debug(PostcallAdMobBannerProvider.TAG, "onAdLoaded");
            if (PostcallAdMobBannerProvider.this.mAdView == null) {
                PostcallAdMobBannerProvider.this.mResponseInfo = null;
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerProvider.this.ADMOB_BANNER + " ADVIEW LOST");
                PostcallAdMobBannerProvider.this.error();
                return;
            }
            AdSize adSize = PostcallAdMobBannerProvider.this.mAdView.getAdSize();
            PostcallAdMobBannerProvider postcallAdMobBannerProvider = PostcallAdMobBannerProvider.this;
            postcallAdMobBannerProvider.mResponseInfo = postcallAdMobBannerProvider.mAdView.getResponseInfo();
            PostcallAdMobBannerProvider.this.addAdMobBannerView(false);
            StringBuilder sb = new StringBuilder();
            sb.append(PostcallAdMobBannerProvider.this.ADMOB_BANNER);
            sb.append(" AD LOADED\n        - adSize: ");
            sb.append(adSize != null ? adSize.toString() : "");
            sb.append("\n        - responseId: ");
            sb.append(PostcallAdMobBannerProvider.this.mResponseInfo != null ? PostcallAdMobBannerProvider.this.mResponseInfo.getResponseId() : "");
            sb.append("\n        - mediationAdapter: ");
            String str = "";
            if (PostcallAdMobBannerProvider.this.mResponseInfo != null) {
                str = PostcallAdMobBannerProvider.this.mResponseInfo.getMediationAdapterClassName();
            }
            sb.append(str);
            AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            super.onAdOpened();
            Logger.debug(PostcallAdMobBannerProvider.TAG, "onAdOpened");
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallAdMobBannerProvider.this.ADMOB_BANNER + " AD OPENED");
            AnalyticsManager.getInstance().sendAdvertOpenedAction(PostcallAdMobBannerProvider.this.ADMOB_BANNER);
        }
    };

    /* renamed from: com.telguarder.features.advertisements.PostCallAds.PostcallAdMobBannerProvider$2 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$2.class */
    public static /* synthetic */ class C21042 {

        /* renamed from: $SwitchMap$com$telguarder$features$advertisements$PostCallAds$PostcallAdvertPreloader$AdvertPreloadState */
        static final /* synthetic */ int[] f1279xca06b7a7;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[PostcallAdvertPreloader.AdvertPreloadState.values().length];
            f1279xca06b7a7 = iArr;
            try {
                iArr[PostcallAdvertPreloader.AdvertPreloadState.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1279xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.LOADED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1279xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1279xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.NO_AD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public PostcallAdMobBannerProvider(Advert advert, AppCompatActivity appCompatActivity) {
        super(advert, appCompatActivity);
        if (advert == null || advert.network == null) {
            return;
        }
        this.mAdvert = advert;
    }

    private void adWasNotVisible() {
        if (this.visibilityIssueReload) {
            AdvertManager.addAdNetworkFlowDebugInfo(this.ADMOB_BANNER + " AD SHOW ERROR\n        - ad was not visible again");
            error();
            return;
        }
        this.visibilityIssueReload = true;
        AdvertManager.addAdNetworkFlowDebugInfo(this.ADMOB_BANNER + " AD SHOW ERROR\n        - ad was not visible");
        this.adPresented = false;
        this.holderPreparedAlready = false;
        this.adShowBeginTimestamp = 0L;
        addAdMobBannerView(true);
    }

    private void adWasVisible() {
        String str;
        AdView adView = this.mAdView;
        if (adView != null) {
            try {
                adView.resume();
            } catch (Exception e) {
            }
        }
        this.mVisibilityPrcnt = UiHelper.getVisibilityPrcnt(this.mAdView);
        StringBuilder sb = new StringBuilder();
        sb.append(this.ADMOB_BANNER);
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
        AnalyticsManager.getInstance().sendAdvertLoadedAction(this.ADMOB_BANNER);
        if (PostcallAdMobBannerPreloader.isInstanciated()) {
            PostcallAdMobBannerPreloader.getInstance().cleanInstance();
        }
        if (this.mOnSuccess != null) {
            this.mOnSuccess.run();
        }
    }

    public void addAdMobBannerView(final Boolean bool) {
        if (CSViewAdapter.isInstantiated()) {
            CSViewAdapter.getInstance().setAdHolderCallbackInterface(new CSAdRowViewHolder.AdHolderCallbackInterface() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdMobBannerProvider$tdHiGHabqEyoOAsB_iJ6R_bAHk0
                @Override // com.telguarder.features.postCallStatistics.CSAdRowViewHolder.AdHolderCallbackInterface
                public final void onDataBinding(ViewGroup viewGroup) {
                    PostcallAdMobBannerProvider.this.lambda$addAdMobBannerView$1$PostcallAdMobBannerProvider(bool, viewGroup);
                }
            });
        } else {
            error();
        }
    }

    private void addViewToTheHolder() {
        if (this.mHolder == null || !(this.mHolder instanceof AdvertContainer) || this.mAdView == null) {
            AdvertManager.addAdNetworkFlowDebugInfo(this.ADMOB_BANNER + " ERROR: \n        - holder or view not available");
            AnalyticsManager.getInstance().sendAdvertErrorAction(this.ADMOB_BANNER);
            error();
            return;
        }
        try {
            ((AdvertContainer) this.mHolder).addViewToHolder(getHostActivity(), 300, 250, this.mAdView, new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallAdMobBannerProvider$vPh8jECiQLFkChP3IL90TbQIM3M
                @Override // java.lang.Runnable
                public final void run() {
                    PostcallAdMobBannerProvider.this.lambda$addViewToTheHolder$2$PostcallAdMobBannerProvider();
                }
            });
        } catch (Exception e) {
            AdvertManager.addAdNetworkFlowDebugInfo(this.ADMOB_BANNER + " ERROR: \n        - " + e.getMessage());
            AnalyticsManager.getInstance().sendAdvertErrorAction(this.ADMOB_BANNER);
            error();
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x00d9 -> B:8:0x005f). Please submit an issue!!! */
    private void createAndLoadAd() {
        if (this.mAdView != null) {
            onHideViews();
        }
        try {
            this.ADMOB_BANNER = AdvertNetworkName.ADMOB_BANNER.toString().toLowerCase(Locale.ENGLISH);
            try {
                AdvertManager.addAdNetworkFlowDebugInfo(this.ADMOB_BANNER + " CREATE AND LOAD \n        - " + this.mAdvert.network.description + "\n        - " + this.mAdvert.network.placementId);
            } catch (Exception e) {
            }
            AnalyticsManager.getInstance().sendAdvertRequestedAction(this.ADMOB_BANNER);
            AdView adView = new AdView(getHostActivity());
            this.mAdView = adView;
            adView.setAdSize(AdSize.MEDIUM_RECTANGLE);
            this.mAdView.setAdUnitId(this.mAdvert.network.placementId);
            initEvents();
            addAdMobBannerView(true);
        } catch (Exception e2) {
            AnalyticsManager.getInstance().sendAdvertErrorAction(this.ADMOB_BANNER);
            AdvertManager.addAdNetworkFlowDebugInfo(this.ADMOB_BANNER + " ERROR: \n        - " + e2.getMessage());
            error();
        }
    }

    private void destroyAdView() {
        AdView adView = this.mAdView;
        if (adView != null) {
            try {
                try {
                    adView.setAdListener(null);
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
        if (PostcallAdMobBannerPreloader.isInstanciated()) {
            PostcallAdMobBannerPreloader.getInstance().onDestroy();
        }
        if (this.mOnError != null) {
            this.mOnError.run();
        }
    }

    private void handleErrorState(String str) {
        AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(this.ADMOB_BANNER, str, this.mAdvert);
        error();
    }

    private void handleLoadinState() {
        PostcallAdMobBannerPreloader.getInstance().mTimeoutRunnable = this.mTimeoutRunnable;
        this.mAdView = PostcallAdMobBannerPreloader.getInstance().mAdView;
        initEvents();
    }

    private void initEvents() {
        this.mAdView.setAdListener(this.adListener);
    }

    private void logVisibility() {
        if (this.adShowBeginTimestamp > 0) {
            AnalyticsManager.getInstance().sendAdvertVisibilityTimeAction(this.ADMOB_BANNER, System.currentTimeMillis() - this.adShowBeginTimestamp, this.mVisibilityPrcnt);
            this.adShowBeginTimestamp = 0L;
        }
    }

    private void requestAdMobBanner() {
        AdvertManager.addAdNetworkFlowDebugInfo("\n");
        if (!PostcallAdvertProxy.getInstance().mLoadStarted || !PostcallAdMobBannerPreloader.isInstanciated() || PostcallAdMobBannerPreloader.getInstance().getState() == null) {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(this.ADMOB_BANNER, null, this.mAdvert);
            createAndLoadAd();
            return;
        }
        int i = C21042.f1279xca06b7a7[PostcallAdMobBannerPreloader.getInstance().getState().ordinal()];
        if (i == 1) {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(this.ADMOB_BANNER, "LOADING", this.mAdvert);
            handleLoadinState();
        } else if (i == 2) {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(this.ADMOB_BANNER, POBOMSDKLogConstants.MSG_OMSDK_LOADED_EVENT, this.mAdvert);
            this.mAdView = PostcallAdMobBannerPreloader.getInstance().mAdView;
            initEvents();
            addAdMobBannerView(false);
        } else if (i == 3) {
            handleErrorState("ERROR");
        } else if (i != 4) {
        } else {
            handleErrorState("NO_AD");
        }
    }

    /* renamed from: success */
    public void lambda$addViewToTheHolder$2$PostcallAdMobBannerProvider() {
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

    public /* synthetic */ void lambda$addAdMobBannerView$1$PostcallAdMobBannerProvider(Boolean bool, ViewGroup viewGroup) {
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
                    AdView adView = this.mAdView;
                    if (adView == null) {
                        return;
                    }
                    adView.loadAd(new AdRequest.Builder().setLocation(currentCoarseLocation).build());
                    return;
                }
                AdView adView2 = this.mAdView;
                if (adView2 == null) {
                    return;
                }
                adView2.loadAd(new AdRequest.Builder().build());
                return;
            }
            error();
        } catch (Exception e) {
            AdvertManager.addAdNetworkFlowDebugInfo(this.ADMOB_BANNER + " ERROR: \n        - " + e.getMessage());
            AnalyticsManager.getInstance().sendAdvertErrorAction(this.ADMOB_BANNER);
            error();
        }
    }

    public /* synthetic */ void lambda$new$0$PostcallAdMobBannerProvider() {
        AnalyticsManager.getInstance().sendAdvertErrorAction(this.ADMOB_BANNER);
        AdvertManager.addAdNetworkFlowDebugInfo(this.ADMOB_BANNER + " ERROR: \n        - Timeout, stuck loading state..");
        error();
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onDestroy() {
        if (!this.adPresented) {
            AnalyticsManager.getInstance().sendAdvertMissedAction(this.ADMOB_BANNER);
        }
        if (PostcallAdMobBannerPreloader.isInstanciated()) {
            PostcallAdMobBannerPreloader.getInstance().onDestroy();
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
        if (PostcallAdMobBannerPreloader.isInstanciated()) {
            PostcallAdMobBannerPreloader.getInstance().reset();
        }
        this.adPresented = false;
        this.holderPreparedAlready = false;
        super.onHideViews();
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onLoadAd(Context context, Runnable runnable, Runnable runnable2) {
        super.onLoadAd(context, runnable, runnable2);
        this.adShowBeginTimestamp = 0L;
        requestAdMobBanner();
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onPause() {
        super.onPause();
        AdView adView = this.mAdView;
        if (adView != null) {
            try {
                adView.pause();
            } catch (Exception e) {
            }
        }
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onResume() {
        super.onResume();
        AdView adView = this.mAdView;
        if (adView != null) {
            try {
                adView.resume();
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
