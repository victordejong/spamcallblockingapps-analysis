package com.pubmatic.sdk.openwrap.banner;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.pubmatic.sdk.common.POBAdSize;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.POBInstanceProvider;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.base.POBAdRendererListener;
import com.pubmatic.sdk.common.base.POBBidderListener;
import com.pubmatic.sdk.common.base.POBBidderResult;
import com.pubmatic.sdk.common.base.POBBidding;
import com.pubmatic.sdk.common.base.POBBiddingPartnerService;
import com.pubmatic.sdk.common.base.POBBidsProvider;
import com.pubmatic.sdk.common.cache.POBCacheManager;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.models.POBAdResponse;
import com.pubmatic.sdk.common.models.POBPartnerInfo;
import com.pubmatic.sdk.common.p019ui.POBBannerRendering;
import com.pubmatic.sdk.common.utility.POBLooper;
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
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/banner/POBBannerView.class */
public class POBBannerView extends FrameLayout implements POBBidEvent {

    /* renamed from: v */
    private static final POBAdSize f638v = POBAdSize.BANNER_SIZE_300x250;

    /* renamed from: w */
    private static boolean f639w;

    /* renamed from: a */
    private int f640a;

    /* renamed from: b */
    private int f641b;

    /* renamed from: c */
    private POBBidding<POBBid> f642c;

    /* renamed from: d */
    private POBRequest f643d;

    /* renamed from: e */
    private POBBannerEvent f644e;

    /* renamed from: f */
    private POBBannerViewListener f645f;

    /* renamed from: g */
    private View f646g;

    /* renamed from: h */
    private boolean f647h;

    /* renamed from: i */
    private EnumC1928b f648i;

    /* renamed from: j */
    private POBLooper f649j;

    /* renamed from: k */
    private POBBannerEventListener f650k;

    /* renamed from: l */
    private POBAdRendererListener f651l;

    /* renamed from: m */
    private POBLooper.LooperListener f652m;

    /* renamed from: n */
    private POBBannerRendering f653n;

    /* renamed from: o */
    private boolean f654o;

    /* renamed from: p */
    private POBBannerRendering f655p;

    /* renamed from: q */
    private Map<String, POBPartnerInfo> f656q;

    /* renamed from: r */
    private POBBidEventListener f657r;

    /* renamed from: s */
    private POBAdResponse<POBBid> f658s;

    /* renamed from: t */
    private Map<String, POBBidderResult<POBBid>> f659t;

    /* renamed from: u */
    private POBBidderAnalytics f660u;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener.class */
    public static class POBBannerViewListener {
        public void onAdClosed(POBBannerView pOBBannerView) {
        }

        public void onAdFailed(POBBannerView pOBBannerView, POBError pOBError) {
        }

        public void onAdOpened(POBBannerView pOBBannerView) {
        }

        public void onAdReceived(POBBannerView pOBBannerView) {
        }

        public void onAppLeaving(POBBannerView pOBBannerView) {
        }
    }

    /* renamed from: com.pubmatic.sdk.openwrap.banner.POBBannerView$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/banner/POBBannerView$a.class */
    public class C1927a extends POBCacheManager.POBPartnerConfigListener {
        C1927a() {
            POBBannerView.this = r4;
        }

        @Override // com.pubmatic.sdk.common.cache.POBCacheManager.POBPartnerConfigListener
        protected void onPartnerConfigFailed(POBError pOBError) {
            PMLog.debug("POBBannerView", "Client-side partner data loading is failed with error = " + pOBError.getErrorMessage(), new Object[0]);
            POBBannerView.this.m915g();
        }

        @Override // com.pubmatic.sdk.common.cache.POBCacheManager.POBPartnerConfigListener
        protected void onPartnerConfigFetched(List<POBPartnerInfo> list) {
            for (POBPartnerInfo pOBPartnerInfo : list) {
                POBBannerView.this.f656q.put(pOBPartnerInfo.getPubMaticPartnerId(), pOBPartnerInfo);
            }
            POBBannerView.this.m915g();
        }
    }

    /* renamed from: com.pubmatic.sdk.openwrap.banner.POBBannerView$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/banner/POBBannerView$b.class */
    public enum EnumC1928b {
        DEFAULT,
        LOADING,
        WAITING,
        REFRESHING
    }

    /* renamed from: com.pubmatic.sdk.openwrap.banner.POBBannerView$c */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/banner/POBBannerView$c.class */
    public class C1929c implements POBLooper.LooperListener {

        /* renamed from: com.pubmatic.sdk.openwrap.banner.POBBannerView$c$a */
        /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/banner/POBBannerView$c$a.class */
        class RunnableC1930a implements Runnable {
            RunnableC1930a() {
                C1929c.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (POBBannerView.this.f653n != null) {
                    POBBannerView.this.f653n.prepareToDetach();
                }
                POBBannerView.this.m919e();
            }
        }

        private C1929c() {
            POBBannerView.this = r4;
        }

        /* synthetic */ C1929c(POBBannerView pOBBannerView, C1927a c1927a) {
            this();
        }

        @Override // com.pubmatic.sdk.common.utility.POBLooper.LooperListener
        public void invoke() {
            if (!POBBannerView.this.f654o || (POBBannerView.this.isAttachedToWindow() && POBBannerView.this.hasWindowFocus() && POBBannerView.this.isShown() && POBUtils.getVisiblePercent(POBBannerView.this) >= 30.0f && !POBBannerView.f639w)) {
                POBUtils.runOnMainThread(new RunnableC1930a());
                return;
            }
            PMLog.debug("POBBannerView", "Banner is not visibile.", new Object[0]);
            POBBannerView pOBBannerView = POBBannerView.this;
            pOBBannerView.m952a(pOBBannerView.f640a);
        }
    }

    /* renamed from: com.pubmatic.sdk.openwrap.banner.POBBannerView$d */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/banner/POBBannerView$d.class */
    public class C1931d implements POBBannerEventListener {
        private C1931d() {
            POBBannerView.this = r4;
        }

        /* synthetic */ C1931d(POBBannerView pOBBannerView, C1927a c1927a) {
            this();
        }

        /* renamed from: a */
        private void m896a() {
            POBBiddingPartnerService partnerServices;
            POBPartnerInfo pOBPartnerInfo;
            PMLog.debug("POBBannerView", "PartnerBidWin", new Object[0]);
            POBBid winningBid = POBBiddingManager.getWinningBid(POBBannerView.this.f658s);
            if (winningBid != null) {
                winningBid.setHasWon(true);
                POBUtils.logBidWinningStatus(winningBid.hasWon(), winningBid.getPartnerName());
                String partnerName = winningBid.getPartnerName();
                POBBannerView pOBBannerView = POBBannerView.this;
                pOBBannerView.f655p = pOBBannerView.f644e.getRenderer(partnerName);
                if (POBBannerView.this.f655p == null && (partnerServices = POBInstanceProvider.getPartnerServices()) != null && POBBannerView.this.f656q != null && (pOBPartnerInfo = (POBPartnerInfo) POBBannerView.this.f656q.get(winningBid.getPartnerId())) != null) {
                    POBBannerView pOBBannerView2 = POBBannerView.this;
                    pOBBannerView2.f655p = partnerServices.getBannerRenderer(pOBBannerView2.getContext(), pOBPartnerInfo);
                }
                if (POBBannerView.this.f655p == null) {
                    POBBannerView pOBBannerView3 = POBBannerView.this;
                    pOBBannerView3.f655p = POBRenderer.getBannerRenderer(pOBBannerView3.getContext(), winningBid.getRemainingExpirationTime());
                }
                POBBannerView.this.f655p.setAdRendererListener(POBBannerView.this.f651l);
                POBBannerView.this.f655p.renderAd(winningBid);
            }
            if (POBBannerView.this.f658s == null || !POBBannerView.this.f658s.isSendAllBidsEnabled() || POBBannerView.this.f659t == null) {
                return;
            }
            POBBannerView.this.m949a(new POBError(POBError.AD_SERVER_AUCTION_LOST, POBBidderTrackingUtil.AD_SERVER_AUCTION_LOST_MSG), POBBannerView.this.f659t);
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEventListener
        public POBBidsProvider getBidsProvider() {
            return POBBannerView.this.f658s;
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEventListener
        public void onAdClick() {
            POBBannerView.this.m909j();
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEventListener
        public void onAdClosed() {
            POBBannerView.this.m924c();
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEventListener
        public void onAdLeftApplication() {
            POBBannerView.this.m907k();
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEventListener
        public void onAdOpened() {
            POBBannerView.this.m921d();
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEventListener
        public void onAdServerWin(View view) {
            POBError pOBError = new POBError(POBError.AD_SERVER_AUCTION_LOST, POBBidderTrackingUtil.AD_SERVER_AUCTION_LOST_MSG);
            if (POBBannerView.this.f658s != null && POBBannerView.this.f658s.isSendAllBidsEnabled() && POBBannerView.this.f659t != null) {
                POBBannerView pOBBannerView = POBBannerView.this;
                pOBBannerView.m949a(pOBError, pOBBannerView.f659t);
            }
            POBBid winningBid = POBBiddingManager.getWinningBid(POBBannerView.this.f658s);
            if (winningBid != null) {
                POBBannerView.this.m934a(winningBid, pOBError);
                POBUtils.logBidWinningStatus(winningBid.hasWon(), winningBid.getPartnerName());
            } else {
                PMLog.debug("POBBannerView", "AdServerWin", new Object[0]);
            }
            POBBannerView.this.f647h = false;
            POBBannerView.this.m929b(view);
            POBBannerView pOBBannerView2 = POBBannerView.this;
            pOBBannerView2.m952a(pOBBannerView2.f640a);
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEventListener
        public void onFailed(POBError pOBError) {
            POBError pOBError2 = new POBError(1010, POBBidderTrackingUtil.AD_SERVER_NOTIFICATION_FAILURE_LOST_MSG);
            if (POBBannerView.this.f658s != null && POBBannerView.this.f658s.isSendAllBidsEnabled() && POBBannerView.this.f659t != null) {
                POBBannerView pOBBannerView = POBBannerView.this;
                pOBBannerView.m949a(pOBError2, pOBBannerView.f659t);
            }
            POBBid winningBid = POBBiddingManager.getWinningBid(POBBannerView.this.f658s);
            if (winningBid != null) {
                POBBannerView.this.m934a(winningBid, pOBError2);
            }
            POBBannerView.this.m950a(pOBError);
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEventListener
        public void onOpenWrapPartnerWin() {
            m896a();
        }

        @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEventListener
        public void onOpenWrapPartnerWin(String str) {
            if (POBBannerView.this.f658s != null) {
                POBBid pOBBid = (POBBid) POBBannerView.this.f658s.getBid(str);
                if (pOBBid != null) {
                    POBAdResponse.Builder updateWinningBid = new POBAdResponse.Builder(POBBannerView.this.f658s).updateWinningBid(pOBBid);
                    POBBannerView.this.f658s = updateWinningBid.build();
                } else {
                    PMLog.debug("POBBannerView", POBLogConstants.MSG_INVALID_BIDID, new Object[0]);
                }
            }
            m896a();
        }
    }

    /* renamed from: com.pubmatic.sdk.openwrap.banner.POBBannerView$e */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/banner/POBBannerView$e.class */
    public class C1932e implements POBBidderListener<POBBid> {
        private C1932e() {
            POBBannerView.this = r4;
        }

        /* synthetic */ C1932e(POBBannerView pOBBannerView, C1927a c1927a) {
            this();
        }

        @Override // com.pubmatic.sdk.common.base.POBBidderListener
        public void onBidsFailed(POBBidding<POBBid> pOBBidding, POBError pOBError) {
            if (POBBannerView.this.f643d == null) {
                PMLog.error("POBBannerView", "Unable to notify bid event as request is null", new Object[0]);
                return;
            }
            PMLog.debug("POBBannerView", "onBidsFailed : errorMessage= " + pOBError.toString(), new Object[0]);
            POBBannerView.this.f659t = pOBBidding.getBidderResults();
            POBBannerView.this.m930b();
            POBBannerView pOBBannerView = POBBannerView.this;
            pOBBannerView.m949a(pOBError, pOBBannerView.f659t);
            if (POBBannerView.this.f657r != null) {
                PMLog.debug("POBBannerView", "Sharing bid through bidEventListener", new Object[0]);
                POBBannerView.this.setState(EnumC1928b.WAITING);
                POBBannerView.this.f657r.onBidFailed(POBBannerView.this, pOBError);
            } else if (POBBannerView.this.f644e instanceof POBDefaultBannerEventHandler) {
                POBBannerView.this.m950a(pOBError);
            } else {
                POBBannerView.this.m935a((POBBid) null);
            }
        }

        @Override // com.pubmatic.sdk.common.base.POBBidderListener
        public void onBidsFetched(POBBidding<POBBid> pOBBidding, POBAdResponse<POBBid> pOBAdResponse) {
            POBBid pOBBid;
            if (POBBannerView.this.f643d == null) {
                PMLog.error("POBBannerView", "Unable to notify bid event as request is null", new Object[0]);
                return;
            }
            POBBannerView.this.f659t = pOBBidding.getBidderResults();
            if (pOBAdResponse.getWinningBid() != null) {
                POBBannerView.this.f658s = new POBAdResponse.Builder(pOBAdResponse).updateWithRefreshIntervalAndExpiryTimeout(false).build();
                pOBBid = (POBBid) POBBannerView.this.f658s.getWinningBid();
            } else {
                pOBBid = null;
            }
            POBBannerView.this.m930b();
            if (pOBBid != null) {
                PMLog.debug("POBBannerView", "onBidsFetched : ImpressionId=" + pOBBid.getImpressionId() + ", BidPrice=" + pOBBid.getPrice(), new Object[0]);
            }
            if (!pOBAdResponse.isSendAllBidsEnabled()) {
                POBBannerView.this.m949a(new POBError(3001, POBBidderTrackingUtil.CLIENT_SIDE_AUCTION_LOST_MSG), POBBannerView.this.f659t);
            }
            if (POBBannerView.this.f657r == null) {
                POBBannerView.this.m935a(pOBBid);
                return;
            }
            PMLog.debug("POBBannerView", "Sharing bid through bidEventListener", new Object[0]);
            POBBannerView.this.setState(EnumC1928b.WAITING);
            if (pOBBid != null && pOBBid.getStatus() == 1) {
                POBBannerView.this.f657r.onBidReceived(POBBannerView.this, pOBBid);
                return;
            }
            POBError pOBError = new POBError(1002, POBLogConstants.MSG_NO_ADS_AVAILABLE);
            PMLog.info("POBBannerView", POBLogConstants.MSG_FMT_BID_EVENT_ERROR, pOBError.getErrorMessage());
            POBBannerView.this.f657r.onBidFailed(POBBannerView.this, pOBError);
        }
    }

    /* renamed from: com.pubmatic.sdk.openwrap.banner.POBBannerView$f */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/banner/POBBannerView$f.class */
    public class C1933f implements POBAdRendererListener {
        private C1933f() {
            POBBannerView.this = r4;
        }

        /* synthetic */ C1933f(POBBannerView pOBBannerView, C1927a c1927a) {
            this();
        }

        @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
        public void onAdExpired() {
        }

        @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
        public void onAdInteractionStarted() {
            POBBannerView.this.m921d();
            POBBannerView.this.f644e.trackClick();
        }

        @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
        public void onAdInteractionStopped() {
            POBBannerView.this.m924c();
        }

        @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
        public void onAdReadyToRefresh(int i) {
            POBBannerView.this.m952a(i);
        }

        @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
        public void onAdRender(View view, POBAdDescriptor pOBAdDescriptor) {
            PMLog.debug("POBBannerView", "onAdRender()", new Object[0]);
            POBBid winningBid = POBBiddingManager.getWinningBid(POBBannerView.this.f658s);
            if (winningBid != null && POBBannerView.this.f656q != null) {
                POBBidderTrackingUtil.notifyBidderBidWin(POBInstanceProvider.getNetworkHandler(POBBannerView.this.getContext()), winningBid, POBBannerView.this.f656q);
            }
            POBBannerView.this.f647h = true;
            POBBannerView.this.m929b(view);
            POBBannerView.this.f644e.trackImpression();
        }

        @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
        public void onAdRenderingFailed(POBError pOBError) {
            POBBid winningBid = POBBiddingManager.getWinningBid(POBBannerView.this.f658s);
            if (winningBid != null) {
                POBBannerView.this.m934a(winningBid, pOBError);
            }
            POBBannerView.this.m950a(pOBError);
        }

        @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
        public void onAdUnload() {
        }

        @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
        public void onLeavingApplication() {
            POBBannerView.this.m907k();
            POBBannerView.this.f644e.trackClick();
        }

        @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
        public void onReadyToExecuteTrackers() {
            POBPartnerInfo pOBPartnerInfo;
            POBBid winningBid = POBBiddingManager.getWinningBid(POBBannerView.this.f658s);
            if (winningBid == null || POBBannerView.this.f656q == null || POBBannerView.this.f658s == null || POBBannerView.this.f643d == null || POBBannerView.this.f659t == null || (pOBPartnerInfo = (POBPartnerInfo) POBBannerView.this.f656q.get(winningBid.getPartnerId())) == null) {
                return;
            }
            POBBannerView pOBBannerView = POBBannerView.this;
            pOBBannerView.m933a(pOBBannerView.f643d).executeTracker(POBBannerView.this.f658s, pOBPartnerInfo);
        }

        @Override // com.pubmatic.sdk.common.base.POBAdRendererListener
        public void onRenderAdClick() {
        }
    }

    public POBBannerView(Context context) {
        this(context, null);
    }

    public POBBannerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public POBBannerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f648i = EnumC1928b.DEFAULT;
    }

    public POBBannerView(Context context, String str, int i, String str2, POBBannerEvent pOBBannerEvent) {
        this(context, null, 0);
        init(str, i, str2, pOBBannerEvent);
    }

    public POBBannerView(Context context, String str, int i, String str2, POBAdSize... pOBAdSizeArr) {
        this(context, str, i, str2, new POBDefaultBannerEventHandler(pOBAdSizeArr));
    }

    /* renamed from: a */
    private POBError m932a(String str, String str2, POBBannerEvent pOBBannerEvent, POBAdSize... pOBAdSizeArr) {
        return !m925b(str, str2, pOBBannerEvent, pOBAdSizeArr) ? new POBError(1001, "Missing ad request parameters. Please check.") : null;
    }

    /* renamed from: a */
    public POBBidderAnalytics m933a(POBRequest pOBRequest) {
        if (this.f660u == null) {
            this.f660u = new POBBidderAnalytics(pOBRequest, POBInstanceProvider.getTrackerHandler(POBInstanceProvider.getNetworkHandler(getContext().getApplicationContext())));
        }
        return this.f660u;
    }

    /* renamed from: a */
    public void m952a(int i) {
        if (this.f649j != null) {
            setState(EnumC1928b.REFRESHING);
            this.f649j.loop(i);
        }
    }

    /* renamed from: a */
    private void m951a(View view) {
        if (view != null) {
            m905l();
            this.f646g = view;
            addView(view, new FrameLayout.LayoutParams(-1, -1));
            m911i();
        }
    }

    /* renamed from: a */
    public void m950a(POBError pOBError) {
        m903m();
        m952a(this.f640a);
        m928b(pOBError);
    }

    /* renamed from: a */
    public void m949a(POBError pOBError, Map<String, POBBidderResult<POBBid>> map) {
        Map<String, POBPartnerInfo> map2 = this.f656q;
        if (map2 == null || map2.isEmpty()) {
            return;
        }
        POBImpression impression = getImpression();
        if (impression == null) {
            PMLog.debug("POBBannerView", "Impression not available, can not executed bidder loss notification for client side partner.", new Object[0]);
            return;
        }
        POBBidderTrackingUtil.notifyBidderLossWithError(POBInstanceProvider.getNetworkHandler(getContext()), POBBiddingManager.getWinningBid(this.f658s), this.f656q, impression.getId(), pOBError, map);
    }

    /* renamed from: a */
    public void m935a(POBBid pOBBid) {
        setRefreshInterval(pOBBid);
        this.f644e.requestAd(pOBBid);
    }

    /* renamed from: a */
    public void m934a(POBBid pOBBid, POBError pOBError) {
        Map<String, POBPartnerInfo> map = this.f656q;
        if (map == null || map.isEmpty()) {
            return;
        }
        POBBidderTrackingUtil.notifyBidderLoss(POBInstanceProvider.getNetworkHandler(getContext()), this.f656q, pOBBid, pOBError);
    }

    /* renamed from: a */
    private boolean m931a(POBAdSize[] pOBAdSizeArr) {
        for (POBAdSize pOBAdSize : pOBAdSizeArr) {
            if (f638v.equals(pOBAdSize)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private POBBidding<POBBid> m926b(POBRequest pOBRequest) {
        if (this.f642c == null) {
            this.f642c = POBBiddingManager.getNewInstance(getContext().getApplicationContext(), POBInstanceProvider.getPartnerServices(), pOBRequest, this.f656q);
            this.f642c.setBidderListener(new C1932e(this, null));
        }
        return this.f642c;
    }

    /* renamed from: b */
    public void m930b() {
        POBRequest pOBRequest;
        Map<String, POBPartnerInfo> map = this.f656q;
        if (map == null || map.isEmpty() || (pOBRequest = this.f643d) == null || this.f659t == null) {
            return;
        }
        m933a(pOBRequest).executeLogger(this.f658s, this.f656q, this.f659t, POBInstanceProvider.getAppInfo(getContext()).getPackageName());
    }

    /* renamed from: b */
    public void m929b(View view) {
        this.f654o = true;
        POBBannerRendering pOBBannerRendering = this.f653n;
        if (pOBBannerRendering != null) {
            pOBBannerRendering.destroy();
        }
        this.f653n = this.f655p;
        this.f655p = null;
        m951a(view);
        m903m();
    }

    /* renamed from: b */
    private void m928b(POBError pOBError) {
        POBBannerViewListener pOBBannerViewListener = this.f645f;
        if (pOBBannerViewListener != null) {
            pOBBannerViewListener.onAdFailed(this, pOBError);
        }
    }

    /* renamed from: b */
    private boolean m925b(String str, String str2, POBBannerEvent pOBBannerEvent, POBAdSize... pOBAdSizeArr) {
        return pOBBannerEvent != null && !POBUtils.isNullOrEmpty(str) && !POBUtils.isNullOrEmpty(str2) && !POBUtils.isNull(pOBAdSizeArr);
    }

    /* renamed from: c */
    public void m924c() {
        int i = this.f641b - 1;
        this.f641b = i;
        if (i == 0) {
            f639w = false;
            POBLooper pOBLooper = this.f649j;
            if (pOBLooper != null) {
                pOBLooper.resume();
            }
            m913h();
        }
    }

    /* renamed from: c */
    private void m922c(POBRequest pOBRequest) {
        Map<String, POBPartnerInfo> map = this.f656q;
        if (map != null && map.size() > 0) {
            this.f656q.clear();
        }
        POBInstanceProvider.getCacheManager(getContext()).requestPartnerConfiguration(pOBRequest.getPubId(), pOBRequest.getProfileId(), pOBRequest.getVersionId(), getImpression().getAdUnitId(), this.f644e.requestedAdSizes(), new C1927a());
    }

    /* renamed from: d */
    public void m921d() {
        if (this.f641b == 0) {
            f639w = true;
            POBLooper pOBLooper = this.f649j;
            if (pOBLooper != null) {
                pOBLooper.pause();
            }
            m909j();
        }
        this.f641b++;
    }

    /* renamed from: e */
    public void m919e() {
        this.f658s = null;
        this.f647h = false;
        if (this.f643d != null) {
            setState(EnumC1928b.LOADING);
            m926b(this.f643d).requestBid();
            return;
        }
        m928b(new POBError(1001, "Missing ad request parameters. Please check."));
        PMLog.error("POBBannerView", "Missing ad request parameters. Please check.", new Object[0]);
    }

    /* renamed from: f */
    private void m917f() {
        setState(EnumC1928b.LOADING);
        POBAdResponse<POBBid> pOBAdResponse = this.f658s;
        if (pOBAdResponse != null) {
            this.f658s = new POBAdResponse.Builder(pOBAdResponse).setWinningBid(null).build();
        }
        PMLog.info("POBBannerView", "Proceeding with bid. Ad server integration is " + this.f644e.getClass().getSimpleName(), new Object[0]);
        m935a((POBBid) null);
    }

    /* renamed from: g */
    public void m915g() {
        this.f654o = false;
        m919e();
    }

    private String getImpressionId() {
        return UUID.randomUUID().toString();
    }

    /* renamed from: h */
    private void m913h() {
        POBBannerViewListener pOBBannerViewListener = this.f645f;
        if (pOBBannerViewListener != null) {
            pOBBannerViewListener.onAdClosed(this);
        }
    }

    /* renamed from: i */
    private void m911i() {
        POBBannerViewListener pOBBannerViewListener = this.f645f;
        if (pOBBannerViewListener != null) {
            pOBBannerViewListener.onAdReceived(this);
        }
    }

    /* renamed from: j */
    public void m909j() {
        POBBannerViewListener pOBBannerViewListener = this.f645f;
        if (pOBBannerViewListener != null) {
            pOBBannerViewListener.onAdOpened(this);
        }
    }

    /* renamed from: k */
    public void m907k() {
        POBBannerViewListener pOBBannerViewListener = this.f645f;
        if (pOBBannerViewListener != null) {
            pOBBannerViewListener.onAppLeaving(this);
        }
    }

    /* renamed from: l */
    private void m905l() {
        View view = this.f646g;
        if (view != null) {
            removeView(view);
        }
    }

    /* renamed from: m */
    private void m903m() {
        if (this.f640a <= 0) {
            setState(EnumC1928b.DEFAULT);
        }
    }

    private void setRefreshInterval(int i) {
        POBLooper pOBLooper = this.f649j;
        if (pOBLooper != null) {
            pOBLooper.destroy();
            this.f649j = null;
        }
        this.f640a = POBUtils.getValidRefreshInterval(i, 10);
        if (i > 0) {
            POBLooper pOBLooper2 = new POBLooper();
            this.f649j = pOBLooper2;
            pOBLooper2.setListener(this.f652m);
            this.f649j.setNetworkMonitor(POBInstanceProvider.getNetworkMonitor(getContext().getApplicationContext()));
        }
    }

    private void setRefreshInterval(POBBid pOBBid) {
        setRefreshInterval(pOBBid != null ? pOBBid.getRefreshInterval() : this.f640a);
    }

    public void setState(EnumC1928b enumC1928b) {
        this.f648i = enumC1928b;
    }

    private void setWrapperEvent(POBBannerEvent pOBBannerEvent) {
        if (pOBBannerEvent != null) {
            this.f644e = pOBBannerEvent;
            pOBBannerEvent.setEventListener(this.f650k);
        }
    }

    public void destroy() {
        PMLog.debug("POBBannerView", "destroy invoked.", new Object[0]);
        setState(EnumC1928b.DEFAULT);
        POBLooper pOBLooper = this.f649j;
        if (pOBLooper != null) {
            pOBLooper.destroy();
            this.f649j = null;
        }
        POBBidding<POBBid> pOBBidding = this.f642c;
        if (pOBBidding != null) {
            pOBBidding.destroy();
            this.f642c = null;
        }
        POBBannerRendering pOBBannerRendering = this.f653n;
        if (pOBBannerRendering != null) {
            pOBBannerRendering.destroy();
            this.f653n = null;
        }
        POBBannerRendering pOBBannerRendering2 = this.f655p;
        if (pOBBannerRendering2 != null) {
            pOBBannerRendering2.destroy();
            this.f655p = null;
        }
        POBBannerEvent pOBBannerEvent = this.f644e;
        if (pOBBannerEvent != null) {
            pOBBannerEvent.destroy();
        }
        Map<String, POBPartnerInfo> map = this.f656q;
        if (map != null) {
            map.clear();
            this.f656q = null;
        }
        Map<String, POBBidderResult<POBBid>> map2 = this.f659t;
        if (map2 != null) {
            map2.clear();
            this.f659t = null;
        }
        this.f645f = null;
    }

    public POBRequest getAdRequest() {
        POBRequest pOBRequest = this.f643d;
        if (pOBRequest != null) {
            return pOBRequest;
        }
        PMLog.warn("POBBannerView", "Please call POBBannerView.init() before calling getAdRequest()", new Object[0]);
        return null;
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBidEvent
    public POBBid getBid() {
        return POBBiddingManager.getWinningBid(this.f658s);
    }

    public POBAdSize getCreativeSize() {
        if (this.f647h) {
            POBBid winningBid = POBBiddingManager.getWinningBid(this.f658s);
            if (winningBid != null) {
                return (winningBid.isVideo() && winningBid.getWidth() == 0 && winningBid.getHeight() == 0) ? f638v : new POBAdSize(winningBid.getWidth(), winningBid.getHeight());
            }
            PMLog.warn("POBBannerView", "getCreativeSize() called for null bid", new Object[0]);
            return null;
        }
        return this.f644e.getAdSize();
    }

    public POBImpression getImpression() {
        POBImpression[] impressions;
        POBRequest adRequest = getAdRequest();
        if (adRequest == null || (impressions = adRequest.getImpressions()) == null || impressions.length == 0) {
            return null;
        }
        return impressions[0];
    }

    public void init(String str, int i, String str2, POBBannerEvent pOBBannerEvent) {
        POBAdSize[] requestedAdSizes = pOBBannerEvent.requestedAdSizes();
        POBError m932a = m932a(str, str2, pOBBannerEvent, requestedAdSizes);
        if (m932a != null) {
            PMLog.error("POBBannerView", m932a.toString(), new Object[0]);
            return;
        }
        destroy();
        this.f656q = Collections.synchronizedMap(new HashMap());
        this.f650k = new C1931d(this, null);
        this.f651l = new C1933f(this, null);
        this.f652m = new C1929c(this, null);
        setWrapperEvent(pOBBannerEvent);
        POBImpression pOBImpression = new POBImpression(getImpressionId(), str2);
        pOBImpression.setBanner(new POBBanner(requestedAdSizes));
        if (m931a(requestedAdSizes)) {
            pOBImpression.setVideo(new POBVideo(POBVideo.Placement.IN_BANNER, POBVideo.Linearity.LINEAR, f638v));
        }
        POBRequest createInstance = POBRequest.createInstance(str, i, pOBImpression);
        this.f643d = createInstance;
        if (createInstance == null) {
            return;
        }
        setRefreshInterval(30);
    }

    public void init(String str, int i, String str2, POBAdSize... pOBAdSizeArr) {
        init(str, i, str2, new POBDefaultBannerEventHandler(pOBAdSizeArr));
    }

    public void loadAd() {
        if (this.f643d == null) {
            PMLog.error("POBBannerView", "Unable to process loadAd() please ensure banner is initialized with valid ad tag details", new Object[0]);
            return;
        }
        EnumC1928b enumC1928b = this.f648i;
        if (enumC1928b != EnumC1928b.DEFAULT) {
            PMLog.error("POBBannerView", "Skipping loadAd() as ad is already in %s state", enumC1928b.name());
            return;
        }
        this.f648i = EnumC1928b.LOADING;
        if (POBInstanceProvider.getPartnerServices() != null) {
            m922c(this.f643d);
        } else {
            m915g();
        }
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBidEvent
    public void proceedOnError(POBBidEvent.BidEventError bidEventError) {
        if (this.f657r == null) {
            PMLog.warn("POBBannerView", POBLogConstants.WARN_MSG_BID_EVENT_NOT_IMPLEMENTED, new Object[0]);
        } else if (this.f648i != EnumC1928b.WAITING) {
            PMLog.warn("POBBannerView", POBLogConstants.WARN_MSG_BID_EVENT_INVALID_STATE, new Object[0]);
        } else {
            PMLog.info("POBBannerView", POBLogConstants.INFO_MSG_BID_EVENT_PROCEED_ON_ERROR, new Object[0]);
            POBBid winningBid = POBBiddingManager.getWinningBid(this.f658s);
            if (winningBid != null) {
                m934a(winningBid, POBBidEventHelper.convertToPOBError(bidEventError));
            }
            if (!(this.f644e instanceof POBDefaultBannerEventHandler)) {
                m917f();
                return;
            }
            PMLog.info("POBBannerView", "Notified with error " + bidEventError.toString(), new Object[0]);
            m903m();
            setRefreshInterval(winningBid);
            m952a(this.f640a);
        }
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBidEvent
    public boolean proceedToLoadAd() {
        if (this.f657r == null) {
            PMLog.warn("POBBannerView", POBLogConstants.WARN_MSG_BID_EVENT_NOT_IMPLEMENTED, new Object[0]);
            return false;
        } else if (this.f648i != EnumC1928b.WAITING) {
            PMLog.warn("POBBannerView", POBLogConstants.WARN_MSG_BID_EVENT_INVALID_STATE, new Object[0]);
            return false;
        } else {
            PMLog.info("POBBannerView", POBLogConstants.INFO_MSG_BID_EVENT_PROCEED_TO_LOAD, new Object[0]);
            PMLog.debug("POBBannerView", POBLogConstants.MSG_PROCEEDING_WITH_BID, new Object[0]);
            POBBid winningBid = POBBiddingManager.getWinningBid(this.f658s);
            if (winningBid == null || !winningBid.isExpired()) {
                PMLog.debug("POBBannerView", POBLogConstants.MSG_PROCEEDING_WITH_BID, new Object[0]);
                setState(EnumC1928b.LOADING);
                m935a(winningBid);
                return true;
            }
            POBError convertToPOBError = POBBidEventHelper.convertToPOBError(POBBidEvent.BidEventError.BID_EXPIRED);
            m934a(winningBid, convertToPOBError);
            if (this.f644e instanceof POBDefaultBannerEventHandler) {
                m950a(convertToPOBError);
                return false;
            }
            PMLog.warn("POBBannerView", POBLogConstants.MSG_AD_EXPIRED_PROCEEDING_IGNORING_OPENWRAP_BID, new Object[0]);
            m917f();
            return true;
        }
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBidEvent
    public void setBidEventListener(POBBidEventListener pOBBidEventListener) {
        this.f657r = pOBBidEventListener;
    }

    public void setListener(POBBannerViewListener pOBBannerViewListener) {
        this.f645f = pOBBannerViewListener;
    }
}
