package com.iab.omid.library.pubnativenet.f;

import android.webkit.WebView;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/f/b.class */
public final class b extends a {
    public b(WebView webView) {
        if (webView != null && !webView.getSettings().getJavaScriptEnabled()) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
        a(webView);
    }
}
