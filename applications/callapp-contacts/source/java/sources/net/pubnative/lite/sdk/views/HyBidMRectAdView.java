package net.pubnative.lite.sdk.views;

import android.content.Context;
import android.util.AttributeSet;
import net.pubnative.lite.sdk.api.MRectRequestManager;
import net.pubnative.lite.sdk.api.RequestManager;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/views/HyBidMRectAdView.class */
public class HyBidMRectAdView extends HyBidAdView {
    public HyBidMRectAdView(Context context) {
        super(context);
    }

    public HyBidMRectAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public HyBidMRectAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public HyBidMRectAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // net.pubnative.lite.sdk.views.HyBidAdView
    protected String getLogTag() {
        return HyBidMRectAdView.class.getSimpleName();
    }

    @Override // net.pubnative.lite.sdk.views.HyBidAdView
    RequestManager getRequestManager() {
        return new MRectRequestManager();
    }
}
