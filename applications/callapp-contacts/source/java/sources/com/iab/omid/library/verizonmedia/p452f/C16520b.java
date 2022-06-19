package com.iab.omid.library.verizonmedia.p452f;

import android.webkit.WebView;
/* renamed from: com.iab.omid.library.verizonmedia.f.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/f/b.class */
public final class C16520b extends AbstractC16518a {
    public C16520b(WebView webView) {
        if (webView != null && !webView.getSettings().getJavaScriptEnabled()) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
        m7093a(webView);
    }
}
