package io.bidmachine.banner;

import android.content.Context;
import android.util.AttributeSet;
import io.bidmachine.AdView;
import io.bidmachine.ViewAdObject;
import io.bidmachine.unified.UnifiedBannerAd;
import io.bidmachine.unified.UnifiedBannerAdRequestParams;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/banner/BannerView.class */
public class BannerView extends AdView<BannerView, C17823a, BannerRequest, ViewAdObject<BannerRequest, UnifiedBannerAd, UnifiedBannerAdRequestParams>, BannerListener> {
    public BannerView(Context context) {
        super(context);
    }

    public BannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BannerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // io.bidmachine.AdView
    public C17823a createAd(Context context) {
        return new C17823a(context);
    }
}
