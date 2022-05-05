package com.hiya.stingray.p000ui.setting;

import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebView;
/* renamed from: com.hiya.stingray.ui.setting.WebViewLinkFragment$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/WebViewLinkFragment$b.class */
class WebViewLinkFragment$b implements View.OnKeyListener {
    WebViewLinkFragment$b(WebViewLinkFragment webViewLinkFragment) {
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        WebView webView = (WebView) view;
        if (i != 4 || !webView.canGoBack()) {
            return false;
        }
        webView.goBack();
        return true;
    }
}
