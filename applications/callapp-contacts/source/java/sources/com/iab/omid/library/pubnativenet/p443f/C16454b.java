package com.iab.omid.library.pubnativenet.p443f;

import android.webkit.WebView;
/* renamed from: com.iab.omid.library.pubnativenet.f.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/f/b.class */
public final class C16454b extends AbstractC16452a {
    public C16454b(WebView webView) {
        if (webView != null && !webView.getSettings().getJavaScriptEnabled()) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
        m7213a(webView);
    }
}
