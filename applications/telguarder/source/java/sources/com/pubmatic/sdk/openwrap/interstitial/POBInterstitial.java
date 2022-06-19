package com.pubmatic.sdk.openwrap.interstitial;

import android.content.Context;
import com.pubmatic.sdk.common.POBAdSize;
import com.pubmatic.sdk.common.POBDataType;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.POBInstanceProvider;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.base.POBBidderListener;
import com.pubmatic.sdk.common.base.POBBidderResult;
import com.pubmatic.sdk.common.base.POBBidding;
import com.pubmatic.sdk.common.base.POBBiddingPartnerService;
import com.pubmatic.sdk.common.base.POBBidsProvider;
import com.pubmatic.sdk.common.cache.POBCacheManager;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.models.POBAdResponse;
import com.pubmatic.sdk.common.models.POBPartnerInfo;
import com.pubmatic.sdk.common.p019ui.POBInterstitialRendererListener;
import com.pubmatic.sdk.common.p019ui.POBInterstitialRendering;
import com.pubmatic.sdk.common.p019ui.POBVideoAdEventListener;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.openwrap.core.POBBanner;
import com.pubmatic.sdk.openwrap.core.POBBid;
import com.pubmatic.sdk.openwrap.core.POBBidEvent;
import com.pubmatic.sdk.openwrap.core.POBBidEventHelper;
import com.pubmatic.sdk.openwrap.core.POBBidEventListener;
import com.pubmatic.sdk.openwrap.core.POBBidderAnalytics;
import com.pubmatic.sdk.openwrap.core.POBBidderTrackingUtil;
import com.pubmatic.sdk.openwrap.core.POBBiddingManager;
import com.pubmatic.sdk.openwrap.core.POBImpression;
import com.pubmatic.sdk.openwrap.core.POBRenderer;
import com.pubmatic.sdk.openwrap.core.POBRequest;
import com.pubmatic.sdk.openwrap.core.POBVideo;
import com.pubmatic.sdk.video.POBLogConstants;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/interstitial/POBInterstitial.class */
public class POBInterstitial implements POBBidEvent {

    /* renamed from: a */
    private POBBidding<POBBid> f808a;

    /* renamed from: b */
    private POBInterstitialEvent f809b;

    /* renamed from: c */
    private POBInterstitialListener f810c;

    /* renamed from: d */
    private POBVideoListener f811d;

    /* renamed from: e */
    private POBInterstitialRendering f812e;

    /* renamed from: f */
    private POBDataType.POBAdState f813f;

    /* renamed from: g */
    private Context f814g;

    /* renamed from: h */
    private int f815h;

    /* renamed from: i */
    private POBInterstitialEventListener f816i;

    /* renamed from: j */
    private POBInterstitialRendererListener f817j;

    /* renamed from: k */
    private POBVideoAdEventListener f818k;

    /* renamed from: l */
    private Map<String, Object> f819l;

    /* renamed from: m */
    private POBRequest f820m;

    /* renamed from: n */
    private Map<String, POBPartnerInfo> f821n;

    /* renamed from: o */
    private POBBidEventListener f822o;

    /* renamed from: p */
    private POBAdResponse<POBBid> f823p;

    /* renamed from: q */
    private Map<String, POBBidderResult<POBBid>> f824q;

    /* renamed from: r */
    private POBBidderAnalytics f825r;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBInterstitialListener.class */
    public static class POBInterstitialListener {
        public void onAdClicked(POBInterstitial pOBInterstitial) {
        }

        public void onAdClosed(POBInterstitial pOBInterstitial) {
        }

        public void onAdExpired(POBInterstitial pOBInterstitial) {
        }

        public void onAdFailed(POBInterstitial pOBInterstitial, POBError pOBError) {
        }

        public void onAdOpened(POBInterstitial pOBInterstitial) {
        }

        public void onAdReceived(POBInterstitial pOBInterstitial) {
        }

        public void onAppLeaving(POBInterstitial pOBInterstitial) {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/interstitial/POBInterstitial$POBVideoListener.class */
    public static class POBVideoListener {
        public void onVideoPlaybackCompleted(POBInterstitial pOBInterstitial) {
        }
    }

    /* renamed from: com.pubmatic.sdk.openwrap.interstitial.POBInterstitial$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/interstitial/POBInterstitial$a.class */
    public class C1952a extends POBCacheManager.POBPartnerConfigListener {
        C1952a() {
            POBInterstitial.this = r4;
        }

        @Override // com.pubmatic.sdk.common.cache.POBCacheManager.POBPartnerConfigListener
        protected void onPartnerConfigFailed(POBError pOBError) {
            PMLog.debug("POBInterstitial", "Client-side partner data loading is failed with error = " + pOBError.getErrorMessage(), new Object[0]);
            POBInterstitial.this.m786f();
        }

        @Override // com.pubmatic.sdk.common.cache.POBCacheManager.POBPartnerConfigListener
        protected void onPartnerConfigFetched(List<POBPartnerInfo> list) {
            for (POBPartnerInfo pOBPartnerInfo : list) {
                POBInterstitial.this.f821n.put(pOBPartnerInfo.getPubMaticPartnerId(), pOBPartnerInfo);
            }
            POBInterstitial.this.m786f();
        }
    }

    /* renamed from: com.pubmatic.sdk.openwrap.interstitial.POBInterstitial$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/interstitial/POBInterstitial$b.class */
    public class C1953b implements POBBidderListener<POBBid> {
        private C1953b() {
            POBInterstitial.this = r4;
        }

        /* synthetic */ C1953b(POBInterstitial pOBInterstitial, C1952a c1952a) {
            this();
        }

        @Override // com.pubmatic.sdk.common.base.POBBidderListener
        public void onBidsFailed(POBBidding<POBBid> pOBBidding, POBError pOBError) {
            PMLog.debug("POBInterstitial", "onBidsFailed : errorMessage= " + pOBError.toString(), new Object[0]);
            POBInterstitial.this.f824q = pOBBidding.getBidderResults();
            POBInterstitial.this.m818a();
            POBInterstitial pOBInterstitial = POBInterstitial.this;
            pOBInterstitial.m815a(pOBError, pOBInterstitial.f824q);
            if (POBInterstitial.this.f822o != null) {
                POBInterstitial.this.f813f = POBDataType.POBAdState.BID_FAILED;
                PMLog.info("POBInterstitial", POBLogConstants.MSG_FMT_BID_EVENT_ERROR, pOBError.getErrorMessage());
                POBInterstitial.this.f822o.onBidFailed(POBInterstitial.this, pOBError);
            } else if (POBInterstitial.this.f809b instanceof POBDefaultInterstitialEventHandler) {
                POBInterstitial.this.m816a(pOBError);
            } else {
                POBInterstitial.this.m797b((POBBid) null);
            }
        }

        @Override // com.pubmatic.sdk.common.base.POBBidderListener
        public void onBidsFetched(POBBidding<POBBid> pOBBidding, POBAdResponse<POBBid> pOBAdResponse) {
            POBBid pOBBid;
            if (POBInterstitial.this.f820m != null) {
                POBInterstitial.this.f824q = pOBBidding.getBidderResults();
                if (pOBAdResponse.getWinningBid() != null) {
                    POBInterstitial.this.f823p = new POBAdResponse.Builder(pOBAdResponse).updateWithRefreshIntervalAndExpiryTimeout(true).build();
                    pOBBid = (POBBid) POBInterstitial.this.f823p.getWinningBid();
                } else {
                    pOBBid = null;
                }
                if (pOBBid != null) {
                    PMLog.debug("POBInterstitial", POBLogConstants.MSG_DEBUG_BIDS_FETCHED, pOBBid.getImpressionId(), Double.valueOf(pOBBid.getPrice()));
                }
                POBInterstitial.this.m818a();
                if (!pOBAdResponse.isSendAllBidsEnabled()) {
                    POBInterstitial.this.m815a(new POBError(3001, POBBidderTrackingUtil.CLIENT_SIDE_AUCTION_LOST_MSG), POBInterstitial.this.f824q);
                }
                if (POBInterstitial.this.f822o == null) {
                    POBInterstitial.this.m797b(pOBBid);
                    return;
                }
                PMLog.debug("POBInterstitial", "Sharing bid through bidEventListener", new Object[0]);
                if (pOBBid != null && pOBBid.getStatus() == 1) {
                    POBInterstitial.this.f813f = POBDataType.POBAdState.BID_RECEIVED;
                    POBInterstitial.this.f822o.onBidReceived(POBInterstitial.this, pOBBid);
                    return;
                }
                POBInterstitial.this.f813f = POBDataType.POBAdState.BID_FAILED;
                POBError pOBError = new POBError(1002, POBLogConstants.MSG_NO_ADS_AVAILABLE);
                PMLog.info("POBInterstitial", POBLogConstants.MSG_FMT_BID_EVENT_ERROR, pOBError.getErrorMessage());
                POBInterstitial.this.f822o.onBidFailed(POBInterstitial.this, pOBError);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.pubmatic.sdk.openwrap.interstitial.POBInterstitial$c */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/interstitial/POBInterstitial$c.class */
    public class C1954c implements POBInterstitialEventListener {
        private C1954c() {
            POBInterstitial.this = r4;
        }

        /* synthetic */ C1954c(POBInterstitial pOBInterstitial, C1952a c1952a) {
            this();
        }

        /* renamed from: a */
        private void m765a() {
            POBBiddingPartnerService partnerServices;
            POBPartnerInfo pOBPartnerInfo;
            PMLog.debug("POBInterstitial", "PartnerBidWin", new Object[0]);
            POBBid winningBid = POBBiddingManager.getWinningBid(POBInterstitial.this.f823p);
            if (winningBid != null) {
                winningBid.setHasWon(true);
                POBUtils.logBidWinningStatus(winningBid.hasWon(), winningBid.getPartnerName());
                String partnerName = winningBid.getPartnerName();
                POBInterstitial pOBInterstitial = POBInterstitial.this;
                pOBInterstitial.f812e = pOBInterstitial.f809b.getRenderer(partnerName);
                if (POBInterstitial.this.f812e == null && (partnerServices = POBInstanceProvider.getPartnerServices()) != null && POBInterstitial.this.f821n != null && (pOBPartnerInfo = (POBPartnerInfo) POBInterstitial.this.f821n.get(winningBid.getPartnerId())) != null) {
                    POBInterstitial pOBInterstitial2 = POBInterstitial.this;
                    pOBInterstitial2.f812e = partnerServices.getInterstitialRenderer(pOBInterstitial2.f814g, pOBPartnerInfo);
                }
                if (POBInterstitial.this.f812e == null) {
                    POBInterstitial pOBInterstitial3 = POBInterstitial.this;
                    pOBInterstitial3.f812e = pOBInterstitial3.m814a(winningBid);
                }
                POBInterstitial.this.f812e.setAdRendererListener(POBInterstitial.this.f817j);
                POBInterstitial.this.f812e.setVideoAdEventListener(POBInterstitial.this.f818k);
                POBInterstitial.this.f812e.renderAd(winningBid);
            }
            if (POBInterstitial.this.f823p == null || !POBInterstitial.this.f823p.isSendAllBidsEnabled() || POBInterstitial.this.f824q == null) {
                return;
            }
            POBInterstitial.this.m815a(new POBError(POBError.AD_SERVER_AUCTION_LOST, POBBidderTrackingUtil.AD_SERVER_AUCTION_LOST_MSG), POBInterstitial.this.f824q);
        }

        @Override // com.pubmatic.sdk.openwrap.interstitial.POBInterstitialEventListener
        public POBBidsProvider getBidsProvider() {
            return POBInterstitial.this.f823p;
        }

        @Override // com.pubmatic.sdk.openwrap.interstitial.POBInterstitialEventListener
        public Map<String, Object> getCustomData() {
            return POBInterstitial.this.f819l;
        }

        @Override // com.pubmatic.sdk.openwrap.interstitial.POBInterstitialEventListener
        public void onAdClick() {
            POBInterstitial.this.m784g();
        }

        @Override // com.pubmatic.sdk.openwrap.interstitial.POBInterstitialEventListener
        public void onAdClosed() {
            POBInterstitial.this.m782h();
        }

        @Override // com.pubmatic.sdk.openwrap.interstitial.POBInterstitialEventListener
        public void onAdLeftApplication() {
            POBInterstitial.this.m776k();
        }

        @Override // com.pubmatic.sdk.openwrap.interstitial.POBInterstitialEventListener
        public void onAdOpened() {
            POBInterstitial.this.m780i();
        }

        @Override // com.pubmatic.sdk.openwrap.interstitial.POBInterstitialEventListener
        public void onAdServerWin() {
            POBError pOBError = new POBError(POBError.AD_SERVER_AUCTION_LOST, POBBidderTrackingUtil.AD_SERVER_AUCTION_LOST_MSG);
            if (POBInterstitial.this.f823p != null && POBInterstitial.this.f823p.isSendAllBidsEnabled() && POBInterstitial.this.f824q != null) {
                POBInterstitial pOBInterstitial = POBInterstitial.this;
                pOBInterstitial.m815a(pOBError, pOBInterstitial.f824q);
            }
            POBBid winningBid = POBBiddingManager.getWinningBid(POBInterstitial.this.f823p);
            if (winningBid != null) {
                POBInterstitial.this.m813a(winningBid, pOBError);
                POBUtils.logBidWinningStatus(winningBid.hasWon(), winningBid.getPartnerName());
            } else {
                PMLog.debug("POBInterstitial", "AdServerWin", new Object[0]);
            }
            POBInterstitial.this.f813f = POBDataType.POBAdState.AD_SERVER_READY;
            POBInterstitial.this.m790d();
        }

        @Override // com.pubmatic.sdk.openwrap.interstitial.POBInterstitialEventListener
        public void onFailed(POBError pOBError) {
            POBError pOBError2 = new POBError(1010, POBBidderTrackingUtil.AD_SERVER_NOTIFICATION_FAILURE_LOST_MSG);
            if (POBInterstitial.this.f823p != null && POBInterstitial.this.f823p.isSendAllBidsEnabled() && POBInterstitial.this.f824q != null) {
                POBInterstitial pOBInterstitial = POBInterstitial.this;
                pOBInterstitial.m815a(pOBError2, pOBInterstitial.f824q);
            }
            POBBid winningBid = POBBiddingManager.getWinningBid(POBInterstitial.this.f823p);
            if (winningBid != null) {
                POBInterstitial.this.m813a(winningBid, pOBError2);
            }
            POBInterstitial.this.m816a(pOBError);
        }

        @Override // com.pubmatic.sdk.openwrap.interstitial.POBInterstitialEventListener
        public void onOpenWrapPartnerWin() {
            m765a();
        }

        @Override // com.pubmatic.sdk.openwrap.interstitial.POBInterstitialEventListener
        public void onOpenWrapPartnerWin(String str) {
            if (POBInterstitial.this.f823p != null) {
                POBBid pOBBid = (POBBid) POBInterstitial.this.f823p.getBid(str);
                if (pOBBid != null) {
                    POBAdResponse.Builder updateWinningBid = new POBAdResponse.Builder(POBInterstitial.this.f823p).updateWinningBid(pOBBid);
                    POBInterstitial.this.f823p = updateWinningBid.build();
                } else {
                    PMLog.debug("POBInterstitial", POBLogConstants.MSG_INVALID_BIDID, new Object[0]);
                }
            }
            m765a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.pubmatic.sdk.openwrap.interstitial.POBInterstitial$d */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/interstitial/POBInterstitial$d.class */
    public class C1955d implements POBInterstitialRendererListener {
        private C1955d() {
            POBInterstitial.this = r4;
        }

        /* synthetic */ C1955d(POBInterstitial pOBInterstitial, C1952a c1952a) {
            this();
        }

        @Override // com.pubmatic.sdk.common.p019ui.POBInterstitialRendererListener
        public void onAdClicked() {
            POBInterstitial.this.m784g();
            POBInterstitial.this.f809b.trackClick();
        }

        @Override // com.pubmatic.sdk.common.p019ui.POBInterstitialRendererListener
        public void onAdExpired() {
            POBInterstitial.this.m793c();
        }

        @Override // com.pubmatic.sdk.common.p019ui.POBInterstitialRendererListener
        public void onAdInteractionStarted() {
            POBInterstitial.this.m780i();
            POBBid winningBid = POBBiddingManager.getWinningBid(POBInterstitial.this.f823p);
            if (winningBid == null || !winningBid.isVideo()) {
                return;
            }
            POBInterstitial.this.f809b.trackImpression();
        }

        @Override // com.pubmatic.sdk.common.p019ui.POBInterstitialRendererListener
        public void onAdInteractionStopped() {
            POBInterstitial.this.m782h();
        }

        @Override // com.pubmatic.sdk.common.p019ui.POBInterstitialRendererListener
        public void onAdRender(POBAdDescriptor pOBAdDescriptor) {
            PMLog.info("POBInterstitial", hashCode() + " : ******** onAdRender() ********", new Object[0]);
            POBInterstitial.this.m790d();
            POBBid winningBid = POBBiddingManager.getWinningBid(POBInterstitial.this.f823p);
            if (winningBid == null || winningBid.isVideo()) {
                return;
            }
            POBInterstitial.this.f809b.trackImpression();
        }

        @Override // com.pubmatic.sdk.common.p019ui.POBInterstitialRendererListener
        public void onAdRenderingFailed(POBError pOBError) {
            POBBid winningBid = POBBiddingManager.getWinningBid(POBInterstitial.this.f823p);
            if (winningBid != null) {
                POBInterstitial.this.m813a(winningBid, pOBError);
            }
            POBInterstitial.this.m816a(pOBError);
        }

        @Override // com.pubmatic.sdk.common.p019ui.POBInterstitialRendererListener
        public void onAdUnload() {
        }

        @Override // com.pubmatic.sdk.common.p019ui.POBInterstitialRendererListener
        public void onLeavingApplication() {
            POBInterstitial.this.m776k();
            POBInterstitial.this.f809b.trackClick();
        }

        @Override // com.pubmatic.sdk.common.p019ui.POBInterstitialRendererListener
        public void onReadyToExecuteTrackers() {
            POBPartnerInfo pOBPartnerInfo;
            POBBid winningBid = POBBiddingManager.getWinningBid(POBInterstitial.this.f823p);
            if (winningBid == null || POBInterstitial.this.f821n == null || POBInterstitial.this.f823p == null || POBInterstitial.this.f820m == null || POBInterstitial.this.f824q == null || (pOBPartnerInfo = (POBPartnerInfo) POBInterstitial.this.f821n.get(winningBid.getPartnerId())) == null) {
                return;
            }
            POBInterstitial pOBInterstitial = POBInterstitial.this;
            pOBInterstitial.m812a(pOBInterstitial.f820m).executeTracker(POBInterstitial.this.f823p, pOBPartnerInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.pubmatic.sdk.openwrap.interstitial.POBInterstitial$e */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/interstitial/POBInterstitial$e.class */
    public class C1956e implements POBVideoAdEventListener {
        private C1956e() {
            POBInterstitial.this = r4;
        }

        /* synthetic */ C1956e(POBInterstitial pOBInterstitial, C1952a c1952a) {
            this();
        }

        @Override // com.pubmatic.sdk.common.p019ui.POBVideoAdEventListener
        public void onVideoAdEvent(POBDataType.POBVideoAdEventType pOBVideoAdEventType) {
            PMLog.debug("POBInterstitial", "Interstitial Video Ad event: " + pOBVideoAdEventType, new Object[0]);
            if (POBInterstitial.this.f811d == null || POBDataType.POBVideoAdEventType.COMPLETE != pOBVideoAdEventType) {
                return;
            }
            POBInterstitial.this.f811d.onVideoPlaybackCompleted(POBInterstitial.this);
        }
    }

    public POBInterstitial(Context context, String str, int i, String str2) {
        this(context, str, i, str2, new POBDefaultInterstitialEventHandler());
    }

    public POBInterstitial(Context context, String str, int i, String str2, POBInterstitialEvent pOBInterstitialEvent) {
        this.f814g = context;
        this.f813f = POBDataType.POBAdState.DEFAULT;
        this.f819l = new HashMap();
        this.f821n = Collections.synchronizedMap(new HashMap());
        this.f816i = new C1954c(this, null);
        this.f817j = new C1955d(this, null);
        this.f818k = new C1956e(this, null);
        m800a(str, i, str2, pOBInterstitialEvent);
    }

    /* renamed from: a */
    public POBInterstitialRendering m814a(POBBid pOBBid) {
        return POBRenderer.getInterstitialRenderer(this.f814g, pOBBid.getRemainingExpirationTime());
    }

    /* renamed from: a */
    public POBBidderAnalytics m812a(POBRequest pOBRequest) {
        if (this.f825r == null) {
            this.f825r = new POBBidderAnalytics(pOBRequest, POBInstanceProvider.getTrackerHandler(POBInstanceProvider.getNetworkHandler(this.f814g.getApplicationContext())));
        }
        return this.f825r;
    }

    /* renamed from: a */
    private POBImpression m801a(String str) {
        POBImpression pOBImpression = new POBImpression(m799b(), str);
        pOBImpression.setAdPosition(POBRequest.AdPosition.FULL_SCREEN);
        pOBImpression.setInterstitial(true);
        return pOBImpression;
    }

    /* renamed from: a */
    public void m818a() {
        POBRequest pOBRequest = this.f820m;
        if (pOBRequest == null || this.f824q == null) {
            return;
        }
        m812a(pOBRequest).executeLogger(this.f823p, this.f821n, this.f824q, POBInstanceProvider.getAppInfo(this.f814g).getPackageName());
    }

    /* renamed from: a */
    public void m816a(POBError pOBError) {
        this.f813f = POBDataType.POBAdState.DEFAULT;
        m798b(pOBError);
    }

    /* renamed from: a */
    public void m815a(POBError pOBError, Map<String, POBBidderResult<POBBid>> map) {
        Map<String, POBPartnerInfo> map2 = this.f821n;
        if (map2 == null || map2.isEmpty()) {
            return;
        }
        POBImpression impression = getImpression();
        if (impression == null) {
            PMLog.debug("POBInterstitial", "Impression not available, can not executed bidder loss notification for client side partner.", new Object[0]);
            return;
        }
        POBBidderTrackingUtil.notifyBidderLossWithError(POBInstanceProvider.getNetworkHandler(this.f814g), POBBiddingManager.getWinningBid(this.f823p), this.f821n, impression.getId(), pOBError, map);
    }

    /* renamed from: a */
    public void m813a(POBBid pOBBid, POBError pOBError) {
        Map<String, POBPartnerInfo> map = this.f821n;
        if (map == null || map.isEmpty()) {
            return;
        }
        POBBidderTrackingUtil.notifyBidderLoss(POBInstanceProvider.getNetworkHandler(this.f814g), this.f821n, pOBBid, pOBError);
    }

    /* renamed from: a */
    private void m800a(String str, int i, String str2, POBInterstitialEvent pOBInterstitialEvent) {
        if (!m817a(this.f814g, str, str2, pOBInterstitialEvent)) {
            PMLog.error("POBInterstitial", new POBError(1001, POBLogConstants.MSG_MISSING_INPUT_PARAMS).toString(), new Object[0]);
            return;
        }
        this.f814g = this.f814g.getApplicationContext();
        this.f809b = pOBInterstitialEvent;
        pOBInterstitialEvent.setEventListener(this.f816i);
        POBBidding<POBBid> pOBBidding = this.f808a;
        if (pOBBidding != null) {
            pOBBidding.destroy();
            this.f808a = null;
        }
        this.f820m = POBRequest.createInstance(str, i, m801a(str2));
        this.f813f = POBDataType.POBAdState.DEFAULT;
    }

    /* renamed from: a */
    private boolean m817a(Context context, String str, String str2, POBInterstitialEvent pOBInterstitialEvent) {
        return context != null && pOBInterstitialEvent != null && !POBUtils.isNullOrEmpty(str) && !POBUtils.isNullOrEmpty(str2);
    }

    /* renamed from: b */
    private POBBidding<POBBid> m796b(POBRequest pOBRequest) {
        if (this.f808a == null) {
            this.f808a = POBBiddingManager.getNewInstance(this.f814g.getApplicationContext(), POBInstanceProvider.getPartnerServices(), pOBRequest, this.f821n);
            this.f808a.setBidderListener(new C1953b(this, null));
        }
        return this.f808a;
    }

    /* renamed from: b */
    private String m799b() {
        return UUID.randomUUID().toString();
    }

    /* renamed from: b */
    private void m798b(POBError pOBError) {
        PMLog.error("POBInterstitial", pOBError.getErrorMessage(), new Object[0]);
        POBInterstitialListener pOBInterstitialListener = this.f810c;
        if (pOBInterstitialListener != null) {
            pOBInterstitialListener.onAdFailed(this, pOBError);
        }
    }

    /* renamed from: b */
    public void m797b(POBBid pOBBid) {
        this.f809b.requestAd(pOBBid);
    }

    /* renamed from: c */
    public void m793c() {
        POBBid winningBid = POBBiddingManager.getWinningBid(this.f823p);
        if (winningBid != null) {
            m813a(winningBid, new POBError(1011, "Ad Expired"));
        }
        this.f813f = POBDataType.POBAdState.EXPIRED;
        POBInterstitialRendering pOBInterstitialRendering = this.f812e;
        if (pOBInterstitialRendering != null) {
            pOBInterstitialRendering.destroy();
            this.f812e = null;
        }
        POBInterstitialListener pOBInterstitialListener = this.f810c;
        if (pOBInterstitialListener != null) {
            pOBInterstitialListener.onAdExpired(this);
        }
    }

    /* renamed from: c */
    private void m792c(POBRequest pOBRequest) {
        Map<String, POBPartnerInfo> map = this.f821n;
        if (map != null && map.size() > 0) {
            this.f821n.clear();
        }
        POBInstanceProvider.getCacheManager(this.f814g).requestPartnerConfiguration(pOBRequest.getPubId(), pOBRequest.getProfileId(), pOBRequest.getVersionId(), getImpression().getAdUnitId(), new POBAdSize[]{POBUtils.getInterstitialAdSize(this.f814g)}, new C1952a());
    }

    /* renamed from: d */
    public void m790d() {
        if (this.f813f != POBDataType.POBAdState.AD_SERVER_READY) {
            this.f813f = POBDataType.POBAdState.READY;
        }
        m778j();
    }

    /* renamed from: e */
    private void m788e() {
        this.f813f = POBDataType.POBAdState.LOADING;
        POBAdResponse<POBBid> pOBAdResponse = this.f823p;
        if (pOBAdResponse != null) {
            this.f823p = new POBAdResponse.Builder(pOBAdResponse).setWinningBid(null).build();
        }
        PMLog.info("POBInterstitial", "Proceeding with bid. Ad server integration is " + this.f809b.getClass().getSimpleName(), new Object[0]);
        m797b((POBBid) null);
    }

    /* renamed from: f */
    public void m786f() {
        this.f823p = null;
        if (this.f820m != null) {
            POBAdSize interstitialAdSize = POBUtils.getInterstitialAdSize(this.f814g);
            POBImpression impression = getImpression();
            if (impression != null) {
                impression.setVideo(new POBVideo(POBVideo.Placement.INTERSTITIAL, POBVideo.Linearity.LINEAR, interstitialAdSize));
                impression.setBanner(new POBBanner(interstitialAdSize));
                int deviceOrientation = POBUtils.getDeviceOrientation(this.f814g);
                this.f815h = deviceOrientation;
                this.f819l.put("orientation", Integer.valueOf(deviceOrientation));
                this.f813f = POBDataType.POBAdState.LOADING;
                m796b(this.f820m).requestBid();
                return;
            }
        }
        m816a(new POBError(1001, POBLogConstants.MSG_MISSING_INPUT_PARAMS));
    }

    /* renamed from: g */
    public void m784g() {
        POBInterstitialListener pOBInterstitialListener = this.f810c;
        if (pOBInterstitialListener != null) {
            pOBInterstitialListener.onAdClicked(this);
        }
    }

    /* renamed from: h */
    public void m782h() {
        POBInterstitialListener pOBInterstitialListener = this.f810c;
        if (pOBInterstitialListener != null) {
            pOBInterstitialListener.onAdClosed(this);
        }
    }

    /* renamed from: i */
    public void m780i() {
        this.f813f = POBDataType.POBAdState.SHOWN;
        POBInterstitialListener pOBInterstitialListener = this.f810c;
        if (pOBInterstitialListener != null) {
            pOBInterstitialListener.onAdOpened(this);
        }
    }

    /* renamed from: j */
    private void m778j() {
        POBInterstitialListener pOBInterstitialListener = this.f810c;
        if (pOBInterstitialListener != null) {
            pOBInterstitialListener.onAdReceived(this);
        }
    }

    /* renamed from: k */
    public void m776k() {
        POBInterstitialListener pOBInterstitialListener = this.f810c;
        if (pOBInterstitialListener != null) {
            pOBInterstitialListener.onAppLeaving(this);
        }
    }

    public void destroy() {
        POBBid winningBid = POBBiddingManager.getWinningBid(this.f823p);
        if (POBDataType.POBAdState.READY.equals(this.f813f) && winningBid != null) {
            m813a(winningBid, new POBError(POBError.AD_NOT_USED, POBLogConstants.MSG_AD_NOT_USED_ERROR));
        }
        POBBidding<POBBid> pOBBidding = this.f808a;
        if (pOBBidding != null) {
            pOBBidding.destroy();
            this.f808a = null;
        }
        this.f813f = POBDataType.POBAdState.DEFAULT;
        POBInterstitialRendering pOBInterstitialRendering = this.f812e;
        if (pOBInterstitialRendering != null) {
            pOBInterstitialRendering.destroy();
        }
        POBInterstitialEvent pOBInterstitialEvent = this.f809b;
        if (pOBInterstitialEvent != null) {
            pOBInterstitialEvent.destroy();
        }
        Map<String, POBPartnerInfo> map = this.f821n;
        if (map != null) {
            map.clear();
            this.f821n = null;
        }
        Map<String, POBBidderResult<POBBid>> map2 = this.f824q;
        if (map2 != null) {
            map2.clear();
            this.f824q = null;
        }
        this.f811d = null;
        this.f810c = null;
    }

    public POBRequest getAdRequest() {
        POBRequest pOBRequest = this.f820m;
        if (pOBRequest != null) {
            return pOBRequest;
        }
        PMLog.warn("POBInterstitial", POBLogConstants.MSG_AD_OBJECT_INVALID, new Object[0]);
        return null;
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBidEvent
    public POBBid getBid() {
        return POBBiddingManager.getWinningBid(this.f823p);
    }

    public POBImpression getImpression() {
        POBImpression[] impressions;
        POBRequest adRequest = getAdRequest();
        if (adRequest == null || (impressions = adRequest.getImpressions()) == null || impressions.length == 0) {
            return null;
        }
        return impressions[0];
    }

    public boolean isReady() {
        return this.f813f.equals(POBDataType.POBAdState.READY) || this.f813f.equals(POBDataType.POBAdState.AD_SERVER_READY);
    }

    public void loadAd() {
        if (this.f820m == null) {
            m798b(new POBError(1001, POBLogConstants.MSG_MISSING_INPUT_PARAMS));
            PMLog.error("POBInterstitial", POBLogConstants.MSG_MISSING_INPUT_PARAMS, new Object[0]);
        } else if (this.f813f.equals(POBDataType.POBAdState.LOADING)) {
            PMLog.error("POBInterstitial", POBLogConstants.MSG_AD_LOADING_ERROR, new Object[0]);
        } else if (isReady()) {
            PMLog.error("POBInterstitial", POBLogConstants.MSG_AD_LOADED_ERROR, new Object[0]);
        } else if (this.f813f.equals(POBDataType.POBAdState.BID_FAILED) || this.f813f.equals(POBDataType.POBAdState.BID_RECEIVED)) {
            PMLog.error("POBInterstitial", POBLogConstants.MSG_AD_WAITING_ERROR, new Object[0]);
        } else if (POBInstanceProvider.getPartnerServices() != null) {
            m792c(this.f820m);
        } else {
            m786f();
        }
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBidEvent
    public void proceedOnError(POBBidEvent.BidEventError bidEventError) {
        if (this.f822o == null) {
            PMLog.warn("POBInterstitial", POBLogConstants.WARN_MSG_BID_EVENT_NOT_IMPLEMENTED, new Object[0]);
            return;
        }
        POBDataType.POBAdState pOBAdState = this.f813f;
        if (pOBAdState != POBDataType.POBAdState.BID_RECEIVED && pOBAdState != POBDataType.POBAdState.BID_FAILED) {
            PMLog.warn("POBInterstitial", POBLogConstants.WARN_MSG_BID_EVENT_INVALID_STATE, new Object[0]);
            return;
        }
        PMLog.info("POBInterstitial", POBLogConstants.INFO_MSG_BID_EVENT_PROCEED_ON_ERROR, new Object[0]);
        POBBid winningBid = POBBiddingManager.getWinningBid(this.f823p);
        if (winningBid != null) {
            m813a(winningBid, POBBidEventHelper.convertToPOBError(bidEventError));
        }
        if (this.f809b instanceof POBDefaultInterstitialEventHandler) {
            this.f813f = POBDataType.POBAdState.DEFAULT;
        } else {
            m788e();
        }
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBidEvent
    public boolean proceedToLoadAd() {
        if (this.f822o == null) {
            PMLog.warn("POBInterstitial", POBLogConstants.WARN_MSG_BID_EVENT_NOT_IMPLEMENTED, new Object[0]);
            return false;
        }
        POBDataType.POBAdState pOBAdState = this.f813f;
        if (pOBAdState != POBDataType.POBAdState.BID_RECEIVED && pOBAdState != POBDataType.POBAdState.BID_FAILED) {
            PMLog.warn("POBInterstitial", POBLogConstants.MSG_BID_NOT_RECEIVED_WARNING, new Object[0]);
            return false;
        }
        PMLog.info("POBInterstitial", POBLogConstants.INFO_MSG_BID_EVENT_PROCEED_TO_LOAD, new Object[0]);
        POBBid winningBid = POBBiddingManager.getWinningBid(this.f823p);
        if (winningBid == null || !winningBid.isExpired()) {
            PMLog.debug("POBInterstitial", POBLogConstants.MSG_PROCEEDING_WITH_BID, new Object[0]);
            this.f813f = POBDataType.POBAdState.LOADING;
            m797b(winningBid);
            return true;
        }
        POBError convertToPOBError = POBBidEventHelper.convertToPOBError(POBBidEvent.BidEventError.BID_EXPIRED);
        m813a(winningBid, convertToPOBError);
        if (this.f809b instanceof POBDefaultInterstitialEventHandler) {
            m816a(convertToPOBError);
            return false;
        }
        PMLog.warn("POBInterstitial", POBLogConstants.MSG_AD_EXPIRED_PROCEEDING_IGNORING_OPENWRAP_BID, new Object[0]);
        m788e();
        return true;
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBidEvent
    public void setBidEventListener(POBBidEventListener pOBBidEventListener) {
        this.f822o = pOBBidEventListener;
    }

    public void setListener(POBInterstitialListener pOBInterstitialListener) {
        this.f810c = pOBInterstitialListener;
    }

    public void setVideoListener(POBVideoListener pOBVideoListener) {
        this.f811d = pOBVideoListener;
    }

    public void show() {
        POBInterstitialRendering pOBInterstitialRendering;
        if (this.f813f.equals(POBDataType.POBAdState.AD_SERVER_READY)) {
            this.f809b.show();
        } else if (!isReady() || (pOBInterstitialRendering = this.f812e) == null) {
            POBError pOBError = this.f813f.equals(POBDataType.POBAdState.EXPIRED) ? new POBError(1011, POBLogConstants.MSG_AD_EXPIRED_ERROR) : this.f813f.equals(POBDataType.POBAdState.SHOWN) ? new POBError(2001, POBLogConstants.MSG_AD_ALREADY_SHOWN_ERROR) : new POBError(2002, POBLogConstants.MSG_AD_NOT_READY_ERROR);
            PMLog.error("POBInterstitial", pOBError.getErrorMessage(), new Object[0]);
            m798b(pOBError);
        } else {
            pOBInterstitialRendering.show(this.f815h);
            POBBid winningBid = POBBiddingManager.getWinningBid(this.f823p);
            if (winningBid == null || this.f821n == null) {
                return;
            }
            POBBidderTrackingUtil.notifyBidderBidWin(POBInstanceProvider.getNetworkHandler(this.f814g), winningBid, this.f821n);
        }
    }
}
