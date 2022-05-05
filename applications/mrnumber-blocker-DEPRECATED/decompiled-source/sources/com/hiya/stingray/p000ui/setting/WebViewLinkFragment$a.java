package com.hiya.stingray.p000ui.setting;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.URLUtil;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
/* renamed from: com.hiya.stingray.ui.setting.WebViewLinkFragment$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/setting/WebViewLinkFragment$a.class */
class WebViewLinkFragment$a extends WebViewClient {
    WebViewLinkFragment$a(WebViewLinkFragment webViewLinkFragment) {
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        if (URLUtil.isNetworkUrl(webResourceRequest.getUrl().toString())) {
            return false;
        }
        webView.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(webResourceRequest.getUrl().toString())));
        return true;
    }
}
