package com.telguarder.features.advertisements.PostCallAds;

import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
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
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider.class */
public class PostcallPmOpenWrapNoasBannerProvider extends PostcallAdvertProvider {
    private static final String TAG = "PostcallPmOpenWrapNoasBannerProvider";
    public POBBannerView mABanneriew;
    private String mAdUnitId;
    private Advert mAdvert;
    public POBAdSize mCurrentAdSize;
    private Location mLocation;
    private int mProfileId;
    private String mPublisherId;
    private String PM_OPENWRAP_NOADSERVER = AdvertNetworkName.PM_OPENWRAP_NOADSERVER.toString().toLowerCase(Locale.ENGLISH);
    private boolean visibilityIssueReload = false;
    private final Runnable mTimeoutRunnable = new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallPmOpenWrapNoasBannerProvider$8p4H_cuTq_fwKWsNb2ivZW0H5kk
        @Override // java.lang.Runnable
        public final void run() {
            PostcallPmOpenWrapNoasBannerProvider.this.lambda$new$0$PostcallPmOpenWrapNoasBannerProvider();
        }
    };
    private POBBannerView.POBBannerViewListener adListener = new POBBannerView.POBBannerViewListener() { // from class: com.telguarder.features.advertisements.PostCallAds.PostcallPmOpenWrapNoasBannerProvider.1
        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerView.POBBannerViewListener
        public void onAdClosed(POBBannerView pOBBannerView) {
            PostcallPmOpenWrapNoasBannerProvider.this.closed = true;
            PostcallAdvertProxy.getInstance().hideAdInfoText();
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER + " AD CLOSED");
            Logger.debug(PostcallPmOpenWrapNoasBannerProvider.TAG, "onAdClosed");
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerView.POBBannerViewListener
        public void onAdFailed(POBBannerView pOBBannerView, POBError pOBError) {
            Logger.debug(PostcallPmOpenWrapNoasBannerProvider.TAG, "onAdFailedToLoad");
            if (PostcallPmOpenWrapNoasBannerPreloader.isInstanciated()) {
                PostcallPmOpenWrapNoasBannerPreloader.getInstance().cancelAllPreloadTimeoutHandlers();
            }
            switch (pOBError.getErrorCode()) {
                case 1001:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD\n        - INVALID_REQUEST");
                    break;
                case 1002:
                    AnalyticsManager.getInstance().sendAdvertNoFillErrorAction(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD\n        - NO_ADS_AVAILABLE");
                    break;
                case 1003:
                    AnalyticsManager.getInstance().sendAdvertNetworkErrorAction(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD\n        - NETWORK_ERROR");
                    break;
                case 1004:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD\n        - SERVER_ERROR");
                    break;
                case 1005:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD\n        - TIMEOUT_ERROR");
                    break;
                case 1006:
                    AnalyticsManager.getInstance().sendAdvertInternalErrorAction(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD\n        - INTERNAL_ERROR");
                    break;
                case 1007:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD\n        - INVALID_RESPONSE");
                    break;
                case 1008:
                default:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD");
                    break;
                case 1009:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD\n        - RENDER_ERROR");
                    break;
                case 1010:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD\n        - OPENWRAP_SIGNALING_ERROR");
                    break;
                case 1011:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD\n        - AD_EXPIRED");
                    break;
            }
            PostcallPmOpenWrapNoasBannerProvider.this.error();
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerView.POBBannerViewListener
        public void onAdOpened(POBBannerView pOBBannerView) {
            Logger.debug(PostcallPmOpenWrapNoasBannerProvider.TAG, "onAdOpened");
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER + " AD OPENED");
            AnalyticsManager.getInstance().sendAdvertOpenedAction(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER);
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerView.POBBannerViewListener
        public void onAdReceived(POBBannerView pOBBannerView) {
            Logger.debug(PostcallPmOpenWrapNoasBannerProvider.TAG, "onAdLoaded");
            if (PostcallPmOpenWrapNoasBannerPreloader.isInstanciated()) {
                PostcallPmOpenWrapNoasBannerPreloader.getInstance().cancelAllPreloadTimeoutHandlers();
            }
            if (pOBBannerView == null) {
                PostcallPmOpenWrapNoasBannerProvider.this.mCurrentAdSize = null;
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER + " ADVIEW LOST");
                PostcallPmOpenWrapNoasBannerProvider.this.error();
                return;
            }
            if (PostcallPmOpenWrapNoasBannerProvider.this.mABanneriew == null) {
                PostcallPmOpenWrapNoasBannerProvider.this.mABanneriew = pOBBannerView;
            }
            PostcallPmOpenWrapNoasBannerProvider postcallPmOpenWrapNoasBannerProvider = PostcallPmOpenWrapNoasBannerProvider.this;
            postcallPmOpenWrapNoasBannerProvider.mCurrentAdSize = postcallPmOpenWrapNoasBannerProvider.mABanneriew.getCreativeSize();
            PostcallPmOpenWrapNoasBannerProvider.this.addPmOpenWrapBannerView(false);
            StringBuilder sb = new StringBuilder();
            sb.append(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER);
            sb.append(" AD LOADED\n        - adSize: ");
            sb.append(PostcallPmOpenWrapNoasBannerProvider.this.mCurrentAdSize != null ? PostcallPmOpenWrapNoasBannerProvider.this.mCurrentAdSize.toString() : "");
            AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerView.POBBannerViewListener
        public void onAppLeaving(POBBannerView pOBBannerView) {
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerProvider.this.PM_OPENWRAP_NOADSERVER + " AD LEFT APPLICATION");
            Logger.debug(PostcallPmOpenWrapNoasBannerProvider.TAG, "onAdLeftApplication");
        }
    };

    /* renamed from: com.telguarder.features.advertisements.PostCallAds.PostcallPmOpenWrapNoasBannerProvider$2 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$2.class */
    public static /* synthetic */ class C21262 {

        /* renamed from: $SwitchMap$com$telguarder$features$advertisements$PostCallAds$PostcallAdvertPreloader$AdvertPreloadState */
        static final /* synthetic */ int[] f1285xca06b7a7;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[PostcallAdvertPreloader.AdvertPreloadState.values().length];
            f1285xca06b7a7 = iArr;
            try {
                iArr[PostcallAdvertPreloader.AdvertPreloadState.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1285xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.LOADED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1285xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1285xca06b7a7[PostcallAdvertPreloader.AdvertPreloadState.NO_AD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public PostcallPmOpenWrapNoasBannerProvider(Advert advert, AppCompatActivity appCompatActivity) {
        super(advert, appCompatActivity);
        if (advert == null || advert.network == null) {
            return;
        }
        this.mAdvert = advert;
    }

    private void adWasNotVisible() {
        if (this.visibilityIssueReload) {
            AdvertManager.addAdNetworkFlowDebugInfo(this.PM_OPENWRAP_NOADSERVER + " AD SHOW ERROR\n        - ad was not visible again");
            error();
            return;
        }
        this.visibilityIssueReload = true;
        AdvertManager.addAdNetworkFlowDebugInfo(this.PM_OPENWRAP_NOADSERVER + " AD SHOW ERROR\n        - ad was not visible");
        this.adPresented = false;
        this.holderPreparedAlready = false;
        this.adShowBeginTimestamp = 0L;
        addPmOpenWrapBannerView(true);
    }

    private void adWasVisible() {
        String str;
        this.mVisibilityPrcnt = UiHelper.getVisibilityPrcnt(this.mABanneriew);
        StringBuilder sb = new StringBuilder();
        sb.append(this.PM_OPENWRAP_NOADSERVER);
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
        AnalyticsManager.getInstance().sendAdvertLoadedAction(this.PM_OPENWRAP_NOADSERVER);
        if (PostcallPmOpenWrapNoasBannerPreloader.isInstanciated()) {
            PostcallPmOpenWrapNoasBannerPreloader.getInstance().cleanInstance();
        }
        if (this.mOnSuccess != null) {
            this.mOnSuccess.run();
        }
    }

    public void addPmOpenWrapBannerView(final Boolean bool) {
        if (CSViewAdapter.isInstantiated()) {
            CSViewAdapter.getInstance().setAdHolderCallbackInterface(new CSAdRowViewHolder.AdHolderCallbackInterface() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallPmOpenWrapNoasBannerProvider$i6A0KRuY1tjW7Y_XOsFwhBX_M5I
                @Override // com.telguarder.features.postCallStatistics.CSAdRowViewHolder.AdHolderCallbackInterface
                public final void onDataBinding(ViewGroup viewGroup) {
                    PostcallPmOpenWrapNoasBannerProvider.this.m421x217195b0(bool, viewGroup);
                }
            });
        } else {
            error();
        }
    }

    private void addViewToTheHolder() {
        if (this.mHolder == null || !(this.mHolder instanceof AdvertContainer) || this.mABanneriew == null) {
            AdvertManager.addAdNetworkFlowDebugInfo(this.PM_OPENWRAP_NOADSERVER + " ERROR: \n        - holder or view not available");
            AnalyticsManager.getInstance().sendAdvertErrorAction(this.PM_OPENWRAP_NOADSERVER);
            error();
            return;
        }
        try {
            if (this.mCurrentAdSize != null) {
                ((AdvertContainer) this.mHolder).addViewToHolder(getHostActivity(), this.mCurrentAdSize.getAdWidth(), this.mCurrentAdSize.getAdHeight(), this.mABanneriew, new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallPmOpenWrapNoasBannerProvider$Dg_KzU9xuaLHpWmo6QLDQ1riKFI
                    @Override // java.lang.Runnable
                    public final void run() {
                        PostcallPmOpenWrapNoasBannerProvider.this.lambda$addViewToTheHolder$2$PostcallPmOpenWrapNoasBannerProvider();
                    }
                });
            } else {
                ((AdvertContainer) this.mHolder).addViewToHolder(getHostActivity(), 0, 0, this.mABanneriew, new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallPmOpenWrapNoasBannerProvider$uS9Ikn_pqQ1G7I9IlKGOqGevpjM
                    @Override // java.lang.Runnable
                    public final void run() {
                        PostcallPmOpenWrapNoasBannerProvider.this.lambda$addViewToTheHolder$3$PostcallPmOpenWrapNoasBannerProvider();
                    }
                });
            }
        } catch (Exception e) {
            AdvertManager.addAdNetworkFlowDebugInfo(this.PM_OPENWRAP_NOADSERVER + " ERROR: \n        - " + e.getMessage());
            AnalyticsManager.getInstance().sendAdvertErrorAction(this.PM_OPENWRAP_NOADSERVER);
            error();
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0229 -> B:8:0x0060). Please submit an issue!!! */
    private void createAndLoadAd() {
        if (this.mABanneriew != null) {
            onHideViews();
        }
        try {
            this.PM_OPENWRAP_NOADSERVER = AdvertNetworkName.PM_OPENWRAP_NOADSERVER.toString().toLowerCase(Locale.ENGLISH);
            try {
                AdvertManager.addAdNetworkFlowDebugInfo(this.PM_OPENWRAP_NOADSERVER + " CREATE AND LOAD \n        - " + this.mAdvert.network.description + "\n        - " + this.mAdvert.network.placementId);
            } catch (Exception e) {
            }
            AnalyticsManager.getInstance().sendAdvertRequestedAction(this.PM_OPENWRAP_NOADSERVER);
            if (!initId(this.mAdvert.network.placementId)) {
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
            POBBannerView pOBBannerView = new POBBannerView(getHostActivity(), this.mPublisherId, this.mProfileId, this.mAdUnitId, new POBAdSize(320, 50), new POBAdSize(300, 100), new POBAdSize(300, 250), new POBAdSize(320, 250), new POBAdSize(336, 280), new POBAdSize(300, 300), new POBAdSize(320, 320), new POBAdSize(320, POBVastError.GENERAL_LINEAR_ERROR), new POBAdSize(320, 480), new POBAdSize(300, POBVastError.GENERAL_COMPANION_AD_ERROR));
            this.mABanneriew = pOBBannerView;
            this.mCurrentAdSize = null;
            POBImpression impression = pOBBannerView.getImpression();
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
        AnalyticsManager.getInstance().sendAdvertErrorAction(this.PM_OPENWRAP_NOADSERVER);
        StringBuilder sb = new StringBuilder();
        sb.append(this.PM_OPENWRAP_NOADSERVER);
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
    }

    public void error() {
        this.adPresented = false;
        this.holderPreparedAlready = false;
        this.adShowBeginTimestamp = 0L;
        if (PostcallPmOpenWrapNoasBannerPreloader.isInstanciated()) {
            PostcallPmOpenWrapNoasBannerPreloader.getInstance().onDestroy();
        }
        if (this.mOnError != null) {
            this.mOnError.run();
        }
    }

    private void handleErrorState(String str) {
        AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(this.PM_OPENWRAP_NOADSERVER, str, this.mAdvert);
        error();
    }

    private void handleLoadinState() {
        PostcallPmOpenWrapNoasBannerPreloader.getInstance().mTimeoutRunnable = this.mTimeoutRunnable;
        this.mABanneriew = PostcallPmOpenWrapNoasBannerPreloader.getInstance().mABanneriew;
        this.mCurrentAdSize = PostcallPmOpenWrapNoasBannerPreloader.getInstance().mCurrentAdSize;
        this.mLocation = PostcallPmOpenWrapNoasBannerPreloader.getInstance().mLocation;
        initEvents();
    }

    private void initEvents() {
        this.mABanneriew.setListener(this.adListener);
    }

    private boolean initId(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                List asList = Arrays.asList(str.split("\\s*,\\s*"));
                if (asList.size() != 3) {
                    return false;
                }
                this.mPublisherId = (String) asList.get(0);
                this.mProfileId = Integer.parseInt((String) asList.get(1));
                this.mAdUnitId = (String) asList.get(2);
                return true;
            } catch (Exception e) {
                String str2 = TAG;
                Logger.debug(str2, "initId error " + e.getMessage());
                return false;
            }
        }
        return false;
    }

    private void logVisibility() {
        if (this.adShowBeginTimestamp > 0) {
            AnalyticsManager.getInstance().sendAdvertVisibilityTimeAction(this.PM_OPENWRAP_NOADSERVER, System.currentTimeMillis() - this.adShowBeginTimestamp, this.mVisibilityPrcnt);
            this.adShowBeginTimestamp = 0L;
        }
    }

    private void requestPmOpenWrapBanner() {
        AdvertManager.addAdNetworkFlowDebugInfo("\n");
        if (!PostcallAdvertProxy.getInstance().mLoadStarted || !PostcallPmOpenWrapNoasBannerPreloader.isInstanciated() || PostcallPmOpenWrapNoasBannerPreloader.getInstance().getState() == null) {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(this.PM_OPENWRAP_NOADSERVER, null, this.mAdvert);
            createAndLoadAd();
            return;
        }
        int i = C21262.f1285xca06b7a7[PostcallPmOpenWrapNoasBannerPreloader.getInstance().getState().ordinal()];
        if (i == 1) {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(this.PM_OPENWRAP_NOADSERVER, "LOADING", this.mAdvert);
            handleLoadinState();
        } else if (i != 2) {
            if (i == 3) {
                handleErrorState("ERROR");
            } else if (i != 4) {
            } else {
                handleErrorState("NO_AD");
            }
        } else {
            AdvertManager.addAdNetworkFlowDebugInfoPostCallStart(this.PM_OPENWRAP_NOADSERVER, POBOMSDKLogConstants.MSG_OMSDK_LOADED_EVENT, this.mAdvert);
            this.mABanneriew = PostcallPmOpenWrapNoasBannerPreloader.getInstance().mABanneriew;
            this.mCurrentAdSize = PostcallPmOpenWrapNoasBannerPreloader.getInstance().mCurrentAdSize;
            this.mLocation = PostcallPmOpenWrapNoasBannerPreloader.getInstance().mLocation;
            initEvents();
            addPmOpenWrapBannerView(false);
        }
    }

    /* renamed from: success */
    public void lambda$addViewToTheHolder$3$PostcallPmOpenWrapNoasBannerProvider() {
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

    /* renamed from: lambda$addPmOpenWrapBannerView$1$PostcallPmOpenWrapNoasBannerProvider */
    public /* synthetic */ void m421x217195b0(Boolean bool, ViewGroup viewGroup) {
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
            AdvertManager.addAdNetworkFlowDebugInfo(this.PM_OPENWRAP_NOADSERVER + " ERROR: \n        - " + e.getMessage());
            AnalyticsManager.getInstance().sendAdvertErrorAction(this.PM_OPENWRAP_NOADSERVER);
            error();
        }
    }

    public /* synthetic */ void lambda$new$0$PostcallPmOpenWrapNoasBannerProvider() {
        AnalyticsManager.getInstance().sendAdvertErrorAction(this.PM_OPENWRAP_NOADSERVER);
        AdvertManager.addAdNetworkFlowDebugInfo(this.PM_OPENWRAP_NOADSERVER + " ERROR: \n        - Timeout, stuck loading state..");
        error();
    }

    @Override // com.telguarder.features.advertisements.PostCallAds.PostcallAdvertProvider
    public void onDestroy() {
        if (!this.adPresented) {
            AnalyticsManager.getInstance().sendAdvertMissedAction(this.PM_OPENWRAP_NOADSERVER);
        }
        if (PostcallPmOpenWrapNoasBannerPreloader.isInstanciated()) {
            PostcallPmOpenWrapNoasBannerPreloader.getInstance().onDestroy();
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
        if (PostcallPmOpenWrapNoasBannerPreloader.isInstanciated()) {
            PostcallPmOpenWrapNoasBannerPreloader.getInstance().reset();
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
    public void onStop() {
        logVisibility();
        super.onStop();
    }
}
