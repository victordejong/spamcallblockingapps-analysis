package com.pubmatic.sdk.openwrap.banner;

import com.pubmatic.sdk.common.POBAdSize;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.p019ui.POBBannerRendering;
import com.pubmatic.sdk.openwrap.core.POBBid;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/banner/POBDefaultBannerEventHandler.class */
public class POBDefaultBannerEventHandler implements POBBannerEvent {

    /* renamed from: a */
    private POBAdSize[] f672a;

    /* renamed from: b */
    private POBBannerEventListener f673b;

    public POBDefaultBannerEventHandler(POBAdSize... pOBAdSizeArr) {
        this.f672a = pOBAdSizeArr;
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void destroy() {
        this.f673b = null;
    }

    @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEvent
    public POBAdSize getAdSize() {
        return null;
    }

    @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEvent
    public POBBannerRendering getRenderer(String str) {
        return null;
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void requestAd(POBBid pOBBid) {
        POBBid.POBSummary pOBSummary;
        if (this.f673b != null) {
            if (pOBBid != null && pOBBid.getStatus() == 1) {
                this.f673b.onOpenWrapPartnerWin(pOBBid.getId());
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
            this.f673b.onFailed(new POBError(1002, str2));
        }
    }

    @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEvent
    public POBAdSize[] requestedAdSizes() {
        POBAdSize[] pOBAdSizeArr = this.f672a;
        if (pOBAdSizeArr != null) {
            return (POBAdSize[]) Arrays.copyOf(pOBAdSizeArr, pOBAdSizeArr.length);
        }
        return null;
    }

    @Override // com.pubmatic.sdk.openwrap.banner.POBBannerEvent
    public void setEventListener(POBBannerEventListener pOBBannerEventListener) {
        this.f673b = pOBBannerEventListener;
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void trackClick() {
    }

    @Override // com.pubmatic.sdk.openwrap.core.POBBaseEvent
    public void trackImpression() {
    }
}
