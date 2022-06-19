package com.pubmatic.sdk.openwrap.interstitial;

import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.p019ui.POBInterstitialRendering;
import com.pubmatic.sdk.openwrap.core.POBBid;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/interstitial/POBDefaultInterstitialEventHandler.class */
public class POBDefaultInterstitialEventHandler implements POBInterstitialEvent {

    /* renamed from: a */
    private POBInterstitialEventListener f807a;

    @Override // com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void destroy() {
        this.f807a = null;
    }

    @Override // com.pubmatic.sdk.openwrap.interstitial.POBInterstitialEvent
    public POBInterstitialRendering getRenderer(String str) {
        return null;
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void requestAd(POBBid pOBBid) {
        POBBid.POBSummary pOBSummary;
        if (this.f807a != null) {
            if (pOBBid != null && pOBBid.getStatus() == 1) {
                this.f807a.onOpenWrapPartnerWin(pOBBid.getId());
                return;
            }
            String str = null;
            if (pOBBid != null) {
                List<POBBid.POBSummary> summary = pOBBid.getSummary();
                str = null;
                if (summary != null) {
                    str = null;
                    if (summary.size() > 0) {
                        str = null;
                        if (summary.get(0) != null) {
                            str = "OpenWrap error code " + pOBSummary.getErrorCode() + " - " + pOBSummary.getErrorMessage();
                        }
                    }
                }
            }
            String str2 = str;
            if (str == null) {
                str2 = "No Ads available for this request";
            }
            this.f807a.onFailed(new POBError(1002, str2));
        }
    }

    @Override // com.pubmatic.sdk.openwrap.interstitial.POBInterstitialEvent
    public void setEventListener(POBInterstitialEventListener pOBInterstitialEventListener) {
        this.f807a = pOBInterstitialEventListener;
    }

    @Override // com.pubmatic.sdk.openwrap.interstitial.POBInterstitialEvent
    public void show() {
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void trackClick() {
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void trackImpression() {
    }
}
