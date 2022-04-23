package net.pubnative.lite.sdk.mraid;

import android.content.Context;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/mraid/MRAIDBanner.class */
public class MRAIDBanner extends MRAIDView {
    public MRAIDBanner(Context context, String str, String str2, String[] strArr, MRAIDViewListener mRAIDViewListener, MRAIDNativeFeatureListener mRAIDNativeFeatureListener, ViewGroup viewGroup) {
        super(context, str, str2, strArr, mRAIDViewListener, mRAIDNativeFeatureListener, viewGroup, false);
        this.webView.setBackgroundColor(0);
        addView(this.webView, new RelativeLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.pubnative.lite.sdk.mraid.MRAIDView
    public void close() {
        if (this.state != 0 && this.state != 1 && this.state != 4) {
            super.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.pubnative.lite.sdk.mraid.MRAIDView
    public void expand(String str) {
        if (this.state == 1 || this.state == 3) {
            super.expand(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // net.pubnative.lite.sdk.mraid.MRAIDView
    public void expandHelper(WebView webView) {
        this.state = 2;
        super.expandHelper(webView);
        fireStateChangeEvent();
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDView
    public boolean onBackPressed() {
        return this.state != 1 && super.onBackPressed();
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDView
    protected void onLayoutCompleted() {
        if (this.state == 0 && this.isPageFinished) {
            this.state = 1;
            fireStateChangeEvent();
            fireReadyEvent();
            if (this.isViewable) {
                fireViewableChangeEvent();
            }
        }
    }
}
