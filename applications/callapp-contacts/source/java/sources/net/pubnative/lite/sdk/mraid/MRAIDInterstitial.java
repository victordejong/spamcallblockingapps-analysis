package net.pubnative.lite.sdk.mraid;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import android.webkit.WebView;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/mraid/MRAIDInterstitial.class */
public class MRAIDInterstitial extends MRAIDView {
    public MRAIDInterstitial(Context context, String str, String str2, String[] strArr, MRAIDViewListener mRAIDViewListener, MRAIDNativeFeatureListener mRAIDNativeFeatureListener, ViewGroup viewGroup) {
        super(context, str, str2, strArr, mRAIDViewListener, mRAIDNativeFeatureListener, viewGroup, true);
        this.webView.setBackgroundColor(-16777216);
        addView(this.webView);
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDView
    public void close() {
        super.close();
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDView
    public void closeFromExpanded() {
        if (this.state == 1) {
            this.state = 4;
            clearView();
            this.handler.post(new Runnable() { // from class: net.pubnative.lite.sdk.mraid.MRAIDInterstitial.1
                @Override // java.lang.Runnable
                public void run() {
                    MRAIDInterstitial.this.fireStateChangeEvent();
                    if (MRAIDInterstitial.this.listener != null) {
                        MRAIDInterstitial.this.listener.mraidViewClose(MRAIDInterstitial.this);
                    }
                }
            });
        }
        super.closeFromExpanded();
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDView
    public void expand(String str) {
        if (this.state != 0) {
            return;
        }
        super.expand(str);
    }

    @Override // net.pubnative.lite.sdk.mraid.MRAIDView
    public void expandHelper(WebView webView) {
        super.expandHelper(webView);
        this.isLaidOut = true;
        this.state = 1;
        fireStateChangeEvent();
    }

    public void hide() {
        close();
    }

    public void show(Activity activity) {
        showAsInterstitial(activity);
    }
}
