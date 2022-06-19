package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdMRAIDBannerController$ExpandedBannerListener.class */
public class DTBAdMRAIDBannerController$ExpandedBannerListener implements DTBAdExpandedListener {
    public final /* synthetic */ DTBAdMRAIDBannerController this$0;

    public DTBAdMRAIDBannerController$ExpandedBannerListener(DTBAdMRAIDBannerController dTBAdMRAIDBannerController) {
        this.this$0 = dTBAdMRAIDBannerController;
    }

    @Override // com.amazon.device.ads.DTBAdExpandedListener
    public void onAdLoaded(DTBAdView dTBAdView) {
    }

    @Override // com.amazon.device.ads.DTBAdExpandedListener
    public void onCreateExpandedController(DTBAdMRAIDExpandedController dTBAdMRAIDExpandedController) {
        dTBAdMRAIDExpandedController.setMasterController(this.this$0);
    }
}
