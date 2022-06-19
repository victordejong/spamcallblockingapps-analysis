package com.telguarder.features.advertisements.PostCallAds;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.base.POBBidsProvider;
import com.pubmatic.sdk.openwrap.banner.POBBannerEventListener;
import com.pubmatic.sdk.openwrap.core.POBBid;
import com.pubmatic.sdk.openwrap.eventhandler.dfp.DFPBannerEventHandler;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.advertisements.AdvertNetworkName;
import com.telguarder.helpers.analytics.AnalyticsManager;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler.class */
public class PostcallPmOpenWrapDfpBannerEventHandler extends DFPBannerEventHandler {
    public static String AD_SERVER = "AdServer";
    public PublisherAdView dfpAdView;
    private POBBannerEventListener externalEventListener;
    public String PM_OPENWRAP_DFP = AdvertNetworkName.PM_OPENWRAP_DFP.toString().toLowerCase(Locale.ENGLISH) + "_dfp_handler";
    private POBBid lastBid = null;
    private final POBBannerEventListener localEventListener = new POBBannerEventListener() { // from class: com.telguarder.features.advertisements.PostCallAds.PostcallPmOpenWrapDfpBannerEventHandler.1
        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEventListener
        public POBBidsProvider getBidsProvider() {
            return null;
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEventListener
        public void onAdClick() {
            if (PostcallPmOpenWrapDfpBannerEventHandler.this.externalEventListener != null) {
                PostcallPmOpenWrapDfpBannerEventHandler.this.externalEventListener.onAdClick();
            }
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEventListener
        public void onAdClosed() {
            if (PostcallPmOpenWrapDfpBannerEventHandler.this.externalEventListener != null) {
                PostcallPmOpenWrapDfpBannerEventHandler.this.externalEventListener.onAdClosed();
            }
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEventListener
        public void onAdLeftApplication() {
            if (PostcallPmOpenWrapDfpBannerEventHandler.this.externalEventListener != null) {
                PostcallPmOpenWrapDfpBannerEventHandler.this.externalEventListener.onAdLeftApplication();
            }
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEventListener
        public void onAdOpened() {
            if (PostcallPmOpenWrapDfpBannerEventHandler.this.externalEventListener != null) {
                PostcallPmOpenWrapDfpBannerEventHandler.this.externalEventListener.onAdOpened();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v39, types: [double] */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v1 */
        /* JADX WARN: Type inference failed for: r9v2 */
        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEventListener
        public void onAdServerWin(View view) {
            if (view instanceof PublisherAdView) {
                PostcallPmOpenWrapDfpBannerEventHandler.this.dfpAdView = (PublisherAdView) view;
                AdvertManager.getInstance().mLastOwDfpNetworkName = PostcallPmOpenWrapDfpBannerEventHandler.AD_SERVER;
                AnalyticsManager.getInstance().sendOwDfpPartnerWinAction(AdvertManager.getInstance().mLastOwDfpNetworkName, (PostcallPmOpenWrapDfpBannerEventHandler.this.lastBid != null ? PostcallPmOpenWrapDfpBannerEventHandler.this.lastBid.getPrice() : false) == true ? 1.0d : 0.0d);
                StringBuilder sb = new StringBuilder();
                sb.append(PostcallPmOpenWrapDfpBannerEventHandler.this.PM_OPENWRAP_DFP);
                sb.append("\n        - AD SERVER WIN!\n        - adSize: ");
                sb.append(PostcallPmOpenWrapDfpBannerEventHandler.this.dfpAdView != null ? PostcallPmOpenWrapDfpBannerEventHandler.this.dfpAdView.getAdSize() : "");
                AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
            }
            if (PostcallPmOpenWrapDfpBannerEventHandler.this.externalEventListener != null) {
                PostcallPmOpenWrapDfpBannerEventHandler.this.externalEventListener.onAdServerWin(view);
            }
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEventListener
        public void onFailed(POBError pOBError) {
            StringBuilder sb = new StringBuilder();
            sb.append(PostcallPmOpenWrapDfpBannerEventHandler.this.PM_OPENWRAP_DFP);
            sb.append(" ERROR\n        - code: ");
            sb.append(pOBError != null ? Integer.valueOf(pOBError.getErrorCode()) : "");
            AdvertManager.addAdNetworkFlowDebugInfo(sb.toString());
            if (PostcallPmOpenWrapDfpBannerEventHandler.this.externalEventListener != null) {
                PostcallPmOpenWrapDfpBannerEventHandler.this.externalEventListener.onFailed(pOBError);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v28, types: [double] */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r8v0 */
        /* JADX WARN: Type inference failed for: r8v1 */
        /* JADX WARN: Type inference failed for: r8v2 */
        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEventListener
        public void onOpenWrapPartnerWin() {
            AdvertManager.addAdNetworkFlowDebugInfo(PostcallPmOpenWrapDfpBannerEventHandler.this.PM_OPENWRAP_DFP + "\n        - " + AdvertManager.getInstance().mLastOwDfpNetworkName + " OW PARTNER WIN!");
            AnalyticsManager.getInstance().sendOwDfpPartnerWinAction(AdvertManager.getInstance().mLastOwDfpNetworkName, (PostcallPmOpenWrapDfpBannerEventHandler.this.lastBid != null ? PostcallPmOpenWrapDfpBannerEventHandler.this.lastBid.getPrice() : false) == true ? 1.0d : 0.0d);
            if (PostcallPmOpenWrapDfpBannerEventHandler.this.externalEventListener != null) {
                PostcallPmOpenWrapDfpBannerEventHandler.this.externalEventListener.onOpenWrapPartnerWin();
            }
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEventListener
        public void onOpenWrapPartnerWin(String str) {
            if (!TextUtils.isEmpty(str)) {
                AdvertManager.addAdNetworkFlowDebugInfo("\n        - bid id: " + str);
            }
        }
    };

    public PostcallPmOpenWrapDfpBannerEventHandler(Context context, String str, AdSize... adSizeArr) {
        super(context, str, adSizeArr);
    }

    @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.internal.ads.zzvc
    public void onAdClicked() {
        AnalyticsManager analyticsManager = AnalyticsManager.getInstance();
        analyticsManager.sendAdvertClickedAction("pm_ow_dfp_" + AdvertManager.getInstance().mLastOwDfpNetworkName);
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdImpression() {
        AnalyticsManager analyticsManager = AnalyticsManager.getInstance();
        analyticsManager.sendAdvertImpressionLoggedAction("pm_ow_dfp_" + AdvertManager.getInstance().mLastOwDfpNetworkName);
        AdvertManager.addAdNetworkFlowDebugInfo(this.PM_OPENWRAP_DFP + "\n        - ADSERVER IMPRESSION LOGGED!");
    }

    @Override // com.pubmatic.sdk.openwrap.eventhandler.dfp.DFPBannerEventHandler, com.google.android.gms.ads.doubleclick.AppEventListener
    public void onAppEvent(String str, String str2) {
        super.onAppEvent(str, str2);
        AdvertManager.addAdNetworkFlowDebugInfo(this.PM_OPENWRAP_DFP + "\n    - onAppEvent\n        - key: " + str + "\n        - s1: " + str2);
    }

    @Override // com.pubmatic.sdk.openwrap.eventhandler.dfp.DFPBannerEventHandler, com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void requestAd(POBBid pOBBid) {
        if (pOBBid != null) {
            this.lastBid = pOBBid;
            Map<String, String> targetingInfo = pOBBid.getTargetingInfo();
            StringBuilder sb = new StringBuilder();
            sb.append("\n    - TARGETING PARAMS:");
            if (targetingInfo != null && !targetingInfo.isEmpty()) {
                for (Map.Entry<String, String> entry : targetingInfo.entrySet()) {
                    sb.append("\n          - [");
                    sb.append(entry.getKey());
                    sb.append("] = ");
                    sb.append(entry.getValue());
                }
            }
            double price = pOBBid.getPrice();
            AnalyticsManager.getInstance().sendOwDfpRequestedWithBidDataAction(pOBBid.getPartnerName(), price);
            if (price > 0.0d) {
                sb.append("\n    - APP EVENT EXPECTED:\n        - bid price: " + price);
                AdvertManager.getInstance().mLastOwDfpNetworkName = pOBBid.getPartnerName();
                AnalyticsManager.getInstance().sendOwDfpBidResponse(pOBBid.getPartnerName(), price);
            } else {
                AdvertManager.getInstance().mLastOwDfpNetworkName = AD_SERVER;
            }
            if (pOBBid.getSummary() != null && pOBBid.getSummary().size() > 0) {
                sb.append("\n    - BID SUMMARY:");
                for (POBBid.POBSummary pOBSummary : pOBBid.getSummary()) {
                    sb.append("\n        - ");
                    sb.append(pOBSummary.getBidderName() + ", " + pOBSummary.getBidValue() + ", [" + pOBSummary.getWidth() + "x" + pOBSummary.getHeight() + "], msg:'" + pOBSummary.getErrorMessage() + "', code:" + pOBSummary.getErrorCode());
                }
            }
            sb.append("\n    - HIGHEST/WINNIG BID:\n        - Has won: " + pOBBid.hasWon() + "\n        - Status: " + pOBBid.getStatus() + "\n        - Partner: " + pOBBid.getPartnerName() + "\n        - Creative id: " + pOBBid.getCreativeId() + "\n        - Deal id: " + pOBBid.getDealId() + "\n        - L URL: " + pOBBid.getlURL() + "\n        - Cr. Type: " + pOBBid.getCreativeType() + "\n        - N URL: " + pOBBid.getnURL() + "\n        - Size: " + pOBBid.getWidth() + "x" + pOBBid.getHeight() + "\n        - Refresh intv.: " + pOBBid.getRefreshInterval());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.PM_OPENWRAP_DFP);
            sb2.append(" BID");
            sb2.append((Object) sb);
            AdvertManager.addAdNetworkFlowDebugInfo(sb2.toString());
        }
        super.requestAd(pOBBid);
    }

    @Override // com.pubmatic.sdk.openwrap.eventhandler.dfp.DFPBannerEventHandler, com.pubmatic.sdk.openwrap.banner.POBBannerEvent
    public void setEventListener(POBBannerEventListener pOBBannerEventListener) {
        this.externalEventListener = pOBBannerEventListener;
        super.setEventListener(this.localEventListener);
    }

    @Override // com.pubmatic.sdk.openwrap.eventhandler.dfp.DFPBannerEventHandler, com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void trackClick() {
        AnalyticsManager analyticsManager = AnalyticsManager.getInstance();
        analyticsManager.sendAdvertClickedAction("pm_ow_dfp_" + AdvertManager.getInstance().mLastOwDfpNetworkName);
    }

    @Override // com.pubmatic.sdk.openwrap.eventhandler.dfp.DFPBannerEventHandler, com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void trackImpression() {
        AnalyticsManager analyticsManager = AnalyticsManager.getInstance();
        analyticsManager.sendAdvertImpressionLoggedAction("pm_ow_dfp_" + AdvertManager.getInstance().mLastOwDfpNetworkName);
        AdvertManager.addAdNetworkFlowDebugInfo(this.PM_OPENWRAP_DFP + "\n        - PARTNER IMPRESSION LOGGED!");
    }
}
