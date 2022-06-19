package com.pubmatic.sdk.openwrap.core;

import android.content.Context;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.POBInstanceProvider;
import com.pubmatic.sdk.common.base.POBAdBuilding;
import com.pubmatic.sdk.common.base.POBBaseBidder;
import com.pubmatic.sdk.common.base.POBBidderResult;
import com.pubmatic.sdk.common.base.POBCommunicator;
import com.pubmatic.sdk.common.base.POBRequestBuilding;
import com.pubmatic.sdk.common.base.POBResponseParsing;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.models.POBAdResponse;
import com.pubmatic.sdk.common.network.POBNetworkHandler;
import com.pubmatic.sdk.openwrap.core.internal.POBBidsBuilder;
import com.pubmatic.sdk.openwrap.core.internal.POBResponseParser;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBManager.class */
public class POBManager extends POBBaseBidder<POBBid> {

    /* renamed from: a */
    private final POBCommunicator<POBBid> f732a;

    /* renamed from: b */
    private POBBidderResult<POBBid> f733b;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.pubmatic.sdk.openwrap.core.POBManager$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBManager$b.class */
    public class C1936b implements POBCommunicator.PMCommunicatorListener<POBBid> {
        private C1936b() {
            POBManager.this = r4;
        }

        @Override // com.pubmatic.sdk.common.base.POBCommunicator.PMCommunicatorListener
        public void onError(POBError pOBError) {
            if (POBManager.this.f733b != null) {
                POBManager.this.f733b.setError(pOBError);
            }
            if (((POBBaseBidder) POBManager.this).bidderListener != null) {
                ((POBBaseBidder) POBManager.this).bidderListener.onBidsFailed(POBManager.this, pOBError);
            }
        }

        @Override // com.pubmatic.sdk.common.base.POBCommunicator.PMCommunicatorListener
        public void onSuccess(POBAdResponse<POBBid> pOBAdResponse) {
            PMLog.debug("POBManager", "Ready to share Wrapper bid", new Object[0]);
            if (POBManager.this.f733b != null) {
                POBManager.this.f733b.setAdResponse(pOBAdResponse);
            }
            if (((POBBaseBidder) POBManager.this).bidderListener != null) {
                ((POBBaseBidder) POBManager.this).bidderListener.onBidsFetched(POBManager.this, pOBAdResponse);
            }
        }
    }

    public POBManager(POBCommunicator<POBBid> pOBCommunicator) {
        this.f732a = pOBCommunicator;
        pOBCommunicator.setListener(new C1936b());
    }

    public POBManager(POBRequest pOBRequest, Context context) {
        POBCommunicator<POBBid> m860a = m860a(context, pOBRequest);
        this.f732a = m860a;
        m860a.setListener(new C1936b());
    }

    /* renamed from: a */
    private POBAdBuilding<POBBid> m862a() {
        return new POBBidsBuilder();
    }

    /* renamed from: a */
    private POBCommunicator<POBBid> m860a(Context context, POBRequest pOBRequest) {
        return new POBCommunicator<>(m857b(context, pOBRequest), m858b(), m862a(), m861a(context));
    }

    /* renamed from: a */
    private POBNetworkHandler m861a(Context context) {
        return POBInstanceProvider.getNetworkHandler(context.getApplicationContext());
    }

    /* renamed from: b */
    private POBRequestBuilding m857b(Context context, POBRequest pOBRequest) {
        POBRequestBuilder pOBRequestBuilder = new POBRequestBuilder(pOBRequest, POBInstanceProvider.getSdkConfig().isRequestSecureCreative() ? POBConstants.PUBMATIC_DM_SERVER_SECURE_URL : POBConstants.PUBMATIC_DM_SERVER_URL, context);
        pOBRequestBuilder.setAppInfo(POBInstanceProvider.getAppInfo(context.getApplicationContext()));
        pOBRequestBuilder.setDeviceInfo(POBInstanceProvider.getDeviceInfo(context.getApplicationContext()));
        pOBRequestBuilder.setLocationDetector(POBInstanceProvider.getLocationDetector(context.getApplicationContext()));
        return pOBRequestBuilder;
    }

    /* renamed from: b */
    private POBResponseParsing<POBBid> m858b() {
        return new POBResponseParser();
    }

    @Override // com.pubmatic.sdk.common.base.POBBidding
    public void destroy() {
        this.bidderListener = null;
        this.f732a.cancel();
    }

    @Override // com.pubmatic.sdk.common.base.POBBidding
    public POBAdResponse<POBBid> getAdResponse() {
        POBBidderResult<POBBid> pOBBidderResult = this.f733b;
        return pOBBidderResult != null ? pOBBidderResult.getAdResponse() : null;
    }

    @Override // com.pubmatic.sdk.common.base.POBBidding
    public Map<String, POBBidderResult<POBBid>> getBidderResults() {
        HashMap hashMap = new HashMap();
        POBBidderResult<POBBid> pOBBidderResult = this.f733b;
        if (pOBBidderResult != null) {
            pOBBidderResult.setNetworkResult(this.f732a.getNetworkResult());
            hashMap.put(getIdentifier(), this.f733b);
        }
        PMLog.info("POBManager", "Network result for bidder %s is : %s", getIdentifier(), String.valueOf(this.f732a.getNetworkResult()));
        return hashMap;
    }

    @Override // com.pubmatic.sdk.common.base.POBBidding
    public void requestBid() {
        this.f733b = new POBBidderResult<>();
        this.f732a.requestAd();
    }
}
