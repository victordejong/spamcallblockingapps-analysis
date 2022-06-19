package com.pubmatic.sdk.rewardedad;

import android.content.Context;
import com.pubmatic.sdk.common.POBAdSize;
import com.pubmatic.sdk.common.POBDataType;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.POBInstanceProvider;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.base.POBBidderListener;
import com.pubmatic.sdk.common.base.POBBidding;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.models.POBAdResponse;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.openwrap.core.POBBid;
import com.pubmatic.sdk.openwrap.core.POBBidEvent;
import com.pubmatic.sdk.openwrap.core.POBBidEventHelper;
import com.pubmatic.sdk.openwrap.core.POBBidEventListener;
import com.pubmatic.sdk.openwrap.core.POBBiddingManager;
import com.pubmatic.sdk.openwrap.core.POBImpression;
import com.pubmatic.sdk.openwrap.core.POBRequest;
import com.pubmatic.sdk.openwrap.core.POBReward;
import com.pubmatic.sdk.openwrap.core.POBVideo;
import com.pubmatic.sdk.rewardedad.renderer.POBRewardedAdRendererListener;
import com.pubmatic.sdk.rewardedad.renderer.POBRewardedAdRendering;
import com.pubmatic.sdk.rewardedad.renderer.POBSkipConfirmationInfo;
import com.pubmatic.sdk.video.POBLogConstants;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/rewardedad/POBRewardedAd.class */
public class POBRewardedAd implements POBBidEvent {

    /* renamed from: a */
    private POBBidding<POBBid> f832a;

    /* renamed from: b */
    private POBRewardedAdEvent f833b;

    /* renamed from: c */
    private POBRewardedAdListener f834c;

    /* renamed from: d */
    private POBRewardedAdRendering f835d;

    /* renamed from: e */
    private POBDataType.POBAdState f836e;

    /* renamed from: f */
    private Context f837f;

    /* renamed from: g */
    private POBRewardedAdEventListener f838g;

    /* renamed from: h */
    private POBBidEventListener f839h;

    /* renamed from: i */
    private POBRequest f840i;

    /* renamed from: j */
    private POBAdResponse<POBBid> f841j;

    /* renamed from: k */
    private POBSkipConfirmationInfo f842k;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/rewardedad/POBRewardedAd$POBRewardedAdListener.class */
    public static class POBRewardedAdListener {
        public void onAdClicked(POBRewardedAd pOBRewardedAd) {
        }

        public void onAdClosed(POBRewardedAd pOBRewardedAd) {
        }

        public void onAdExpired(POBRewardedAd pOBRewardedAd) {
        }

        public void onAdFailed(POBRewardedAd pOBRewardedAd, POBError pOBError) {
        }

        public void onAdOpened(POBRewardedAd pOBRewardedAd) {
        }

        public void onAdReceived(POBRewardedAd pOBRewardedAd) {
        }

        public void onAppLeaving(POBRewardedAd pOBRewardedAd) {
        }

        public void onReceiveReward(POBRewardedAd pOBRewardedAd, POBReward pOBReward) {
        }
    }

    /* renamed from: com.pubmatic.sdk.rewardedad.POBRewardedAd$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/rewardedad/POBRewardedAd$b.class */
    public class C1958b implements POBBidderListener<POBBid> {
        private C1958b() {
            POBRewardedAd.this = r4;
        }

        @Override // com.pubmatic.sdk.common.base.POBBidderListener
        public void onBidsFailed(POBBidding<POBBid> pOBBidding, POBError pOBError) {
            PMLog.debug("POBRewardedAd", POBLogConstants.MSG_DEBUG_BIDS_FAILED, pOBError.toString());
            if (POBRewardedAd.this.f839h != null) {
                PMLog.debug("POBRewardedAd", "Sharing bid through bidEventListener", new Object[0]);
                POBRewardedAd.this.f836e = POBDataType.POBAdState.BID_FAILED;
                POBRewardedAd.this.f839h.onBidFailed(POBRewardedAd.this, pOBError);
            } else if (POBRewardedAd.this.f833b instanceof POBDefaultRewardedAdEventHandler) {
                POBRewardedAd.this.m761a(pOBError);
            } else {
                POBRewardedAd.this.m748b((POBBid) null);
            }
        }

        @Override // com.pubmatic.sdk.common.base.POBBidderListener
        public void onBidsFetched(POBBidding<POBBid> pOBBidding, POBAdResponse<POBBid> pOBAdResponse) {
            POBBid pOBBid;
            if (POBRewardedAd.this.f840i != null) {
                POBBid winningBid = pOBAdResponse.getWinningBid();
                if (winningBid == null || !winningBid.isVideo()) {
                    pOBBid = null;
                } else {
                    POBAdResponse.Builder builder = new POBAdResponse.Builder(pOBAdResponse);
                    builder.updateWithRefreshIntervalAndExpiryTimeout(true);
                    POBRewardedAd.this.f841j = builder.build();
                    pOBBid = (POBBid) POBRewardedAd.this.f841j.getWinningBid();
                }
                if (pOBBid != null) {
                    PMLog.debug("POBRewardedAd", POBLogConstants.MSG_DEBUG_BIDS_FETCHED, pOBBid.getImpressionId(), Double.valueOf(pOBBid.getPrice()));
                }
                if (POBRewardedAd.this.f839h == null) {
                    POBRewardedAd.this.m748b(pOBBid);
                    return;
                }
                PMLog.debug("POBRewardedAd", "Sharing bid through bidEventListener", new Object[0]);
                if (pOBBid == null || pOBBid.getStatus() != 1) {
                    POBRewardedAd.this.f836e = POBDataType.POBAdState.BID_FAILED;
                    POBRewardedAd.this.f839h.onBidFailed(POBRewardedAd.this, new POBError(1002, POBLogConstants.MSG_NO_ADS_AVAILABLE));
                    return;
                }
                POBRewardedAd.this.f836e = POBDataType.POBAdState.BID_RECEIVED;
                POBRewardedAd.this.f839h.onBidReceived(POBRewardedAd.this, pOBBid);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.pubmatic.sdk.rewardedad.POBRewardedAd$c */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/rewardedad/POBRewardedAd$c.class */
    public class C1959c implements POBRewardedAdEventListener {
        private C1959c() {
            POBRewardedAd.this = r4;
        }

        /* renamed from: a */
        private void m727a() {
            PMLog.debug("POBRewardedAd", "PartnerBidWin", new Object[0]);
            POBBid winningBid = POBBiddingManager.getWinningBid(POBRewardedAd.this.f841j);
            if (winningBid == null || POBRewardedAd.this.f833b == null) {
                return;
            }
            winningBid.setHasWon(true);
            POBUtils.logBidWinningStatus(winningBid.hasWon(), winningBid.getPartnerName());
            String partnerName = winningBid.getPartnerName();
            POBRewardedAd pOBRewardedAd = POBRewardedAd.this;
            pOBRewardedAd.f835d = pOBRewardedAd.f833b.getRenderer(partnerName);
            if (POBRewardedAd.this.f835d == null) {
                POBRewardedAd pOBRewardedAd2 = POBRewardedAd.this;
                pOBRewardedAd2.f835d = pOBRewardedAd2.m760a(winningBid);
            }
            POBRewardedAd.this.f835d.setAdRendererListener(new C1960d());
            POBRewardedAd.this.f835d.renderAd(winningBid);
        }

        @Override // com.pubmatic.sdk.rewardedad.POBRewardedAdEventListener
        public void onAdClick() {
            POBRewardedAd.this.m739f();
        }

        @Override // com.pubmatic.sdk.rewardedad.POBRewardedAdEventListener
        public void onAdClosed() {
            POBRewardedAd.this.m737g();
        }

        @Override // com.pubmatic.sdk.rewardedad.POBRewardedAdEventListener
        public void onAdLeftApplication() {
            POBRewardedAd.this.m731j();
        }

        @Override // com.pubmatic.sdk.rewardedad.POBRewardedAdEventListener
        public void onAdOpened() {
            POBRewardedAd.this.m735h();
        }

        @Override // com.pubmatic.sdk.rewardedad.POBRewardedAdEventListener
        public void onAdServerWin() {
            PMLog.debug("POBRewardedAd", "AdServerWin", new Object[0]);
            POBBid winningBid = POBBiddingManager.getWinningBid(POBRewardedAd.this.f841j);
            if (winningBid != null) {
                POBUtils.logBidWinningStatus(winningBid.hasWon(), winningBid.getPartnerName());
            } else {
                PMLog.debug("POBRewardedAd", "AdServerWin", new Object[0]);
            }
            POBRewardedAd.this.f836e = POBDataType.POBAdState.AD_SERVER_READY;
            POBRewardedAd.this.m745c();
        }

        @Override // com.pubmatic.sdk.rewardedad.POBRewardedAdEventListener
        public void onFailed(POBError pOBError) {
            POBRewardedAd.this.m761a(pOBError);
        }

        @Override // com.pubmatic.sdk.rewardedad.POBRewardedAdEventListener
        public void onOpenWrapPartnerWin(String str) {
            if (POBRewardedAd.this.f841j != null) {
                POBBid pOBBid = (POBBid) POBRewardedAd.this.f841j.getBid(str);
                if (pOBBid != null) {
                    POBAdResponse.Builder builder = new POBAdResponse.Builder(POBRewardedAd.this.f841j);
                    builder.updateWinningBid(pOBBid);
                    POBRewardedAd.this.f841j = builder.build();
                } else {
                    PMLog.debug("POBRewardedAd", POBLogConstants.MSG_INVALID_BIDID, new Object[0]);
                }
            }
            m727a();
        }
    }

    /* renamed from: com.pubmatic.sdk.rewardedad.POBRewardedAd$d */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/rewardedad/POBRewardedAd$d.class */
    public class C1960d implements POBRewardedAdRendererListener {
        private C1960d() {
            POBRewardedAd.this = r4;
        }

        @Override // com.pubmatic.sdk.rewardedad.renderer.POBRewardedAdRendererListener
        public void onAdClicked() {
            POBRewardedAd.this.m739f();
            if (POBRewardedAd.this.f833b != null) {
                POBRewardedAd.this.f833b.trackClick();
            }
        }

        @Override // com.pubmatic.sdk.rewardedad.renderer.POBRewardedAdRendererListener
        public void onAdEventOccurred(POBDataType.POBVideoAdEventType pOBVideoAdEventType) {
            if (POBRewardedAd.this.f834c == null) {
                PMLog.debug("POBRewardedAd", POBLogConstants.MSG_REWARDED_LISTENER_MISSING, pOBVideoAdEventType);
            } else if (pOBVideoAdEventType != POBDataType.POBVideoAdEventType.COMPLETE) {
            } else {
                POBReward pOBReward = null;
                POBBid winningBid = POBBiddingManager.getWinningBid(POBRewardedAd.this.f841j);
                if (winningBid != null) {
                    pOBReward = winningBid.getFirstReward();
                }
                POBReward pOBReward2 = pOBReward;
                if (pOBReward == null) {
                    PMLog.warn("POBRewardedAd", POBLogConstants.MSG_SENDING_DEFAULT_REWARD, new Object[0]);
                    pOBReward2 = new POBReward("", 0);
                }
                POBRewardedAd.this.f834c.onReceiveReward(POBRewardedAd.this, pOBReward2);
            }
        }

        @Override // com.pubmatic.sdk.rewardedad.renderer.POBRewardedAdRendererListener
        public void onAdExpired() {
            POBRewardedAd.this.m750b();
        }

        @Override // com.pubmatic.sdk.rewardedad.renderer.POBRewardedAdRendererListener
        public void onAdInteractionStarted() {
            POBRewardedAd.this.m735h();
            POBBid winningBid = POBBiddingManager.getWinningBid(POBRewardedAd.this.f841j);
            if (POBRewardedAd.this.f833b == null || winningBid == null || !winningBid.isVideo()) {
                return;
            }
            POBRewardedAd.this.f833b.trackImpression();
        }

        @Override // com.pubmatic.sdk.rewardedad.renderer.POBRewardedAdRendererListener
        public void onAdInteractionStopped() {
            POBRewardedAd.this.m737g();
        }

        @Override // com.pubmatic.sdk.rewardedad.renderer.POBRewardedAdRendererListener
        public void onAdRender(POBAdDescriptor pOBAdDescriptor) {
            PMLog.info("POBRewardedAd", hashCode() + " : ******** onAdRender() ********", new Object[0]);
            POBRewardedAd.this.m745c();
            POBBid winningBid = POBBiddingManager.getWinningBid(POBRewardedAd.this.f841j);
            if (POBRewardedAd.this.f833b == null || winningBid == null || winningBid.isVideo()) {
                return;
            }
            POBRewardedAd.this.f833b.trackImpression();
        }

        @Override // com.pubmatic.sdk.rewardedad.renderer.POBRewardedAdRendererListener
        public void onAdRenderingFailed(POBError pOBError) {
            POBRewardedAd.this.m761a(pOBError);
        }

        @Override // com.pubmatic.sdk.rewardedad.renderer.POBRewardedAdRendererListener
        public void onLeavingApplication() {
            POBRewardedAd.this.m731j();
            if (POBRewardedAd.this.f833b != null) {
                POBRewardedAd.this.f833b.trackClick();
            }
        }
    }

    public POBRewardedAd(Context context, String str, int i, String str2) {
        this(context, str, i, str2, new POBDefaultRewardedAdEventHandler());
    }

    public POBRewardedAd(Context context, String str, int i, String str2, POBRewardedAdEvent pOBRewardedAdEvent) {
        this.f836e = POBDataType.POBAdState.DEFAULT;
        this.f838g = new C1959c();
        this.f837f = context;
        m763a(context, str, i, str2, pOBRewardedAdEvent);
    }

    /* renamed from: a */
    private POBBidding<POBBid> m759a(POBRequest pOBRequest) {
        if (this.f832a == null) {
            this.f832a = POBBiddingManager.getNewInstance(this.f837f.getApplicationContext(), POBInstanceProvider.getPartnerServices(), pOBRequest, null);
            this.f832a.setBidderListener(new C1958b());
        }
        return this.f832a;
    }

    /* renamed from: a */
    private POBImpression m751a(String str) {
        POBImpression pOBImpression = new POBImpression(m764a(), str, true, true);
        pOBImpression.setAdPosition(POBRequest.AdPosition.FULL_SCREEN);
        pOBImpression.setInterstitial(true);
        return pOBImpression;
    }

    /* renamed from: a */
    public POBRewardedAdRendering m760a(POBBid pOBBid) {
        if (this.f842k == null) {
            PMLog.info("POBRewardedAd", "Invalid value for skip alert. SDK will use default skip alert.", new Object[0]);
            this.f842k = new POBSkipConfirmationInfo(this.f837f.getString(C1961R.string.openwrap_skip_dialog_title), this.f837f.getString(C1961R.string.openwrap_skip_dialog_message), this.f837f.getString(C1961R.string.openwrap_skip_dialog_resume_btn), this.f837f.getString(C1961R.string.openwrap_skip_dialog_close_btn));
        }
        return POBRewardedUtil.getRewardedRenderer(this.f837f, pOBBid.getRemainingExpirationTime(), this.f842k);
    }

    /* renamed from: a */
    private String m764a() {
        return UUID.randomUUID().toString();
    }

    /* renamed from: a */
    private void m763a(Context context, String str, int i, String str2, POBRewardedAdEvent pOBRewardedAdEvent) {
        if (!m762a(context, str, str2, pOBRewardedAdEvent)) {
            PMLog.error("POBRewardedAd", new POBError(1001, POBLogConstants.MSG_MISSING_INPUT_PARAMS).toString(), new Object[0]);
            return;
        }
        context.getApplicationContext();
        m752a(pOBRewardedAdEvent);
        POBBidding<POBBid> pOBBidding = this.f832a;
        if (pOBBidding != null) {
            pOBBidding.destroy();
            this.f832a = null;
        }
        this.f840i = POBRequest.createInstance(str, i, m751a(str2));
        this.f836e = POBDataType.POBAdState.DEFAULT;
    }

    /* renamed from: a */
    public void m761a(POBError pOBError) {
        this.f836e = POBDataType.POBAdState.DEFAULT;
        m749b(pOBError);
    }

    /* renamed from: a */
    private void m752a(POBRewardedAdEvent pOBRewardedAdEvent) {
        this.f833b = pOBRewardedAdEvent;
        pOBRewardedAdEvent.setEventListener(this.f838g);
    }

    /* renamed from: a */
    private boolean m762a(Context context, String str, String str2, POBRewardedAdEvent pOBRewardedAdEvent) {
        return context != null && pOBRewardedAdEvent != null && !POBUtils.isNullOrEmpty(str) && !POBUtils.isNullOrEmpty(str2);
    }

    /* renamed from: b */
    public void m750b() {
        this.f836e = POBDataType.POBAdState.EXPIRED;
        POBRewardedAdRendering pOBRewardedAdRendering = this.f835d;
        if (pOBRewardedAdRendering != null) {
            pOBRewardedAdRendering.destroy();
            this.f835d = null;
        }
        POBRewardedAdListener pOBRewardedAdListener = this.f834c;
        if (pOBRewardedAdListener != null) {
            pOBRewardedAdListener.onAdExpired(this);
        }
    }

    /* renamed from: b */
    private void m749b(POBError pOBError) {
        PMLog.error("POBRewardedAd", pOBError.getErrorMessage(), new Object[0]);
        POBRewardedAdListener pOBRewardedAdListener = this.f834c;
        if (pOBRewardedAdListener != null) {
            pOBRewardedAdListener.onAdFailed(this, pOBError);
        }
    }

    /* renamed from: b */
    public void m748b(POBBid pOBBid) {
        POBRewardedAdEvent pOBRewardedAdEvent = this.f833b;
        if (pOBRewardedAdEvent != null) {
            pOBRewardedAdEvent.requestAd(pOBBid);
        }
    }

    /* renamed from: c */
    public void m745c() {
        if (this.f836e != POBDataType.POBAdState.AD_SERVER_READY) {
            this.f836e = POBDataType.POBAdState.READY;
        }
        m733i();
    }

    /* renamed from: d */
    private void m743d() {
        this.f836e = POBDataType.POBAdState.LOADING;
        POBAdResponse<POBBid> pOBAdResponse = this.f841j;
        if (pOBAdResponse != null) {
            this.f841j = new POBAdResponse.Builder(pOBAdResponse).setWinningBid(null).build();
        }
        POBRewardedAdEvent pOBRewardedAdEvent = this.f833b;
        String simpleName = pOBRewardedAdEvent != null ? pOBRewardedAdEvent.getClass().getSimpleName() : "";
        PMLog.info("POBRewardedAd", "Proceeding with bid. Ad server integration is " + simpleName, new Object[0]);
        m748b((POBBid) null);
    }

    /* renamed from: e */
    private void m741e() {
        this.f841j = null;
        if (this.f840i != null) {
            POBAdSize interstitialAdSize = POBUtils.getInterstitialAdSize(this.f837f);
            POBImpression impression = getImpression();
            if (impression != null) {
                impression.setVideo(new POBVideo(POBVideo.Placement.INTERSTITIAL, POBVideo.Linearity.LINEAR, interstitialAdSize));
                this.f836e = POBDataType.POBAdState.LOADING;
                m759a(this.f840i).requestBid();
                return;
            }
        }
        m761a(new POBError(1001, POBLogConstants.MSG_MISSING_INPUT_PARAMS));
    }

    /* renamed from: f */
    public void m739f() {
        POBRewardedAdListener pOBRewardedAdListener = this.f834c;
        if (pOBRewardedAdListener != null) {
            pOBRewardedAdListener.onAdClicked(this);
        }
    }

    /* renamed from: g */
    public void m737g() {
        POBRewardedAdListener pOBRewardedAdListener = this.f834c;
        if (pOBRewardedAdListener != null) {
            pOBRewardedAdListener.onAdClosed(this);
        }
    }

    /* renamed from: h */
    public void m735h() {
        this.f836e = POBDataType.POBAdState.SHOWN;
        POBRewardedAdListener pOBRewardedAdListener = this.f834c;
        if (pOBRewardedAdListener != null) {
            pOBRewardedAdListener.onAdOpened(this);
        }
    }

    /* renamed from: i */
    private void m733i() {
        POBRewardedAdListener pOBRewardedAdListener = this.f834c;
        if (pOBRewardedAdListener != null) {
            pOBRewardedAdListener.onAdReceived(this);
        }
    }

    /* renamed from: j */
    public void m731j() {
        POBRewardedAdListener pOBRewardedAdListener = this.f834c;
        if (pOBRewardedAdListener != null) {
            pOBRewardedAdListener.onAppLeaving(this);
        }
    }

    public void destroy() {
        POBBidding<POBBid> pOBBidding = this.f832a;
        if (pOBBidding != null) {
            pOBBidding.destroy();
            this.f832a = null;
        }
        this.f836e = POBDataType.POBAdState.DEFAULT;
        this.f834c = null;
        POBRewardedAdEvent pOBRewardedAdEvent = this.f833b;
        if (pOBRewardedAdEvent != null) {
            pOBRewardedAdEvent.destroy();
            this.f833b = null;
        }
        this.f842k = null;
    }

    public POBRequest getAdRequest() {
        if (this.f840i == null) {
            PMLog.warn("POBRewardedAd", POBLogConstants.MSG_AD_OBJECT_INVALID, new Object[0]);
        }
        return this.f840i;
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBidEvent
    public POBBid getBid() {
        return POBBiddingManager.getWinningBid(this.f841j);
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
        return this.f836e.equals(POBDataType.POBAdState.READY) || this.f836e.equals(POBDataType.POBAdState.AD_SERVER_READY);
    }

    public void loadAd() {
        if (this.f840i == null) {
            m749b(new POBError(1001, POBLogConstants.MSG_MISSING_INPUT_PARAMS));
            PMLog.error("POBRewardedAd", POBLogConstants.MSG_MISSING_INPUT_PARAMS, new Object[0]);
        } else if (this.f836e.equals(POBDataType.POBAdState.LOADING)) {
            PMLog.error("POBRewardedAd", POBLogConstants.MSG_AD_LOADING_ERROR, new Object[0]);
        } else if (isReady()) {
            PMLog.error("POBRewardedAd", POBLogConstants.MSG_AD_LOADED_ERROR, new Object[0]);
        } else if (this.f836e.equals(POBDataType.POBAdState.BID_FAILED) || this.f836e.equals(POBDataType.POBAdState.BID_RECEIVED)) {
            PMLog.error("POBRewardedAd", POBLogConstants.MSG_AD_WAITING_ERROR, new Object[0]);
        } else {
            m741e();
        }
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBidEvent
    public void proceedOnError(POBBidEvent.BidEventError bidEventError) {
        if (this.f839h == null) {
            PMLog.warn("POBRewardedAd", POBLogConstants.WARN_MSG_BID_EVENT_NOT_IMPLEMENTED, new Object[0]);
            return;
        }
        POBDataType.POBAdState pOBAdState = this.f836e;
        if (pOBAdState != POBDataType.POBAdState.BID_RECEIVED && pOBAdState != POBDataType.POBAdState.BID_FAILED) {
            PMLog.warn("POBRewardedAd", POBLogConstants.WARN_MSG_BID_EVENT_INVALID_STATE, new Object[0]);
            return;
        }
        PMLog.info("POBRewardedAd", POBLogConstants.INFO_MSG_BID_EVENT_PROCEED_ON_ERROR, new Object[0]);
        if (this.f833b instanceof POBDefaultRewardedAdEventHandler) {
            this.f836e = POBDataType.POBAdState.DEFAULT;
        } else {
            m743d();
        }
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBidEvent
    public boolean proceedToLoadAd() {
        if (this.f839h == null) {
            PMLog.warn("POBRewardedAd", POBLogConstants.WARN_MSG_BID_EVENT_NOT_IMPLEMENTED, new Object[0]);
            return false;
        }
        POBDataType.POBAdState pOBAdState = this.f836e;
        if (pOBAdState != POBDataType.POBAdState.BID_RECEIVED && pOBAdState != POBDataType.POBAdState.BID_FAILED) {
            PMLog.warn("POBRewardedAd", POBLogConstants.WARN_MSG_BID_EVENT_INVALID_STATE, new Object[0]);
            return false;
        }
        PMLog.info("POBRewardedAd", POBLogConstants.INFO_MSG_BID_EVENT_PROCEED_TO_LOAD, new Object[0]);
        POBBid winningBid = POBBiddingManager.getWinningBid(this.f841j);
        if (winningBid == null || !winningBid.isExpired()) {
            PMLog.debug("POBRewardedAd", POBLogConstants.MSG_PROCEEDING_WITH_BID, new Object[0]);
            this.f836e = POBDataType.POBAdState.LOADING;
            m748b(winningBid);
            return true;
        } else if (this.f833b instanceof POBDefaultRewardedAdEventHandler) {
            m761a(POBBidEventHelper.convertToPOBError(POBBidEvent.BidEventError.BID_EXPIRED));
            return false;
        } else {
            PMLog.warn("POBRewardedAd", POBLogConstants.MSG_AD_EXPIRED_PROCEEDING_IGNORING_OPENWRAP_BID, new Object[0]);
            m743d();
            return true;
        }
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBidEvent
    public void setBidEventListener(POBBidEventListener pOBBidEventListener) {
        this.f839h = pOBBidEventListener;
    }

    public void setListener(POBRewardedAdListener pOBRewardedAdListener) {
        this.f834c = pOBRewardedAdListener;
    }

    public void setSkipAlertDialogInfo(String str, String str2, String str3, String str4) {
        if (POBUtils.isNullOrEmpty(str) || POBUtils.isNullOrEmpty(str2) || POBUtils.isNullOrEmpty(str3) || POBUtils.isNullOrEmpty(str4)) {
            return;
        }
        this.f842k = new POBSkipConfirmationInfo(str, str2, str3, str4);
    }

    public void show() {
        POBRewardedAdRendering pOBRewardedAdRendering;
        POBRewardedAdEvent pOBRewardedAdEvent;
        if (this.f836e.equals(POBDataType.POBAdState.AD_SERVER_READY) && (pOBRewardedAdEvent = this.f833b) != null) {
            pOBRewardedAdEvent.show();
        } else if (!isReady() || (pOBRewardedAdRendering = this.f835d) == null) {
            m749b(this.f836e.equals(POBDataType.POBAdState.EXPIRED) ? new POBError(1011, POBLogConstants.MSG_AD_EXPIRED_ERROR) : this.f836e.equals(POBDataType.POBAdState.SHOWN) ? new POBError(2001, POBLogConstants.MSG_AD_ALREADY_SHOWN_ERROR) : new POBError(2002, POBLogConstants.MSG_AD_NOT_READY_ERROR));
        } else {
            pOBRewardedAdRendering.show();
        }
    }
}
