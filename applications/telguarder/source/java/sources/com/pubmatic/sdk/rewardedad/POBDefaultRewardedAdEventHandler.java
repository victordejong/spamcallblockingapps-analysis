package com.pubmatic.sdk.rewardedad;

import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.openwrap.core.POBBid;
import com.pubmatic.sdk.rewardedad.renderer.POBRewardedAdRendering;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/rewardedad/POBDefaultRewardedAdEventHandler.class */
public class POBDefaultRewardedAdEventHandler implements POBRewardedAdEvent {

    /* renamed from: a */
    private POBRewardedAdEventListener f831a;

    @Override // com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void destroy() {
        this.f831a = null;
    }

    @Override // com.pubmatic.sdk.rewardedad.POBRewardedAdEvent
    public POBRewardedAdRendering getRenderer(String str) {
        return null;
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void requestAd(POBBid pOBBid) {
        POBBid.POBSummary pOBSummary;
        if (this.f831a != null) {
            if (pOBBid != null && pOBBid.getStatus() == 1) {
                this.f831a.onOpenWrapPartnerWin(pOBBid.getId());
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
            this.f831a.onFailed(new POBError(1002, str2));
        }
    }

    @Override // com.pubmatic.sdk.rewardedad.POBRewardedAdEvent
    public void setEventListener(POBRewardedAdEventListener pOBRewardedAdEventListener) {
        this.f831a = pOBRewardedAdEventListener;
    }

    @Override // com.pubmatic.sdk.rewardedad.POBRewardedAdEvent
    public void show() {
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void trackClick() {
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void trackImpression() {
    }
}
