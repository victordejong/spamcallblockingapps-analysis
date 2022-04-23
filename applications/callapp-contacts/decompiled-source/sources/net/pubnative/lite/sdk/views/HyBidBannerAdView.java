package net.pubnative.lite.sdk.views;

import android.content.Context;
import android.util.AttributeSet;
import net.pubnative.lite.sdk.api.BannerRequestManager;
import net.pubnative.lite.sdk.api.RequestManager;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/views/HyBidBannerAdView.class */
public class HyBidBannerAdView extends HyBidAdView {
    public HyBidBannerAdView(Context context) {
        super(context);
    }

    public HyBidBannerAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HyBidBannerAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public HyBidBannerAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // net.pubnative.lite.sdk.views.HyBidAdView
    protected String getLogTag() {
        return HyBidBannerAdView.class.getSimpleName();
    }

    @Override // net.pubnative.lite.sdk.views.HyBidAdView
    RequestManager getRequestManager() {
        return new BannerRequestManager();
    }
}
