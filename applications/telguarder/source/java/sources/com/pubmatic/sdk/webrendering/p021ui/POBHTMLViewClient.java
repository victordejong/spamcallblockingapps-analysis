package com.pubmatic.sdk.webrendering.p021ui;

import android.os.Build;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.log.PMLog;
/* renamed from: com.pubmatic.sdk.webrendering.ui.POBHTMLViewClient */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/ui/POBHTMLViewClient.class */
public class POBHTMLViewClient extends WebViewClient {

    /* renamed from: a */
    private HTMLViewClientListener f1233a;

    /* renamed from: com.pubmatic.sdk.webrendering.ui.POBHTMLViewClient$HTMLViewClientListener */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/ui/POBHTMLViewClient$HTMLViewClientListener.class */
    public interface HTMLViewClientListener {
        void onPageFinished(WebView webView);

        void onReceivedError(POBError pOBError);

        boolean shouldOverrideUrlLoading(String str);
    }

    /* renamed from: a */
    private void m428a(String str) {
        PMLog.error("HTMLViewClient", str, new Object[0]);
        HTMLViewClientListener hTMLViewClientListener = this.f1233a;
        if (hTMLViewClientListener != null) {
            hTMLViewClientListener.onReceivedError(new POBError(1009, str));
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        PMLog.debug("HTMLViewClient", "WebView creative loading finished.", new Object[0]);
        HTMLViewClientListener hTMLViewClientListener = this.f1233a;
        if (hTMLViewClientListener != null) {
            hTMLViewClientListener.onPageFinished(webView);
        }
        webView.setFocusableInTouchMode(true);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        if (Build.VERSION.SDK_INT < 23) {
            m428a("WebView received error while loading creative.");
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (Build.VERSION.SDK_INT < 23 || !webResourceRequest.isForMainFrame()) {
            return;
        }
        m428a(String.format("WebView received error on page loading. Error : %s", webResourceError != null ? webResourceError.toString() : " Not defined"));
    }

    public void setHTMLClientListener(HTMLViewClientListener hTMLViewClientListener) {
        this.f1233a = hTMLViewClientListener;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        boolean shouldOverrideUrlLoading = super.shouldOverrideUrlLoading(webView, webResourceRequest);
        PMLog.debug("HTMLViewClient", "WebView shouldOverrideUrlLoading.. Request redirect = " + webResourceRequest.isRedirect(), new Object[0]);
        boolean z = shouldOverrideUrlLoading;
        if (!webResourceRequest.isRedirect()) {
            z = shouldOverrideUrlLoading;
            if (webResourceRequest.getUrl() != null) {
                z = this.f1233a.shouldOverrideUrlLoading(webResourceRequest.getUrl().toString());
            }
        }
        return z;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        boolean shouldOverrideUrlLoading = super.shouldOverrideUrlLoading(webView, str);
        if (Build.VERSION.SDK_INT < 24) {
            shouldOverrideUrlLoading = this.f1233a.shouldOverrideUrlLoading(str);
            PMLog.debug("HTMLViewClient", "WebView should override url loading : url", new Object[0]);
        }
        return shouldOverrideUrlLoading;
    }
}
