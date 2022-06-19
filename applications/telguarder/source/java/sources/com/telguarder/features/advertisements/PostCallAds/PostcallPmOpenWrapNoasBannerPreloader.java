package com.telguarder.features.advertisements.PostCallAds;

import android.location.Location;
import android.text.TextUtils;
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
import com.telguarder.features.advertisements.AdvertNetworkName;
import com.telguarder.features.advertisements.PostCallAds.PostcallAdvertPreloader;
import com.telguarder.features.advertisements.PostCallAds.PostcallPmOpenWrapNoasBannerPreloader;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.location.LocationHelper;
import com.telguarder.helpers.log.Logger;
import java.net.URL;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader.class */
public class PostcallPmOpenWrapNoasBannerPreloader extends PostcallAdvertPreloader {
    private static final int MAX_RELOAD_ATTEMPTS = 8;
    private static final String TAG = "PostcallPmOpenWrapNoasBannerPreloader";
    private static PostcallPmOpenWrapNoasBannerPreloader mInstance;
    public POBBannerView mABanneriew;
    private String mAdUnitId;
    private Advert mAdvert;
    public POBAdSize mCurrentAdSize;
    public Location mLocation;
    private int mProfileId;
    private String mPublisherId;
    public String PM_OPENWRAP_NOADSERVER = AdvertNetworkName.PM_OPENWRAP_NOADSERVER.toString().toLowerCase(Locale.ENGLISH) + "_preload";
    private int mLoadAttempt = 0;
    private POBBannerView.POBBannerViewListener adListener = new C21241();

    /* renamed from: com.telguarder.features.advertisements.PostCallAds.PostcallPmOpenWrapNoasBannerPreloader$1 */
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1.class */
    public class C21241 extends POBBannerView.POBBannerViewListener {
        C21241() {
            PostcallPmOpenWrapNoasBannerPreloader.this = r4;
        }

        public /* synthetic */ void lambda$onAdReceived$0$PostcallPmOpenWrapNoasBannerPreloader$1() {
            try {
                if (PostcallPmOpenWrapNoasBannerPreloader.this.mABanneriew == null) {
                    return;
                }
                PostcallPmOpenWrapNoasBannerPreloader.this.mABanneriew.loadAd();
            } catch (Exception e) {
            }
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerView.POBBannerViewListener
        public void onAdClosed(POBBannerView pOBBannerView) {
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER + " AD CLOSED");
            Logger.debug(PostcallPmOpenWrapNoasBannerPreloader.TAG, "onAdClosed");
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerView.POBBannerViewListener
        public void onAdFailed(POBBannerView pOBBannerView, POBError pOBError) {
            Logger.debug(PostcallPmOpenWrapNoasBannerPreloader.TAG, "onAdFailedToLoad");
            switch (pOBError.getErrorCode()) {
                case 1001:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER);
                    PostcallPmOpenWrapNoasBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD\n        - INVALID_REQUEST");
                    break;
                case 1002:
                    AnalyticsManager.getInstance().sendAdvertNoFillErrorAction(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER);
                    PostcallPmOpenWrapNoasBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.NO_AD);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD\n        - NO_ADS_AVAILABLE");
                    break;
                case 1003:
                    AnalyticsManager.getInstance().sendAdvertNetworkErrorAction(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD\n        - NETWORK_ERROR");
                    if (!PostcallPmOpenWrapNoasBannerPreloader.this.mAdvert.isBackupNetwork && PostcallPmOpenWrapNoasBannerPreloader.this.mLoadAttempt < 8) {
                        AdvertManager.addAdNetworkFlowDebugInfo(" PRELOAD RETRY.. ");
                        PostcallPmOpenWrapNoasBannerPreloader.this.mLoadAttempt++;
                        PostcallPmOpenWrapNoasBannerPreloader.this.mABanneriew.loadAd();
                        return;
                    }
                    PostcallPmOpenWrapNoasBannerPreloader.this.mLoadAttempt = 0;
                    PostcallPmOpenWrapNoasBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    break;
                case 1004:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER);
                    PostcallPmOpenWrapNoasBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD\n        - SERVER_ERROR");
                    break;
                case 1005:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER);
                    PostcallPmOpenWrapNoasBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD\n        - TIMEOUT_ERROR");
                    break;
                case 1006:
                    AnalyticsManager.getInstance().sendAdvertInternalErrorAction(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER);
                    PostcallPmOpenWrapNoasBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD\n        - INTERNAL_ERROR");
                    break;
                case 1007:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER);
                    PostcallPmOpenWrapNoasBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD\n        - INVALID_RESPONSE");
                    break;
                case 1008:
                default:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER);
                    PostcallPmOpenWrapNoasBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD");
                    break;
                case 1009:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER);
                    PostcallPmOpenWrapNoasBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD\n        - RENDER_ERROR");
                    break;
                case 1010:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER);
                    PostcallPmOpenWrapNoasBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD\n        - OPENWRAP_SIGNALING_ERROR");
                    break;
                case 1011:
                    AnalyticsManager.getInstance().sendAdvertErrorAction(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER);
                    PostcallPmOpenWrapNoasBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                    AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER + " AD FAILED TO LOAD\n        - AD_EXPIRED");
                    break;
            }
            PostcallPmOpenWrapNoasBannerPreloader.this.reset();
            PostcallAdvertProxy.getInstance().preloadBackup(ApplicationObject.getContext());
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerView.POBBannerViewListener
        public void onAdOpened(POBBannerView pOBBannerView) {
            Logger.debug(PostcallPmOpenWrapNoasBannerPreloader.TAG, "onAdOpened");
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER + " AD OPENED");
            AnalyticsManager.getInstance().sendAdvertOpenedAction(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER);
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerView.POBBannerViewListener
        public void onAdReceived(POBBannerView pOBBannerView) {
            Logger.debug(PostcallPmOpenWrapNoasBannerPreloader.TAG, "onAdLoaded");
            if (pOBBannerView == null) {
                PostcallPmOpenWrapNoasBannerPreloader.this.mCurrentAdSize = null;
                PostcallPmOpenWrapNoasBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.ERROR);
                AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER + " ADVIEW LOST");
                PostcallPmOpenWrapNoasBannerPreloader.this.reset();
                PostcallAdvertProxy.getInstance().preloadBackup(ApplicationObject.getContext());
                return;
            }
            if (PostcallPmOpenWrapNoasBannerPreloader.this.mABanneriew == null) {
                PostcallPmOpenWrapNoasBannerPreloader.this.mABanneriew = pOBBannerView;
            }
            PostcallPmOpenWrapNoasBannerPreloader.this.mCurrentAdSize = pOBBannerView.getCreativeSize();
            PostcallPmOpenWrapNoasBannerPreloader.this.mExpiredAdRunnable = new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallPmOpenWrapNoasBannerPreloader$1$jIv2NI44NK1cffxETjkWaD4UdlE
                @Override // java.lang.Runnable
                public final void run() {
                    PostcallPmOpenWrapNoasBannerPreloader.C21241.this.lambda$onAdReceived$0$PostcallPmOpenWrapNoasBannerPreloader$1();
                }
            };
            PostcallPmOpenWrapNoasBannerPreloader.this.setState(PostcallAdvertPreloader.AdvertPreloadState.LOADED);
            StringBuilder sb = new StringBuilder();
            sb.append(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER);
            sb.append(" AD LOADED\n        - adSize: ");
            sb.append(PostcallPmOpenWrapNoasBannerPreloader.this.mCurrentAdSize != null ? PostcallPmOpenWrapNoasBannerPreloader.this.mCurrentAdSize.toString() : "");
            AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerView.POBBannerViewListener
        public void onAppLeaving(POBBannerView pOBBannerView) {
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapNoasBannerPreloader.this.PM_OPENWRAP_NOADSERVER + " AD LEFT APPLICATION");
            Logger.debug(PostcallPmOpenWrapNoasBannerPreloader.TAG, "onAdLeftApplication");
        }
    }

    private PostcallPmOpenWrapNoasBannerPreloader() {
    }

    public static PostcallPmOpenWrapNoasBannerPreloader getInstance() {
        PostcallPmOpenWrapNoasBannerPreloader postcallPmOpenWrapNoasBannerPreloader;
        synchronized (PostcallPmOpenWrapNoasBannerPreloader.class) {
            try {
                if (mInstance == null) {
                    mInstance = new PostcallPmOpenWrapNoasBannerPreloader();
                }
                postcallPmOpenWrapNoasBannerPreloader = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return postcallPmOpenWrapNoasBannerPreloader;
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

    public static boolean isInstanciated() {
        boolean z;
        synchronized (PostcallPmOpenWrapNoasBannerPreloader.class) {
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
        AnalyticsManager.getInstance().sendAdvertErrorAction(this.PM_OPENWRAP_NOADSERVER);
        StringBuilder sb = new StringBuilder();
        sb.append(this.PM_OPENWRAP_NOADSERVER);
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

    public /* synthetic */ void lambda$preload$0$PostcallPmOpenWrapNoasBannerPreloader() {
        preloadStartError("Timeout, stuck loading state..");
    }

    public void onDestroy() {
        reset();
        cleanInstance();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0251 -> B:15:0x007f). Please submit an issue!!! */
    public void preload(Advert advert) {
        this.mLoadAttempt = 0;
        this.mAdvert = null;
        if (advert != null) {
            try {
                if (advert.network != null && initId(advert.network.placementId)) {
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
            AdvertManager.addAdNetworkFlowDebugInfo(this.PM_OPENWRAP_NOADSERVER + " START \n        - " + this.mAdvert.network.description + "\n        - " + this.mAdvert.network.placementId);
        } catch (Exception e2) {
        }
        AnalyticsManager.getInstance().sendAdvertRequestedAction(this.PM_OPENWRAP_NOADSERVER);
        reset();
        this.mTimeoutRunnable = new Runnable() { // from class: com.telguarder.features.advertisements.PostCallAds._$$Lambda$PostcallPmOpenWrapNoasBannerPreloader$RiNuIPJaQEt9rUw4Xwa3WFbe6g4
            @Override // java.lang.Runnable
            public final void run() {
                PostcallPmOpenWrapNoasBannerPreloader.this.lambda$preload$0$PostcallPmOpenWrapNoasBannerPreloader();
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
            POBBannerView pOBBannerView = new POBBannerView(ApplicationObject.getContext(), this.mPublisherId, this.mProfileId, this.mAdUnitId, new POBAdSize(320, 50), new POBAdSize(300, 100), new POBAdSize(300, 250), new POBAdSize(320, 250), new POBAdSize(336, 280), new POBAdSize(300, 300), new POBAdSize(320, 320), new POBAdSize(320, POBVastError.GENERAL_LINEAR_ERROR), new POBAdSize(320, 480), new POBAdSize(300, POBVastError.GENERAL_COMPANION_AD_ERROR));
            this.mABanneriew = pOBBannerView;
            this.mCurrentAdSize = null;
            POBImpression impression = pOBBannerView.getImpression();
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
    }
}
