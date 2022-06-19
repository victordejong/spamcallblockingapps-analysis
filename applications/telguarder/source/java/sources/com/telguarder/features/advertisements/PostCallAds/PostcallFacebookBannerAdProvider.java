package com.telguarder.features.advertisements.PostCallAds;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import com.facebook.ads.AbstractC0845Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.pubmatic.sdk.omsdk.POBOMSDKLogConstants;
import com.telguarder.features.advertisements.Advert;
import com.telguarder.features.advertisements.AdvertContainer;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.advertisements.AdvertNetworkName;
import com.telguarder.features.advertisements.PostCallAds.PostcallAdvertPreloader;
import com.telguarder.features.postCallStatistics.CSAdRowViewHolder;
import com.telguarder.features.postCallStatistics.CSViewAdapter;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.log.Logger;
import com.telguarder.helpers.p022ui.UiHelper;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider.class */
public class PostcallFacebookBannerAdProvider extends PostcallAdvertProvider {
    public static final String FACEBOOK_BANNER = AdvertNetworkName.FACEBOOK_BANNER.toString().toLowerCase(Locale.ENGLISH);
    public AdView mAdView;
    private Advert mAdvert;
    private boolean visibilityIssueReload = false;
    private final Runnable mTimeoutRunnable = new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallFacebookBannerAdProvider$5QOkIUlllq4j_W7wiUNdKzjtXFU
        @Override // java.lang.Runnable
        public final void run() {
            PostcallFacebookBannerAdProvider.this.lambda$new$0$PostcallFacebookBannerAdProvider();
        }
    };
    private View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallFacebookBannerAdProvider$kftSPA3Hr83viT1NcB4vLBU5ccM
        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            return PostcallFacebookBannerAdProvider.this.lambda$new$3$PostcallFacebookBannerAdProvider(view, motionEvent);
        }
    };
    private AdListener adListener = new AdListener() { // from class: com.telguarder.features.advertisements.PostCallAds.PostcallFacebookBannerAdProvider.1
        @Override // com.facebook.ads.AdListener
        public void onAdClicked(AbstractC0845Ad abstractC0845Ad) {
            Logger.debug(PostcallFacebookBannerAdProvider.FACEBOOK_BANNER, "onAdClicked");
            PostcallFacebookBannerAdProvider.this.adClicked = true;
            AnalyticsManager.getInstance().sendAdvertClickedAction(PostcallFacebookBannerAdProvider.FACEBOOK_BANNER);
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(AbstractC0845Ad abstractC0845Ad) {
            Logger.debug(PostcallFacebookBannerAdProvider.FACEBOOK_BANNER, "onAdLoaded");
            if (PostcallFacebookBannerAdPreloader.isInstanciated()) {
                PostcallFacebookBannerAdPreloader.getInstance().cancelAllPreloadTimeoutHandlers();
            }
            if (PostcallFacebookBannerAdProvider.this.mAdView == null) {
                return;
            }
            PostcallFacebookBannerAdProvider.this.adClicked = false;
            PostcallFacebookBannerAdProvider.this.addFbView(false);
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookBannerAdProvider.FACEBOOK_BANNER + " AD LOADED");
        }

        @Override // com.facebook.ads.AdListener
        public void onError(AbstractC0845Ad abstractC0845Ad, AdError adError) {
            String str = PostcallFacebookBannerAdProvider.FACEBOOK_BANNER;
            Logger.debug(str, "onError: " + adError.getErrorMessage());
            if (PostcallFacebookBannerAdPreloader.isInstanciated()) {
                PostcallFacebookBannerAdPreloader.getInstance().cancelAllPreloadTimeoutHandlers();
            }
            PostcallFacebookBannerAdProvider.this.adShowBeginTimestamp = 0L;
            if (adError != null) {
                int errorCode = adError.getErrorCode();
                if (errorCode == 2000) {
                    AnalyticsManager.getInstance().sendAdvertServerErrorAction(PostcallFacebookBannerAdProvider.FACEBOOK_BANNER);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookBannerAdProvider.FACEBOOK_BANNER + " AD FAILED TO LOAD\n        - SERVER_ERROR_CODE");
                } else if (errorCode != 2001) {
                    switch (errorCode) {
                        case 1000:
                            AnalyticsManager.getInstance().sendAdvertNetworkErrorAction(PostcallFacebookBannerAdProvider.FACEBOOK_BANNER);
                            AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookBannerAdProvider.FACEBOOK_BANNER + " AD FAILED TO LOAD\n        - NETWORK_ERROR_CODE");
                            break;
                        case 1001:
                            AnalyticsManager.getInstance().sendAdvertNoFillErrorAction(PostcallFacebookBannerAdProvider.FACEBOOK_BANNER);
                            AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookBannerAdProvider.FACEBOOK_BANNER + " AD FAILED TO LOAD\n        - NO_FILL_ERROR_CODE");
                            break;
                        case 1002:
                            AnalyticsManager.getInstance().sendAdvertTooFrequentErrorAction(PostcallFacebookBannerAdProvider.FACEBOOK_BANNER);
                            AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookBannerAdProvider.FACEBOOK_BANNER + " AD FAILED TO LOAD\n        - LOAD_TOO_FREQUENTLY_ERROR_CODE");
                            break;
                        default:
                            AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallFacebookBannerAdProvider.FACEBOOK_BANNER);
                            AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookBannerAdProvider.FACEBOOK_BANNER + " AD FAILED TO LOAD");
                            break;
                    }
                } else {
                    AnalyticsManager.getInstance().sendAdvertInternalErrorAction(PostcallFacebookBannerAdProvider.FACEBOOK_BANNER);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookBannerAdProvider.FACEBOOK_BANNER + " AD FAILED TO LOAD\n        - INTERNAL_ERROR_CODE");
                }
            }
            PostcallFacebookBannerAdProvider.this.error();
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(AbstractC0845Ad abstractC0845Ad) {
            Logger.debug(PostcallFacebookBannerAdProvider.FACEBOOK_BANNER, "onLoggingImpression");
            if (PostcallFacebookBannerAdPreloader.isInstanciated()) {
                PostcallFacebookBannerAdPreloader.getInstance().cancelAllPreloadTimeoutHandlers();
            }
            AnalyticsManager.getInstance().sendAdvertImpressionLoggedAction(PostcallFacebookBannerAdProvider.FACEBOOK_BANNER);
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallFacebookBannerAdProvider.FACEBOOK_BANNER + " AD IMPRESSION LOGGED");
        }
    };

    /* renamed from: com.telguarder.features.advertisements.PostCallAds.PostcallFacebookBannerAdProvider$2 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider$2.class */
    public static /* synthetic */ class C21192 {

        /* renamed from: $SwitchMap$com$telguarder$features$advertisements$PostCallAds$PostcallAdvertPreloader$AdvertPreloadState */
        static final /* synthetic */ int[] f1283xca06b7a7;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[PostcallAdvertPreloader.AdvertPreloadState.values().length];
            f1283xca06b7a7 = iArr;
            try {
                iArr[PostcallAdvertPreloader.AdvertPreloadState.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1283xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.LOADED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1283xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1283xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.NO_AD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public PostcallFacebookBannerAdProvider(Advert advert, AppCompatActivity appCompatActivity) {
        super(advert, appCompatActivity);
        if (advert == null || advert.network == null) {
            return;
        }
        this.mAdvert = advert;
    }

    private void adWasNotVisible() {
        if (this.visibilityIssueReload) {
            AdvertManager.addAdNetworkFlowDebugInfo(FACEBOOK_BANNER + " AD SHOW ERROR\n        - ad was not visible again");
            error();
            return;
        }
        this.visibilityIssueReload = true;
        AdvertManager.addAdNetworkFlowDebugInfo(FACEBOOK_BANNER + " AD SHOW ERROR\n        - ad was not visible");
        this.adPresented = false;
        this.holderPreparedAlready = false;
        this.adShowBeginTimestamp = 0L;
        addFbView(true);
    }

    private void adWasVisible() {
        String str;
        this.mVisibilityPrcnt = UiHelper.getVisibilityPrcnt(this.mAdView);
        StringBuilder sb = new StringBuilder();
        String str2 = FACEBOOK_BANNER;
        sb.append(str2);
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
        AnalyticsManager.getInstance().sendAdvertLoadedAction(str2);
        if (PostcallFacebookBannerAdPreloader.isInstanciated()) {
            PostcallFacebookBannerAdPreloader.getInstance().cleanInstance();
        }
        if (this.mOnSuccess != null) {
            this.mOnSuccess.run();
        }
    }

    public void addFbView(final Boolean bool) {
        if (CSViewAdapter.isInstantiated()) {
            CSViewAdapter.getInstance().setAdHolderCallbackInterface(new CSAdRowViewHolder.AdHolderCallbackInterface() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallFacebookBannerAdProvider$ZqNd92GrZM1Tmqk0HrflR2QxOwA
                @Override // com.telguarder.features.postCallStatistics.CSAdRowViewHolder.AdHolderCallbackInterface
                public final void onDataBinding(ViewGroup viewGroup) {
                    PostcallFacebookBannerAdProvider.this.lambda$addFbView$1$PostcallFacebookBannerAdProvider(bool, viewGroup);
                }
            });
        } else {
            error();
        }
    }

    private void addViewToTheHolder() {
        if (this.mHolder == null || !(this.mHolder instanceof AdvertContainer) || this.mAdView == null) {
            StringBuilder sb = new StringBuilder();
            String str = FACEBOOK_BANNER;
            sb.append(str);
            sb.append(" ERROR: \n        - holder or view not available");
            AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
            AnalyticsManager.getInstance().sendAdvertErrorAction(str);
            error();
            return;
        }
        try {
            ((AdvertContainer) this.mHolder).addViewToHolder(getHostActivity(), 300, 250, this.mAdView, new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallFacebookBannerAdProvider$YjQ_gXhH25wI8z879MQiQmTWFjY
                @Override // java.lang.Runnable
                public final void run() {
                    PostcallFacebookBannerAdProvider.this.lambda$addViewToTheHolder$2$PostcallFacebookBannerAdProvider();
                }
            });
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder();
            String str2 = FACEBOOK_BANNER;
            sb2.append(str2);
            sb2.append(" ERROR: \n        - ");
            sb2.append(e.getMessage());
            AdvertManager.addAdNetworkFlowDebugInfo(sb2.toString());
            AnalyticsManager.getInstance().sendAdvertErrorAction(str2);
            error();
        }
    }

    private void createAndLoadAd(Context context) {
        AnalyticsManager analyticsManager = AnalyticsManager.getInstance();
        String str = FACEBOOK_BANNER;
        analyticsManager.sendAdvertRequestedAction(str);
        try {
            AdvertManager.addAdNetworkFlowDebugInfo(str + " CREATE AND LOAD \n        - " + this.mAdvert.network.description + "\n        - " + this.mAdvert.network.placementId);
        } catch (Exception e) {
        }
        try {
            if (this.mAdView != null) {
                PostcallFacebookBannerAdListener.getInstance().setInternalAdListener(null);
                this.mAdView.destroy();
                this.mAdView = null;
            }
            this.mAdView = new AdView(context, this.mAdvert.network.placementId, AdSize.RECTANGLE_HEIGHT_250);
            PostcallFacebookBannerAdListener.getInstance().setInternalAdListener(this.adListener);
            this.mAdView.setOnTouchListener(this.onTouchListener);
            addFbView(true);
        } catch (Exception e2) {
            AdvertManager.addAdNetworkFlowDebugInfo(FACEBOOK_BANNER + " ERROR: \n        - " + e2.getMessage());
            error();
        }
    }

    private void destroyAdView() {
        try {
            if (this.mAdView == null) {
                return;
            }
            try {
                PostcallFacebookBannerAdListener.getInstance().setInternalAdListener(null);
                this.mAdView.destroy();
            } catch (Exception e) {
                String str = FACEBOOK_BANNER;
                Logger.error(str, "onHideViews error:" + e.toString());
            }
        } finally {
            this.mAdView = null;
        }
    }

    public void error() {
        this.adPresented = false;
        this.holderPreparedAlready = false;
        this.adShowBeginTimestamp = 0L;
        AnalyticsManager.getInstance().sendAdvertErrorAction(FACEBOOK_BANNER);
        if (PostcallFacebookBannerAdPreloader.isInstanciated()) {
            PostcallFacebookBannerAdPreloader.getInstance().onDestroy();
        }
        if (this.mOnError != null) {
            this.mOnError.run();
        }
    }

    private void handleErrorState(String str) {
        AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(FACEBOOK_BANNER, str, this.mAdvert);
        error();
    }

    private void handleLoadinState() {
        PostcallFacebookBannerAdPreloader.getInstance().mTimeoutRunnable = this.mTimeoutRunnable;
        this.mAdView = PostcallFacebookBannerAdPreloader.getInstance().mAdView;
        PostcallFacebookBannerAdListener.getInstance().setInternalAdListener(this.adListener);
    }

    private void logVisibility() {
        if (this.adShowBeginTimestamp > 0) {
            AnalyticsManager.getInstance().sendAdvertVisibilityTimeAction(FACEBOOK_BANNER, System.currentTimeMillis() - this.adShowBeginTimestamp, this.mVisibilityPrcnt);
            this.adShowBeginTimestamp = 0L;
        }
    }

    private void requestFacebookBanner(Context context) {
        AdvertManager.addAdNetworkFlowDebugInfo("\n");
        if (!PostcallAdvertProxy.getInstance().mLoadStarted || !PostcallFacebookBannerAdPreloader.isInstanciated() || PostcallFacebookBannerAdPreloader.getInstance().getState() == null) {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(FACEBOOK_BANNER, null, this.mAdvert);
            createAndLoadAd(context);
            return;
        }
        int i = C21192.f1283xca06b7a7[PostcallFacebookBannerAdPreloader.getInstance().getState().ordinal()];
        if (i == 1) {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(FACEBOOK_BANNER, "LOADING", this.mAdvert);
            handleLoadinState();
        } else if (i == 2) {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(FACEBOOK_BANNER, POBOMSDKLogConstants.MSG_OMSDK_LOADED_EVENT, this.mAdvert);
            this.mAdView = PostcallFacebookBannerAdPreloader.getInstance().mAdView;
            PostcallFacebookBannerAdListener.getInstance().setInternalAdListener(this.adListener);
            addFbView(false);
        } else if (i == 3) {
            handleErrorState("ERROR");
        } else if (i != 4) {
        } else {
            handleErrorState("NO_AD");
        }
    }

    /* renamed from: success */
    public void lambda$addViewToTheHolder$2$PostcallFacebookBannerAdProvider() {
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

    public /* synthetic */ void lambda$addFbView$1$PostcallFacebookBannerAdProvider(Boolean bool, ViewGroup viewGroup) {
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
                AdView adView = this.mAdView;
                if (adView == null) {
                    return;
                }
                adView.loadAd(adView.buildLoadAdConfig().withAdListener(PostcallFacebookBannerAdListener.getInstance().getAdListener(this.adListener)).build());
                return;
            }
            error();
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            String str = FACEBOOK_BANNER;
            sb.append(str);
            sb.append(" ERROR: \n        - ");
            sb.append(e.getMessage());
            AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
            AnalyticsManager.getInstance().sendAdvertErrorAction(str);
            error();
        }
    }

    public /* synthetic */ void lambda$new$0$PostcallFacebookBannerAdProvider() {
        AnalyticsManager analyticsManager = AnalyticsManager.getInstance();
        String str = FACEBOOK_BANNER;
        analyticsManager.sendAdvertErrorAction(str);
        AdvertManager.addAdNetworkFlowDebugInfo(str + " ERROR: \n        - Timeout, stuck loading state..");
        error();
    }

    public /* synthetic */ boolean lambda$new$3$PostcallFacebookBannerAdProvider(View view, MotionEvent motionEvent) {
        Logger.debug(FACEBOOK_BANNER, "onTouch");
        this.adClicked = true;
        return false;
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onDestroy() {
        if (!this.adPresented) {
            AnalyticsManager.getInstance().sendAdvertMissedAction(FACEBOOK_BANNER);
        }
        if (PostcallFacebookBannerAdPreloader.isInstanciated()) {
            PostcallFacebookBannerAdPreloader.getInstance().onDestroy();
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
        if (PostcallFacebookBannerAdPreloader.isInstanciated()) {
            PostcallFacebookBannerAdPreloader.getInstance().reset();
        }
        this.adPresented = false;
        this.holderPreparedAlready = false;
        super.onHideViews();
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onLoadAd(Context context, Runnable runnable, Runnable runnable2) {
        super.onLoadAd(context, runnable, runnable2);
        this.adShowBeginTimestamp = 0L;
        requestFacebookBanner(context);
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onStop() {
        logVisibility();
        super.onStop();
    }
}
