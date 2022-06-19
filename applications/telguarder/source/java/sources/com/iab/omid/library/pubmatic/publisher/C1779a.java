package com.iab.omid.library.pubmatic.publisher;

import android.webkit.WebView;
/* renamed from: com.iab.omid.library.pubmatic.publisher.a */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/publisher/a.class */
public class C1779a extends AdSessionStatePublisher {
    public C1779a(WebView webView) {
        if (webView != null && !webView.getSettings().getJavaScriptEnabled()) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
        m1206a(webView);
    }
}
