package com.iab.omid.library.applovin.publisher;

import android.annotation.SuppressLint;
import android.webkit.WebView;
/* renamed from: com.iab.omid.library.applovin.publisher.a */
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/publisher/a.class */
public class C1955a extends AdSessionStatePublisher {
    @SuppressLint({"SetJavaScriptEnabled"})
    public C1955a(WebView webView) {
        if (webView != null && !webView.getSettings().getJavaScriptEnabled()) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
        m4067a(webView);
    }
}
