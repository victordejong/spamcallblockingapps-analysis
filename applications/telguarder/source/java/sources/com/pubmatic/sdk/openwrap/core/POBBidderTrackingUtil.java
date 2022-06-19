package com.pubmatic.sdk.openwrap.core;

import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.POBInstanceProvider;
import com.pubmatic.sdk.common.base.POBBidderResult;
import com.pubmatic.sdk.common.base.POBBiddingPartnerService;
import com.pubmatic.sdk.common.models.POBAdResponse;
import com.pubmatic.sdk.common.models.POBPartnerInfo;
import com.pubmatic.sdk.common.network.POBNetworkHandler;
import com.pubmatic.sdk.common.network.POBTrackerHandling;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBBidderTrackingUtil.class */
public class POBBidderTrackingUtil {
    public static final String AD_SERVER_AUCTION_LOST_MSG = "Bid loss due to server side auction.";
    public static final String AD_SERVER_NOTIFICATION_FAILURE_LOST_MSG = "Ad server notified failure.";
    public static final String CLIENT_SIDE_AUCTION_LOST_MSG = "Bid loss due to client side auction.";

    /* renamed from: a */
    private static void m874a(POBNetworkHandler pOBNetworkHandler, Map<String, POBPartnerInfo> map, List<POBBid> list, String str, POBError pOBError) {
        POBBiddingPartnerService partnerServices;
        POBTrackerHandling trackerHandler;
        POBPartnerInfo pOBPartnerInfo = map.get(str);
        if (pOBPartnerInfo == null || (partnerServices = POBInstanceProvider.getPartnerServices()) == null || (trackerHandler = partnerServices.getTrackerHandler(list, pOBPartnerInfo, pOBNetworkHandler)) == null) {
            return;
        }
        trackerHandler.executeLossTracker(pOBError);
    }

    public static void notifyBidderBidWin(POBNetworkHandler pOBNetworkHandler, POBBid pOBBid, Map<String, POBPartnerInfo> map) {
        POBBiddingPartnerService partnerServices = POBInstanceProvider.getPartnerServices();
        POBPartnerInfo pOBPartnerInfo = map.get(pOBBid.getPartnerId());
        if (pOBPartnerInfo == null || partnerServices == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(pOBBid);
        POBTrackerHandling trackerHandler = partnerServices.getTrackerHandler(arrayList, pOBPartnerInfo, pOBNetworkHandler);
        if (trackerHandler == null) {
            return;
        }
        trackerHandler.executeWinTrackers();
    }

    public static void notifyBidderLoss(POBNetworkHandler pOBNetworkHandler, Map<String, POBPartnerInfo> map, POBBid pOBBid, POBError pOBError) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(pOBBid);
        m874a(pOBNetworkHandler, map, arrayList, pOBBid.getPartnerId(), pOBError);
    }

    public static void notifyBidderLossWithError(POBNetworkHandler pOBNetworkHandler, POBBid pOBBid, Map<String, POBPartnerInfo> map, String str, POBError pOBError, Map<String, POBBidderResult<POBBid>> map2) {
        POBError pOBError2;
        for (Map.Entry<String, POBBidderResult<POBBid>> entry : map2.entrySet()) {
            String key = entry.getKey();
            POBBidderResult<POBBid> value = entry.getValue();
            List<POBBid> list = null;
            if (value != null) {
                POBError error = value.getError();
                POBAdResponse<POBBid> adResponse = value.getAdResponse();
                pOBError2 = error;
                if (adResponse != null) {
                    list = adResponse.getBids();
                    pOBError2 = error;
                }
            } else {
                pOBError2 = null;
            }
            if (list != null && list.size() > 0) {
                list.remove(pOBBid);
            }
            if ((list != null && list.size() > 0) || pOBError2 != null) {
                POBError pOBError3 = pOBError2;
                if (pOBError2 == null) {
                    pOBError3 = pOBError;
                }
                pOBError3.addExtraInfo(POBConstants.AUCTION_ID_KEY, str);
                if (pOBBid != null) {
                    pOBError3.addExtraInfo(POBConstants.AUCTION_PRICE_KEY, Double.valueOf(pOBBid.getPrice()));
                }
                if (map != null && list != null) {
                    m874a(pOBNetworkHandler, map, list, key, pOBError3);
                }
            }
        }
        map2.clear();
    }
}
