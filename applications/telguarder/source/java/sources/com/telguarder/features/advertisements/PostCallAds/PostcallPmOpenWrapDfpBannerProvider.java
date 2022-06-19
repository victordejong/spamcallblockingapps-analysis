package com.telguarder.features.advertisements.PostCallAds;

import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import com.google.android.gms.ads.AdSize;
import com.pubmatic.sdk.common.OpenWrapSDK;
import com.pubmatic.sdk.common.POBAdSize;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.models.POBApplicationInfo;
import com.pubmatic.sdk.common.models.POBLocation;
import com.pubmatic.sdk.omsdk.POBOMSDKLogConstants;
import com.pubmatic.sdk.openwrap.banner.POBBannerView;
import com.pubmatic.sdk.openwrap.core.POBImpression;
import com.pubmatic.sdk.openwrap.core.POBRequest;
import com.pubmatic.sdk.video.POBVastError;
import com.telguarder.features.advertisements.Advert;
import com.telguarder.features.advertisements.AdvertContainer;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.advertisements.AdvertNetwork;
import com.telguarder.features.advertisements.AdvertNetworkName;
import com.telguarder.features.advertisements.PostCallAds.PostcallAdvertPreloader;
import com.telguarder.features.postCallStatistics.CSAdRowViewHolder;
import com.telguarder.features.postCallStatistics.CSViewAdapter;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.location.LocationHelper;
import com.telguarder.helpers.log.Logger;
import com.telguarder.helpers.p022ui.UiHelper;
import java.net.URL;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider.class */
public class PostcallPmOpenWrapDfpBannerProvider extends PostcallAdvertProvider {
    private static final String TAG = "PostcallPmOpenWrapDfpBannerProvider";
    public POBBannerView mABanneriew;
    private String mAdUnitId;
    private Advert mAdvert;
    public POBAdSize mCurrentAdSize;
    private PostcallPmOpenWrapDfpBannerEventHandler mEventHandler;
    private Location mLocation;
    public POBImpression mPOBImpression;
    private int mProfileId;
    private String mPublisherId;
    private String PM_OPENWRAP_DFP = AdvertNetworkName.PM_OPENWRAP_DFP.toString().toLowerCase(Locale.ENGLISH);
    private boolean visibilityIssueReload = false;
    private final Runnable mTimeoutRunnable = new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallPmOpenWrapDfpBannerProvider$G35NHR27H_l9S9QkgBYLfwdu08g
        @Override // java.lang.Runnable
        public final void run() {
            PostcallPmOpenWrapDfpBannerProvider.this.lambda$new$0$PostcallPmOpenWrapDfpBannerProvider();
        }
    };
    private POBBannerView.POBBannerViewListener adListener = new POBBannerView.POBBannerViewListener() { // from class: com.telguarder.features.advertisements.PostCallAds.PostcallPmOpenWrapDfpBannerProvider.1
        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerView.POBBannerViewListener
        public void onAdClosed(POBBannerView pOBBannerView) {
            PostcallPmOpenWrapDfpBannerProvider.this.closed = true;
            PostcallAdvertProxy.getInstance().hideAdInfoText();
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP + " AD CLOSED");
            Logger.debug(PostcallPmOpenWrapDfpBannerProvider.TAG, "onAdClosed");
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerView.POBBannerViewListener
        public void onAdFailed(POBBannerView pOBBannerView, POBError pOBError) {
            Logger.debug(PostcallPmOpenWrapDfpBannerProvider.TAG, "onAdFailedToLoad");
            if (PostcallPmOpenWrapDfpBannerPreloader.isInstanciated()) {
                PostcallPmOpenWrapDfpBannerPreloader.getInstance().cancelAllPreloadTimeoutHandlers();
            }
            switch (pOBError.getErrorCode()) {
                case 1001:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD\n        - INVALID_REQUEST");
                    break;
                case 1002:
                    AnalyticsManager.getInstance().sendAdvertNoFillErrorAction(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD\n        - NO_ADS_AVAILABLE");
                    break;
                case 1003:
                    AnalyticsManager.getInstance().sendAdvertNetworkErrorAction(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD\n        - NETWORK_ERROR");
                    break;
                case 1004:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD\n        - SERVER_ERROR");
                    break;
                case 1005:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD\n        - TIMEOUT_ERROR");
                    break;
                case 1006:
                    AnalyticsManager.getInstance().sendAdvertInternalErrorAction(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD\n        - INTERNAL_ERROR");
                    break;
                case 1007:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD\n        - INVALID_RESPONSE");
                    break;
                case 1008:
                default:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD");
                    break;
                case 1009:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD\n        - RENDER_ERROR");
                    break;
                case 1010:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD\n        - OPENWRAP_SIGNALING_ERROR");
                    break;
                case 1011:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD\n        - AD_EXPIRED");
                    break;
            }
            PostcallPmOpenWrapDfpBannerProvider.this.error();
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerView.POBBannerViewListener
        public void onAdOpened(POBBannerView pOBBannerView) {
            Logger.debug(PostcallPmOpenWrapDfpBannerProvider.TAG, "onAdOpened");
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP + " AD OPENED");
            AnalyticsManager.getInstance().sendAdvertOpenedAction(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP);
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerView.POBBannerViewListener
        public void onAdReceived(POBBannerView pOBBannerView) {
            Logger.debug(PostcallPmOpenWrapDfpBannerProvider.TAG, "onAdLoaded");
            if (PostcallPmOpenWrapDfpBannerPreloader.isInstanciated()) {
                PostcallPmOpenWrapDfpBannerPreloader.getInstance().cancelAllPreloadTimeoutHandlers();
            }
            if (pOBBannerView == null) {
                PostcallPmOpenWrapDfpBannerProvider.this.mCurrentAdSize = null;
                PostcallPmOpenWrapDfpBannerProvider.this.mPOBImpression = null;
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP + " ADVIEW LOST");
                PostcallPmOpenWrapDfpBannerProvider.this.error();
                return;
            }
            if (PostcallPmOpenWrapDfpBannerProvider.this.mABanneriew == null) {
                PostcallPmOpenWrapDfpBannerProvider.this.mABanneriew = pOBBannerView;
            }
            PostcallPmOpenWrapDfpBannerProvider postcallPmOpenWrapDfpBannerProvider = PostcallPmOpenWrapDfpBannerProvider.this;
            postcallPmOpenWrapDfpBannerProvider.mCurrentAdSize = postcallPmOpenWrapDfpBannerProvider.mABanneriew.getCreativeSize();
            PostcallPmOpenWrapDfpBannerProvider postcallPmOpenWrapDfpBannerProvider2 = PostcallPmOpenWrapDfpBannerProvider.this;
            postcallPmOpenWrapDfpBannerProvider2.mPOBImpression = postcallPmOpenWrapDfpBannerProvider2.mABanneriew.getImpression();
            PostcallPmOpenWrapDfpBannerProvider.this.addPmOpenWrapBannerView(false);
            StringBuilder sb = new StringBuilder();
            sb.append(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP);
            sb.append(" AD LOADED\n        - adSize: ");
            sb.append(PostcallPmOpenWrapDfpBannerProvider.this.mCurrentAdSize != null ? PostcallPmOpenWrapDfpBannerProvider.this.mCurrentAdSize.toString() : "");
            sb.append("\n        - impression: ");
            String str = "";
            if (PostcallPmOpenWrapDfpBannerProvider.this.mPOBImpression != null) {
                str = PostcallPmOpenWrapDfpBannerProvider.this.mPOBImpression.getImpressionJson().toString();
            }
            sb.append(str);
            AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerView.POBBannerViewListener
        public void onAppLeaving(POBBannerView pOBBannerView) {
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerProvider.this.PM_OPENWRAP_DFP + " AD LEFT APPLICATION");
            Logger.debug(PostcallPmOpenWrapDfpBannerProvider.TAG, "onAdLeftApplication");
        }
    };

    /* renamed from: com.telguarder.features.advertisements.PostCallAds.PostcallPmOpenWrapDfpBannerProvider$2 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$2.class */
    public static /* synthetic */ class C21232 {

        /* renamed from: $SwitchMap$com$telguarder$features$advertisements$PostCallAds$PostcallAdvertPreloader$AdvertPreloadState */
        static final /* synthetic */ int[] f1284xca06b7a7;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[PostcallAdvertPreloader.AdvertPreloadState.values().length];
            f1284xca06b7a7 = iArr;
            try {
                iArr[PostcallAdvertPreloader.AdvertPreloadState.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1284xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.LOADED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1284xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1284xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.NO_AD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public PostcallPmOpenWrapDfpBannerProvider(Advert advert, AppCompatActivity appCompatActivity) {
        super(advert, appCompatActivity);
        if (advert == null || advert.network == null) {
            return;
        }
        this.mAdvert = advert;
    }

    private void adWasNotVisible() {
        if (this.visibilityIssueReload) {
            AdvertManager.addAdNetworkFlowDebugInfo(this.PM_OPENWRAP_DFP + " AD SHOW ERROR\n        - ad was not visible again");
            error();
            return;
        }
        this.visibilityIssueReload = true;
        AdvertManager.addAdNetworkFlowDebugInfo(this.PM_OPENWRAP_DFP + " AD SHOW ERROR\n        - ad was not visible");
        this.adPresented = false;
        this.holderPreparedAlready = false;
        this.adShowBeginTimestamp = 0L;
        addPmOpenWrapBannerView(true);
    }

    private void adWasVisible() {
        String str;
        PostcallPmOpenWrapDfpBannerEventHandler postcallPmOpenWrapDfpBannerEventHandler = this.mEventHandler;
        if (postcallPmOpenWrapDfpBannerEventHandler != null && postcallPmOpenWrapDfpBannerEventHandler.dfpAdView != null && PostcallPmOpenWrapDfpBannerEventHandler.AD_SERVER.equals(AdvertManager.getInstance().mLastOwDfpNetworkName)) {
            try {
                this.mEventHandler.dfpAdView.resume();
            } catch (Exception e) {
            }
        }
        this.mVisibilityPrcnt = UiHelper.getVisibilityPrcnt(this.mABanneriew);
        StringBuilder sb = new StringBuilder();
        sb.append(this.PM_OPENWRAP_DFP);
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
        AnalyticsManager.getInstance().sendAdvertLoadedAction(this.PM_OPENWRAP_DFP);
        if (PostcallPmOpenWrapDfpBannerPreloader.isInstanciated()) {
            PostcallPmOpenWrapDfpBannerPreloader.getInstance().cleanInstance();
        }
        if (this.mOnSuccess != null) {
            this.mOnSuccess.run();
        }
    }

    public void addPmOpenWrapBannerView(final Boolean bool) {
        if (CSViewAdapter.isInstantiated()) {
            CSViewAdapter.getInstance().setAdHolderCallbackInterface(new CSAdRowViewHolder.AdHolderCallbackInterface() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallPmOpenWrapDfpBannerProvider$idfz9wzeTlm61efrf9VBEwFhCqQ
                @Override // com.telguarder.features.postCallStatistics.CSAdRowViewHolder.AdHolderCallbackInterface
                public final void onDataBinding(ViewGroup viewGroup) {
                    PostcallPmOpenWrapDfpBannerProvider.this.m422x2fddd52b(bool, viewGroup);
                }
            });
        } else {
            error();
        }
    }

    private void addViewToTheHolder() {
        if (this.mHolder == null || !(this.mHolder instanceof AdvertContainer) || this.mABanneriew == null) {
            AdvertManager.addAdNetworkFlowDebugInfo(this.PM_OPENWRAP_DFP + " ERROR: \n        - holder or view not available");
            AnalyticsManager.getInstance().sendAdvertErrorAction(this.PM_OPENWRAP_DFP);
            error();
            return;
        }
        try {
            if (this.mCurrentAdSize != null) {
                ((AdvertContainer) this.mHolder).addViewToHolder(getHostActivity(), this.mCurrentAdSize.getAdWidth(), this.mCurrentAdSize.getAdHeight(), this.mABanneriew, new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallPmOpenWrapDfpBannerProvider$5NcPxBd8Edt6gba9UQZFMO4ja84
                    @Override // java.lang.Runnable
                    public final void run() {
                        PostcallPmOpenWrapDfpBannerProvider.this.lambda$addViewToTheHolder$2$PostcallPmOpenWrapDfpBannerProvider();
                    }
                });
            } else {
                ((AdvertContainer) this.mHolder).addViewToHolder(getHostActivity(), 0, 0, this.mABanneriew, new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallPmOpenWrapDfpBannerProvider$aVzpG_Ux99aYZRObrUmObFrGkcc
                    @Override // java.lang.Runnable
                    public final void run() {
                        PostcallPmOpenWrapDfpBannerProvider.this.lambda$addViewToTheHolder$3$PostcallPmOpenWrapDfpBannerProvider();
                    }
                });
            }
        } catch (Exception e) {
            AdvertManager.addAdNetworkFlowDebugInfo(this.PM_OPENWRAP_DFP + " ERROR: \n        - " + e.getMessage());
            AnalyticsManager.getInstance().sendAdvertErrorAction(this.PM_OPENWRAP_DFP);
            error();
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0248 -> B:8:0x0061). Please submit an issue!!! */
    private void createAndLoadAd() {
        if (this.mABanneriew != null) {
            onHideViews();
        }
        try {
            this.PM_OPENWRAP_DFP = AdvertNetworkName.PM_OPENWRAP_DFP.toString().toLowerCase(Locale.ENGLISH);
            try {
                AdvertManager.addAdNetworkFlowDebugInfo(this.PM_OPENWRAP_DFP + " CREATE AND LOAD \n        - " + this.mAdvert.network.description + "\n        - " + this.mAdvert.network.placementId);
            } catch (Exception e) {
            }
            AnalyticsManager.getInstance().sendAdvertRequestedAction(this.PM_OPENWRAP_DFP);
            if (!initId(this.mAdvert.network)) {
                createAndLoadAdError("placement id processing error");
                return;
            }
            OpenWrapSDK.setUseInternalBrowser(false);
            OpenWrapSDK.allowLocationAccess(false);
            Location currentCoarseLocation = LocationHelper.getInstance().getCurrentCoarseLocation();
            this.mLocation = currentCoarseLocation;
            if (currentCoarseLocation != null) {
                OpenWrapSDK.setLocation(new POBLocation(POBLocation.Source.GPS, this.mLocation.getLongitude(), this.mLocation.getLatitude()));
            }
            POBApplicationInfo pOBApplicationInfo = new POBApplicationInfo();
            pOBApplicationInfo.setStoreURL(new URL("https://play.google.com/store/apps/details?id=" + getHostActivity().getPackageName() + "&hl=en"));
            OpenWrapSDK.setApplicationInfo(pOBApplicationInfo);
            this.mEventHandler = new PostcallPmOpenWrapDfpBannerEventHandler(getHostActivity(), this.mAdUnitId, new AdSize(320, 50), new AdSize(300, 100), new AdSize(300, 250), new AdSize(320, 250), new AdSize(336, 280), new AdSize(300, 300), new AdSize(320, 320), new AdSize(320, POBVastError.GENERAL_LINEAR_ERROR), new AdSize(320, 480), new AdSize(300, POBVastError.GENERAL_COMPANION_AD_ERROR));
            POBBannerView pOBBannerView = new POBBannerView(getHostActivity(), this.mPublisherId, this.mProfileId, this.mAdUnitId, this.mEventHandler);
            this.mABanneriew = pOBBannerView;
            this.mCurrentAdSize = null;
            POBRequest adRequest = pOBBannerView.getAdRequest();
            if (adRequest != null) {
                adRequest.enableBidSummary(true);
            }
            POBImpression impression = this.mABanneriew.getImpression();
            if (impression != null) {
                impression.setAdPosition(POBRequest.AdPosition.ABOVE_THE_FOLD);
            }
            initEvents();
            addPmOpenWrapBannerView(true);
        } catch (Exception e2) {
            createAndLoadAdError(e2.getMessage());
        }
    }

    private void createAndLoadAdError(String str) {
        AnalyticsManager.getInstance().sendAdvertErrorAction(this.PM_OPENWRAP_DFP);
        StringBuilder sb = new StringBuilder();
        sb.append(this.PM_OPENWRAP_DFP);
        sb.append(" ERROR: \n        - ");
        if (!TextUtils.isEmpty(str)) {
            str = "unknown error";
        }
        sb.append(str);
        AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
        error();
    }

    private void destroyAdView() {
        POBBannerView pOBBannerView = this.mABanneriew;
        if (pOBBannerView != null) {
            try {
                try {
                    pOBBannerView.setListener(null);
                    this.mABanneriew.setVisibility(8);
                    this.mABanneriew.destroy();
                } catch (Exception e) {
                    String str = TAG;
                    Logger.error(str, "onHideViews error:" + e.toString());
                }
            } finally {
                this.mABanneriew = null;
            }
        }
        PostcallPmOpenWrapDfpBannerEventHandler postcallPmOpenWrapDfpBannerEventHandler = this.mEventHandler;
        if (postcallPmOpenWrapDfpBannerEventHandler != null) {
            try {
                try {
                    postcallPmOpenWrapDfpBannerEventHandler.destroy();
                } catch (Exception e2) {
                    String str2 = TAG;
                    Logger.error(str2, "onHideViews mEventHandler error:" + e2.toString());
                }
            } finally {
                this.mEventHandler = null;
            }
        }
    }

    public void error() {
        this.adPresented = false;
        this.holderPreparedAlready = false;
        this.adShowBeginTimestamp = 0L;
        if (PostcallPmOpenWrapDfpBannerPreloader.isInstanciated()) {
            PostcallPmOpenWrapDfpBannerPreloader.getInstance().onDestroy();
        }
        if (this.mOnError != null) {
            this.mOnError.run();
        }
    }

    private void handleErrorState(String str) {
        AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(this.PM_OPENWRAP_DFP, str, this.mAdvert);
        error();
    }

    private void handleLoadinState() {
        PostcallPmOpenWrapDfpBannerPreloader.getInstance().mTimeoutRunnable = this.mTimeoutRunnable;
        this.mABanneriew = PostcallPmOpenWrapDfpBannerPreloader.getInstance().mABanneriew;
        this.mEventHandler = PostcallPmOpenWrapDfpBannerPreloader.getInstance().mEventHandler;
        this.mCurrentAdSize = PostcallPmOpenWrapDfpBannerPreloader.getInstance().mCurrentAdSize;
        this.mLocation = PostcallPmOpenWrapDfpBannerPreloader.getInstance().mLocation;
        initEvents();
    }

    private void initEvents() {
        this.mABanneriew.setListener(this.adListener);
    }

    private boolean initId(AdvertNetwork advertNetwork) {
        if (!TextUtils.isEmpty(advertNetwork.placementId)) {
            try {
                List asList = Arrays.asList(advertNetwork.placementId.split("\\s*,\\s*"));
                if (asList.size() != 3) {
                    return false;
                }
                this.mPublisherId = (String) asList.get(0);
                this.mProfileId = Integer.parseInt((String) asList.get(1));
                this.mAdUnitId = (String) asList.get(2);
                return true;
            } catch (Exception e) {
                String str = TAG;
                Logger.debug(str, "initId error " + e.getMessage());
                return false;
            }
        }
        return false;
    }

    private void logVisibility() {
        if (this.adShowBeginTimestamp > 0) {
            AnalyticsManager.getInstance().sendAdvertVisibilityTimeAction(this.PM_OPENWRAP_DFP, System.currentTimeMillis() - this.adShowBeginTimestamp, this.mVisibilityPrcnt);
            this.adShowBeginTimestamp = 0L;
        }
    }

    private void requestPmOpenWrapBanner() {
        AdvertManager.addAdNetworkFlowDebugInfo("\n");
        if (!PostcallAdvertProxy.getInstance().mLoadStarted || !PostcallPmOpenWrapDfpBannerPreloader.isInstanciated() || PostcallPmOpenWrapDfpBannerPreloader.getInstance().getState() == null) {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(this.PM_OPENWRAP_DFP, null, this.mAdvert);
            createAndLoadAd();
            return;
        }
        int i = C21232.f1284xca06b7a7[PostcallPmOpenWrapDfpBannerPreloader.getInstance().getState().ordinal()];
        if (i == 1) {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(this.PM_OPENWRAP_DFP, "LOADING", this.mAdvert);
            handleLoadinState();
        } else if (i != 2) {
            if (i == 3) {
                handleErrorState("ERROR");
            } else if (i != 4) {
            } else {
                handleErrorState("NO_AD");
            }
        } else {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(this.PM_OPENWRAP_DFP, POBOMSDKLogConstants.MSG_OMSDK_LOADED_EVENT, this.mAdvert);
            this.mABanneriew = PostcallPmOpenWrapDfpBannerPreloader.getInstance().mABanneriew;
            this.mEventHandler = PostcallPmOpenWrapDfpBannerPreloader.getInstance().mEventHandler;
            this.mCurrentAdSize = PostcallPmOpenWrapDfpBannerPreloader.getInstance().mCurrentAdSize;
            this.mLocation = PostcallPmOpenWrapDfpBannerPreloader.getInstance().mLocation;
            initEvents();
            addPmOpenWrapBannerView(false);
        }
    }

    /* renamed from: success */
    public void lambda$addViewToTheHolder$3$PostcallPmOpenWrapDfpBannerProvider() {
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

    /* renamed from: lambda$addPmOpenWrapBannerView$1$PostcallPmOpenWrapDfpBannerProvider */
    public /* synthetic */ void m422x2fddd52b(Boolean bool, ViewGroup viewGroup) {
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
            if (viewGroup != null && this.mABanneriew != null && PostcallAdvertProxy.getInstance().mLoadStarted) {
                if (!bool.booleanValue()) {
                    this.holderPreparedAlready = true;
                    this.mHolder = viewGroup;
                    addViewToTheHolder();
                    return;
                }
                this.newLoadStartedAlready = true;
                POBBannerView pOBBannerView = this.mABanneriew;
                if (pOBBannerView == null) {
                    return;
                }
                pOBBannerView.loadAd();
                return;
            }
            error();
        } catch (Exception e) {
            AdvertManager.addAdNetworkFlowDebugInfo(this.PM_OPENWRAP_DFP + " ERROR: \n        - " + e.getMessage());
            AnalyticsManager.getInstance().sendAdvertErrorAction(this.PM_OPENWRAP_DFP);
            error();
        }
    }

    public /* synthetic */ void lambda$new$0$PostcallPmOpenWrapDfpBannerProvider() {
        AnalyticsManager.getInstance().sendAdvertErrorAction(this.PM_OPENWRAP_DFP);
        AdvertManager.addAdNetworkFlowDebugInfo(this.PM_OPENWRAP_DFP + " ERROR: \n        - Timeout, stuck loading state..");
        error();
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onDestroy() {
        if (!this.adPresented) {
            AnalyticsManager.getInstance().sendAdvertMissedAction(this.PM_OPENWRAP_DFP);
        }
        if (PostcallPmOpenWrapDfpBannerPreloader.isInstanciated()) {
            PostcallPmOpenWrapDfpBannerPreloader.getInstance().onDestroy();
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
        if (PostcallPmOpenWrapDfpBannerPreloader.isInstanciated()) {
            PostcallPmOpenWrapDfpBannerPreloader.getInstance().reset();
        }
        this.adPresented = false;
        this.holderPreparedAlready = false;
        super.onHideViews();
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onLoadAd(Context context, Runnable runnable, Runnable runnable2) {
        super.onLoadAd(context, runnable, runnable2);
        this.adShowBeginTimestamp = 0L;
        requestPmOpenWrapBanner();
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onPause() {
        super.onPause();
        PostcallPmOpenWrapDfpBannerEventHandler postcallPmOpenWrapDfpBannerEventHandler = this.mEventHandler;
        if (postcallPmOpenWrapDfpBannerEventHandler == null || postcallPmOpenWrapDfpBannerEventHandler.dfpAdView == null || !PostcallPmOpenWrapDfpBannerEventHandler.AD_SERVER.equals(AdvertManager.getInstance().mLastOwDfpNetworkName)) {
            return;
        }
        try {
            this.mEventHandler.dfpAdView.pause();
        } catch (Exception e) {
        }
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onResume() {
        super.onResume();
        PostcallPmOpenWrapDfpBannerEventHandler postcallPmOpenWrapDfpBannerEventHandler = this.mEventHandler;
        if (postcallPmOpenWrapDfpBannerEventHandler == null || postcallPmOpenWrapDfpBannerEventHandler.dfpAdView == null || !PostcallPmOpenWrapDfpBannerEventHandler.AD_SERVER.equals(AdvertManager.getInstance().mLastOwDfpNetworkName)) {
            return;
        }
        try {
            this.mEventHandler.dfpAdView.resume();
        } catch (Exception e) {
        }
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onStop() {
        logVisibility();
        super.onStop();
    }
}
