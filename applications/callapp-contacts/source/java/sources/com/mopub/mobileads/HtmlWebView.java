package com.mopub.mobileads;

import android.content.Context;
import com.mopub.mobileads.BaseHtmlWebView;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/HtmlWebView.class */
public class HtmlWebView extends BaseHtmlWebView {
    public HtmlWebView(Context context) {
        super(context);
    }

    public void init(BaseHtmlWebView.BaseWebViewListener baseWebViewListener, String str) {
        super.init();
        setWebViewClient(new C16859c(this, baseWebViewListener, str));
    }
}
