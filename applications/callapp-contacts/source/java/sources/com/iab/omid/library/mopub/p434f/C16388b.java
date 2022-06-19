package com.iab.omid.library.mopub.p434f;

import android.webkit.WebView;
/* renamed from: com.iab.omid.library.mopub.f.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/f/b.class */
public final class C16388b extends AbstractC16386a {
    public C16388b(WebView webView) {
        if (webView != null && !webView.getSettings().getJavaScriptEnabled()) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
        m7315a(webView);
    }
}
