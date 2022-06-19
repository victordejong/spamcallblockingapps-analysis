package com.telguarder.features.advertisements.PostCallAds;

import android.location.Location;
import android.text.TextUtils;
import com.google.android.gms.ads.AdSize;
import com.pubmatic.sdk.common.OpenWrapSDK;
import com.pubmatic.sdk.common.POBAdSize;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.models.POBApplicationInfo;
import com.pubmatic.sdk.common.models.POBLocation;
import com.pubmatic.sdk.openwrap.banner.POBBannerView;
import com.pubmatic.sdk.openwrap.core.POBImpression;
import com.pubmatic.sdk.openwrap.core.POBRequest;
import com.pubmatic.sdk.video.POBVastError;
import com.telguarder.ApplicationObject;
import com.telguarder.features.advertisements.Advert;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.advertisements.AdvertNetwork;
import com.telguarder.features.advertisements.AdvertNetworkName;
import com.telguarder.features.advertisements.PostCallAds.PostcallAdvertPreloader;
import com.telguarder.features.advertisements.PostCallAds.PostcallPmOpenWrapDfpBannerPreloader;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.location.LocationHelper;
import com.telguarder.helpers.log.Logger;
import java.net.URL;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader.class */
public class PostcallPmOpenWrapDfpBannerPreloader extends PostcallAdvertPreloader {
    private static final int MAX_RELOAD_ATTEMPTS = 8;
    private static final String TAG = "PostcallPmOpenWrapDfpBannerPreloader";
    private static PostcallPmOpenWrapDfpBannerPreloader mInstance;
    public POBBannerView mABanneriew;
    public String mAdUnitId;
    private Advert mAdvert;
    public POBAdSize mCurrentAdSize;
    public PostcallPmOpenWrapDfpBannerEventHandler mEventHandler;
    public Location mLocation;
    public POBImpression mPOBImpression;
    private int mProfileId;
    private String mPublisherId;
    public String PM_OPENWRAP_DFP = AdvertNetworkName.PM_OPENWRAP_DFP.toString().toLowerCase(Locale.ENGLISH) + "_preload";
    private int mLoadAttempt = 0;
    private POBBannerView.POBBannerViewListener adListener = new C21211();

    /* renamed from: com.telguarder.features.advertisements.PostCallAds.PostcallPmOpenWrapDfpBannerPreloader$1 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1.class */
    public class C21211 extends POBBannerView.POBBannerViewListener {
        C21211() {
            PostcallPmOpenWrapDfpBannerPreloader.this = r4;
        }

        public /* synthetic */ void lambda$onAdReceived$0$PostcallPmOpenWrapDfpBannerPreloader$1() {
            try {
                if (PostcallPmOpenWrapDfpBannerPreloader.this.mABanneriew == null) {
                    return;
                }
                PostcallPmOpenWrapDfpBannerPreloader.this.mABanneriew.loadAd();
            } catch (Exception e) {
            }
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerView.POBBannerViewListener
        public void onAdClosed(POBBannerView pOBBannerView) {
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP + " AD CLOSED");
            Logger.debug(PostcallPmOpenWrapDfpBannerPreloader.TAG, "onAdClosed");
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerView.POBBannerViewListener
        public void onAdFailed(POBBannerView pOBBannerView, POBError pOBError) {
            Logger.debug(PostcallPmOpenWrapDfpBannerPreloader.TAG, "onAdFailedToLoad");
            switch (pOBError.getErrorCode()) {
                case 1001:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP);
                    PostcallPmOpenWrapDfpBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD\n        - INVALID_REQUEST");
                    break;
                case 1002:
                    AnalyticsManager.getInstance().sendAdvertNoFillErrorAction(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP);
                    PostcallPmOpenWrapDfpBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.NO_AD);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD\n        - NO_ADS_AVAILABLE");
                    break;
                case 1003:
                    AnalyticsManager.getInstance().sendAdvertNetworkErrorAction(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD\n        - NETWORK_ERROR");
                    if (!PostcallPmOpenWrapDfpBannerPreloader.this.mAdvert.isBackupNetwork && PostcallPmOpenWrapDfpBannerPreloader.this.mLoadAttempt < 8) {
                        AdvertManager.addAdNetworkFlowDebugInfo(" PRELOAD RETRY.. ");
                        PostcallPmOpenWrapDfpBannerPreloader.this.mLoadAttempt++;
                        PostcallPmOpenWrapDfpBannerPreloader.this.mABanneriew.loadAd();
                        return;
                    }
                    PostcallPmOpenWrapDfpBannerPreloader.this.mLoadAttempt = 0;
                    PostcallPmOpenWrapDfpBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    break;
                case 1004:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP);
                    PostcallPmOpenWrapDfpBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD\n        - SERVER_ERROR");
                    break;
                case 1005:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP);
                    PostcallPmOpenWrapDfpBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD\n        - TIMEOUT_ERROR");
                    break;
                case 1006:
                    AnalyticsManager.getInstance().sendAdvertInternalErrorAction(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP);
                    PostcallPmOpenWrapDfpBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD\n        - INTERNAL_ERROR");
                    break;
                case 1007:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP);
                    PostcallPmOpenWrapDfpBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD\n        - INVALID_RESPONSE");
                    break;
                case 1008:
                default:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP);
                    PostcallPmOpenWrapDfpBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD");
                    break;
                case 1009:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP);
                    PostcallPmOpenWrapDfpBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD\n        - RENDER_ERROR");
                    break;
                case 1010:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP);
                    PostcallPmOpenWrapDfpBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD\n        - OPENWRAP_SIGNALING_ERROR");
                    break;
                case 1011:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP);
                    PostcallPmOpenWrapDfpBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP + " AD FAILED TO LOAD\n        - AD_EXPIRED");
                    break;
            }
            PostcallPmOpenWrapDfpBannerPreloader.this.reset();
            PostcallAdvertProxy.getInstance().preloadBackup(ApplicationObject.getContext());
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerView.POBBannerViewListener
        public void onAdOpened(POBBannerView pOBBannerView) {
            Logger.debug(PostcallPmOpenWrapDfpBannerPreloader.TAG, "onAdOpened");
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP + " AD OPENED");
            AnalyticsManager.getInstance().sendAdvertOpenedAction(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP);
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerView.POBBannerViewListener
        public void onAdReceived(POBBannerView pOBBannerView) {
            Logger.debug(PostcallPmOpenWrapDfpBannerPreloader.TAG, "onAdLoaded");
            if (pOBBannerView == null) {
                PostcallPmOpenWrapDfpBannerPreloader.this.mCurrentAdSize = null;
                PostcallPmOpenWrapDfpBannerPreloader.this.mPOBImpression = null;
                PostcallPmOpenWrapDfpBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP + " ADVIEW LOST");
                PostcallPmOpenWrapDfpBannerPreloader.this.reset();
                PostcallAdvertProxy.getInstance().preloadBackup(ApplicationObject.getContext());
                return;
            }
            if (PostcallPmOpenWrapDfpBannerPreloader.this.mABanneriew == null) {
                PostcallPmOpenWrapDfpBannerPreloader.this.mABanneriew = pOBBannerView;
            }
            PostcallPmOpenWrapDfpBannerPreloader postcallPmOpenWrapDfpBannerPreloader = PostcallPmOpenWrapDfpBannerPreloader.this;
            postcallPmOpenWrapDfpBannerPreloader.mCurrentAdSize = postcallPmOpenWrapDfpBannerPreloader.mABanneriew.getCreativeSize();
            PostcallPmOpenWrapDfpBannerPreloader postcallPmOpenWrapDfpBannerPreloader2 = PostcallPmOpenWrapDfpBannerPreloader.this;
            postcallPmOpenWrapDfpBannerPreloader2.mPOBImpression = postcallPmOpenWrapDfpBannerPreloader2.mABanneriew.getImpression();
            if (PostcallPmOpenWrapDfpBannerPreloader.this.mEventHandler != null && PostcallPmOpenWrapDfpBannerPreloader.this.mEventHandler.dfpAdView != null && PostcallPmOpenWrapDfpBannerEventHandler.AD_SERVER.equals(AdvertManager.getInstance().mLastOwDfpNetworkName)) {
                try {
                    PostcallPmOpenWrapDfpBannerPreloader.this.mEventHandler.dfpAdView.pause();
                } catch (Exception e) {
                }
            }
            PostcallPmOpenWrapDfpBannerPreloader.this.mExpiredAdRunnable = new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallPmOpenWrapDfpBannerPreloader$1$W_kzeIXysTeyfRuwp7HDyqcFbYQ
                @Override // java.lang.Runnable
                public final void run() {
                    PostcallPmOpenWrapDfpBannerPreloader.C21211.this.lambda$onAdReceived$0$PostcallPmOpenWrapDfpBannerPreloader$1();
                }
            };
            PostcallPmOpenWrapDfpBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.LOADED);
            StringBuilder sb = new StringBuilder();
            sb.append(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP);
            sb.append(" AD LOADED\n        - adSize: ");
            sb.append(PostcallPmOpenWrapDfpBannerPreloader.this.mCurrentAdSize != null ? PostcallPmOpenWrapDfpBannerPreloader.this.mCurrentAdSize.toString() : "");
            sb.append("\n        - impression: ");
            String str = "";
            if (PostcallPmOpenWrapDfpBannerPreloader.this.mPOBImpression != null) {
                str = PostcallPmOpenWrapDfpBannerPreloader.this.mPOBImpression.getImpressionJson().toString();
            }
            sb.append(str);
            AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerView.POBBannerViewListener
        public void onAppLeaving(POBBannerView pOBBannerView) {
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerPreloader.this.PM_OPENWRAP_DFP + " AD LEFT APPLICATION");
            Logger.debug(PostcallPmOpenWrapDfpBannerPreloader.TAG, "onAdLeftApplication");
        }
    }

    private PostcallPmOpenWrapDfpBannerPreloader() {
    }

    public static PostcallPmOpenWrapDfpBannerPreloader getInstance() {
        PostcallPmOpenWrapDfpBannerPreloader postcallPmOpenWrapDfpBannerPreloader;
        synchronized (PostcallPmOpenWrapDfpBannerPreloader.class) {
            try {
                if (mInstance == null) {
                    mInstance = new PostcallPmOpenWrapDfpBannerPreloader();
                }
                postcallPmOpenWrapDfpBannerPreloader = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return postcallPmOpenWrapDfpBannerPreloader;
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

    public static boolean isInstanciated() {
        boolean z;
        synchronized (PostcallPmOpenWrapDfpBannerPreloader.class) {
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
        AnalyticsManager.getInstance().sendAdvertErrorAction(this.PM_OPENWRAP_DFP);
        StringBuilder sb = new StringBuilder();
        sb.append(this.PM_OPENWRAP_DFP);
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

    public /* synthetic */ void lambda$preload$0$PostcallPmOpenWrapDfpBannerPreloader() {
        preloadStartError("Timeout, stuck loading state..");
    }

    public void onDestroy() {
        reset();
        cleanInstance();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x0273 -> B:15:0x007c). Please submit an issue!!! */
    public void preload(Advert advert) {
        this.mLoadAttempt = 0;
        this.mAdvert = null;
        if (advert != null) {
            try {
                if (advert.network != null && initId(advert.network)) {
                    this.mAdvert = advert;
                }
            } catch (Exception e) {
                preloadStartError(e.getMessage());
                return;
            }
        }
        if (this.mAdvert == null) {
            preloadStartError("placement id processing error");
            return;
        }
        try {
            AdvertManager.addAdNetworkFlowDebugInfo("\n");
            AdvertManager.addAdNetworkFlowDebugInfo(this.PM_OPENWRAP_DFP + " START \n        - " + this.mAdvert.network.description + "\n        - " + this.mAdvert.network.placementId);
        } catch (Exception e2) {
        }
        AnalyticsManager.getInstance().sendAdvertRequestedAction(this.PM_OPENWRAP_DFP);
        reset();
        this.mTimeoutRunnable = new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallPmOpenWrapDfpBannerPreloader$VBhGV1OqSerjuCoOkhseGaGYSoU
            @Override // java.lang.Runnable
            public final void run() {
                PostcallPmOpenWrapDfpBannerPreloader.this.lambda$preload$0$PostcallPmOpenWrapDfpBannerPreloader();
            }
        };
        setState(PostcallAdvertPreloader.AdvertPreloadState.LOADING);
        try {
            OpenWrapSDK.setUseInternalBrowser(false);
            OpenWrapSDK.allowLocationAccess(false);
            Location currentCoarseLocation = LocationHelper.getInstance().getCurrentCoarseLocation();
            this.mLocation = currentCoarseLocation;
            if (currentCoarseLocation != null) {
                OpenWrapSDK.setLocation(new POBLocation(POBLocation.Source.GPS, this.mLocation.getLongitude(), this.mLocation.getLatitude()));
            }
            POBApplicationInfo pOBApplicationInfo = new POBApplicationInfo();
            pOBApplicationInfo.setStoreURL(new URL("https://play.google.com/store/apps/details?id=" + ApplicationObject.getContext().getPackageName() + "&hl=en"));
            OpenWrapSDK.setApplicationInfo(pOBApplicationInfo);
            this.mEventHandler = new PostcallPmOpenWrapDfpBannerEventHandler(ApplicationObject.getContext(), this.mAdUnitId, new AdSize(320, 50), new AdSize(300, 100), new AdSize(300, 250), new AdSize(320, 250), new AdSize(336, 280), new AdSize(300, 300), new AdSize(320, 320), new AdSize(320, POBVastError.GENERAL_LINEAR_ERROR), new AdSize(320, 480), new AdSize(300, POBVastError.GENERAL_COMPANION_AD_ERROR));
            POBBannerView pOBBannerView = new POBBannerView(ApplicationObject.getContext(), this.mPublisherId, this.mProfileId, this.mAdUnitId, this.mEventHandler);
            this.mABanneriew = pOBBannerView;
            this.mCurrentAdSize = null;
            POBRequest adRequest = pOBBannerView.getAdRequest();
            if (adRequest != null) {
                adRequest.enableBidSummary(true);
                adRequest.setNetworkTimeout(10);
            }
            POBImpression impression = this.mABanneriew.getImpression();
            if (impression != null) {
                impression.setAdPosition(POBRequest.AdPosition.ABOVE_THE_FOLD);
            }
            initEvents();
            this.mABanneriew.loadAd();
        } catch (Exception e3) {
            preloadStartError(e3.getMessage());
        }
    }

    public void reset() {
        cancelPreloadTimeoutHandler();
        POBBannerView pOBBannerView = this.mABanneriew;
        if (pOBBannerView != null) {
            try {
                try {
                    pOBBannerView.setListener(null);
                    this.mABanneriew.setVisibility(8);
                    this.mABanneriew.destroy();
                } catch (Exception e) {
                    String str = TAG;
                    Logger.error(str, "PostcallPmOpenWrapPreloader reset error:" + e.toString());
                }
            } finally {
                this.mABanneriew = null;
            }
        }
        PostcallPmOpenWrapDfpBannerEventHandler postcallPmOpenWrapDfpBannerEventHandler = this.mEventHandler;
        try {
            if (postcallPmOpenWrapDfpBannerEventHandler == null) {
                return;
            }
            try {
                postcallPmOpenWrapDfpBannerEventHandler.destroy();
            } catch (Exception e2) {
                String str2 = TAG;
                Logger.error(str2, "PostcallPmOpenWrapPreloader mEventHandler reset error:" + e2.toString());
            }
        } finally {
            this.mEventHandler = null;
        }
    }
}
