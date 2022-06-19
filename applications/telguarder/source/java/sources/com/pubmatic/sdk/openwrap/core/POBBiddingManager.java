package com.pubmatic.sdk.openwrap.core;

import android.content.Context;
import com.pubmatic.sdk.common.POBDataType;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.base.POBAuctioning;
import com.pubmatic.sdk.common.base.POBBaseBidder;
import com.pubmatic.sdk.common.base.POBBidderListener;
import com.pubmatic.sdk.common.base.POBBidderResult;
import com.pubmatic.sdk.common.base.POBBidding;
import com.pubmatic.sdk.common.base.POBBiddingPartnerService;
import com.pubmatic.sdk.common.base.POBPriceGranuilarityListener;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.models.POBAdResponse;
import com.pubmatic.sdk.common.models.POBPartnerInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBBiddingManager.class */
public class POBBiddingManager extends POBBaseBidder<POBBid> implements POBBidderListener<POBBid> {

    /* renamed from: a */
    private List<POBBidding<POBBid>> f718a;

    /* renamed from: d */
    private POBAuctioning<POBBid> f721d;

    /* renamed from: e */
    private POBManager f722e;

    /* renamed from: f */
    private POBPriceGranuilarityListener f723f;

    /* renamed from: g */
    private POBAdResponse<POBBid> f724g;

    /* renamed from: c */
    private List<POBBid> f720c = new ArrayList();

    /* renamed from: b */
    private List<POBBidding<POBBid>> f719b = new ArrayList();

    /* renamed from: h */
    private Map<String, POBBidderResult<POBBid>> f725h = new HashMap();

    public POBBiddingManager(List<POBBidding<POBBid>> list) {
        this.f718a = list;
        for (POBBidding<POBBid> pOBBidding : list) {
            pOBBidding.setBidderListener(this);
        }
    }

    /* renamed from: a */
    private POBAdResponse<POBBid> m870a(POBBid pOBBid, List<POBBid> list, List<POBBid> list2) {
        POBAdResponse<POBBid> adResponse;
        ArrayList arrayList = new ArrayList(list);
        arrayList.addAll(list2);
        POBAdResponse.Builder builder = new POBAdResponse.Builder(arrayList);
        builder.setWinningBid(pOBBid);
        POBManager pOBManager = this.f722e;
        if (pOBManager != null && (adResponse = pOBManager.getAdResponse()) != null) {
            builder.setRefreshInterval(adResponse.getRefreshInterval());
            builder.setLogger(adResponse.getLogger());
            builder.setTracker(adResponse.getTracker());
            builder.setSendAllBidsState(adResponse.isSendAllBidsEnabled());
        }
        builder.setServerSidePartnerBids(list2);
        builder.setClientSidePartnerBids(list);
        POBAdResponse<POBBid> build = builder.build();
        this.f724g = build;
        return build;
    }

    /* renamed from: a */
    private POBBid m871a(POBBid pOBBid) {
        POBPriceGranuilarityListener pOBPriceGranuilarityListener = this.f723f;
        POBBid pOBBid2 = pOBBid;
        if (pOBPriceGranuilarityListener != null) {
            pOBBid2 = POBBid.create(pOBBid, pOBPriceGranuilarityListener.priceGranularityInfo(pOBBid));
        }
        return pOBBid2;
    }

    /* renamed from: a */
    private List<POBBid> m869a(List<POBBid> list, POBBid pOBBid) {
        ArrayList arrayList = new ArrayList();
        for (POBBid pOBBid2 : list) {
            arrayList.add(POBBid.create(pOBBid2, false, pOBBid.equals(pOBBid2) ? POBDataType.POBBidTargetingType.BOTH : POBDataType.POBBidTargetingType.PARTNER_SPECIFIC));
        }
        return arrayList;
    }

    /* renamed from: a */
    private void m873a() {
        POBBidderListener<T> pOBBidderListener = this.bidderListener;
        if (pOBBidderListener != 0) {
            pOBBidderListener.onBidsFailed(this, new POBError(1002, "No Ads available from any bidder"));
        }
    }

    /* renamed from: a */
    private void m872a(POBBidding<POBBid> pOBBidding) {
        List<POBBid> list;
        List<POBBid> list2;
        POBBid pOBBid;
        POBBid pOBBid2;
        POBBid pOBBid3;
        boolean z;
        POBBid pOBBid4;
        POBAdResponse<POBBid> adResponse;
        synchronized (this) {
            this.f719b.remove(pOBBidding);
            POBBidderResult<POBBid> pOBBidderResult = pOBBidding.getBidderResults().get(((POBBaseBidder) pOBBidding).getIdentifier());
            if (pOBBidderResult != null && (adResponse = pOBBidderResult.getAdResponse()) != null) {
                this.f720c.addAll(adResponse.getBids());
            }
            this.f725h.put(((POBBaseBidder) pOBBidding).getIdentifier(), pOBBidderResult);
            if (this.f719b.isEmpty() && this.bidderListener != null) {
                if (!this.f720c.isEmpty()) {
                    POBManager pOBManager = this.f722e;
                    POBAdResponse<POBBid> defaultResponse = (pOBManager == null || pOBManager.getAdResponse() == null) ? POBAdResponse.defaultResponse() : this.f722e.getAdResponse();
                    List<POBBid> bids = defaultResponse.getBids();
                    List<POBBid> arrayList = new ArrayList<>(this.f720c);
                    arrayList.removeAll(bids);
                    if (!arrayList.isEmpty()) {
                        POBAuctioning<POBBid> pOBAuctioning = this.f721d;
                        list2 = bids;
                        list = arrayList;
                        pOBBid = null;
                        if (pOBAuctioning != null) {
                            POBBid perform = pOBAuctioning.perform(this.f720c);
                            list2 = bids;
                            list = arrayList;
                            pOBBid = null;
                            if (perform != null) {
                                if (arrayList.remove(perform)) {
                                    z = true;
                                } else {
                                    bids.remove(perform);
                                    z = false;
                                }
                                POBBid m871a = m871a(perform);
                                POBDataType.POBBidTargetingType pOBBidTargetingType = POBDataType.POBBidTargetingType.WINNING;
                                List<POBBid> list3 = bids;
                                List<POBBid> list4 = arrayList;
                                if (defaultResponse.isSendAllBidsEnabled()) {
                                    pOBBidTargetingType = POBDataType.POBBidTargetingType.BOTH;
                                    list4 = m869a(arrayList, perform);
                                    list3 = m868b(bids, perform);
                                }
                                if (z) {
                                    pOBBid4 = POBBid.create(m871a, false, pOBBidTargetingType);
                                    list4.add(pOBBid4);
                                } else {
                                    list3.add(m871a);
                                    pOBBid4 = m871a;
                                }
                                list2 = list3;
                                list = list4;
                                pOBBid = pOBBid4;
                            }
                        }
                    } else if (defaultResponse.isSendAllBidsEnabled()) {
                        Iterator<POBBid> it = bids.iterator();
                        do {
                            pOBBid3 = null;
                            if (!it.hasNext()) {
                                break;
                            }
                            pOBBid3 = it.next();
                        } while (!pOBBid3.isServerSideAuctionWinner());
                        list2 = bids;
                        list = arrayList;
                        pOBBid = pOBBid3;
                        if (pOBBid3 == null) {
                            list2 = bids;
                            list = arrayList;
                            pOBBid = pOBBid3;
                            if (!bids.isEmpty()) {
                                pOBBid2 = bids.get(0);
                                pOBBid = pOBBid2;
                                list = arrayList;
                                list2 = bids;
                            }
                        }
                    } else {
                        list2 = bids;
                        list = arrayList;
                        pOBBid = null;
                        if (!this.f720c.isEmpty()) {
                            pOBBid2 = this.f720c.get(0);
                            pOBBid = pOBBid2;
                            list = arrayList;
                            list2 = bids;
                        }
                    }
                    if (pOBBid != null) {
                        this.bidderListener.onBidsFetched(this, m870a(pOBBid, list, list2));
                    } else {
                        m873a();
                    }
                    this.f720c.clear();
                } else {
                    m873a();
                }
            }
        }
    }

    /* renamed from: b */
    private List<POBBid> m868b(List<POBBid> list, POBBid pOBBid) {
        POBBid pOBBid2;
        if (!pOBBid.isServerSideAuctionWinner()) {
            Iterator<POBBid> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    pOBBid2 = null;
                    break;
                }
                pOBBid2 = it.next();
                if (pOBBid2.isServerSideAuctionWinner()) {
                    break;
                }
            }
            if (pOBBid2 != null) {
                ArrayList arrayList = new ArrayList(list);
                arrayList.remove(pOBBid2);
                arrayList.add(POBBid.create(pOBBid2, true, POBDataType.POBBidTargetingType.PARTNER_SPECIFIC));
                return arrayList;
            }
        }
        return list;
    }

    public static POBBidding<POBBid> getNewInstance(Context context, POBBiddingPartnerService<POBBid> pOBBiddingPartnerService, POBRequest pOBRequest, Map<String, POBPartnerInfo> map) {
        POBBidding<POBBid> bidder;
        ArrayList arrayList = new ArrayList();
        POBManager pOBManager = new POBManager(pOBRequest, context);
        pOBManager.setIdentifier("OpenWrap");
        arrayList.add(pOBManager);
        if (pOBBiddingPartnerService == null || map == null) {
            PMLog.debug("POBBiddingManager", "Slot details are not available.", new Object[0]);
        } else {
            for (Map.Entry<String, POBPartnerInfo> entry : map.entrySet()) {
                POBPartnerInfo value = entry.getValue();
                if (value != null && (bidder = pOBBiddingPartnerService.getBidder(context, pOBRequest, value)) != null) {
                    arrayList.add(bidder);
                }
            }
        }
        POBBiddingManager pOBBiddingManager = new POBBiddingManager(arrayList);
        pOBBiddingManager.f722e = pOBManager;
        if (pOBBiddingPartnerService != null) {
            pOBBiddingManager.f721d = pOBBiddingPartnerService.getAuction();
            pOBBiddingManager.f723f = pOBBiddingPartnerService;
        }
        if (pOBBiddingManager.f721d == null) {
            pOBBiddingManager.f721d = new POBPriceBaseAuctioning();
        }
        return pOBBiddingManager;
    }

    public static POBBid getWinningBid(POBAdResponse<POBBid> pOBAdResponse) {
        if (pOBAdResponse != null) {
            return pOBAdResponse.getWinningBid();
        }
        return null;
    }

    @Override // com.pubmatic.sdk.common.base.POBBidding
    public void destroy() {
        synchronized (this) {
            for (POBBidding<POBBid> pOBBidding : this.f719b) {
                pOBBidding.destroy();
            }
            this.f725h.clear();
        }
    }

    @Override // com.pubmatic.sdk.common.base.POBBidding
    public POBAdResponse<POBBid> getAdResponse() {
        return this.f724g;
    }

    @Override // com.pubmatic.sdk.common.base.POBBidding
    public Map<String, POBBidderResult<POBBid>> getBidderResults() {
        return this.f725h;
    }

    @Override // com.pubmatic.sdk.common.base.POBBidderListener
    public void onBidsFailed(POBBidding<POBBid> pOBBidding, POBError pOBError) {
        m872a(pOBBidding);
    }

    @Override // com.pubmatic.sdk.common.base.POBBidderListener
    public void onBidsFetched(POBBidding<POBBid> pOBBidding, POBAdResponse<POBBid> pOBAdResponse) {
        m872a(pOBBidding);
    }

    @Override // com.pubmatic.sdk.common.base.POBBidding
    public void requestBid() {
        synchronized (this) {
            this.f719b.clear();
            this.f725h.clear();
            this.f719b.addAll(this.f718a);
            int size = this.f719b.size();
            for (int i = 0; i < size; i++) {
                this.f719b.get(i).requestBid();
            }
        }
    }
}
