package com.verizon.ads.webview;

import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.verizon.ads.Logger;
/* loaded from: classes5-dex2jar.jar:com/verizon/ads/webview/VASAdsWebChromeClient.class */
class VASAdsWebChromeClient extends WebChromeClient {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35892a = Logger.getInstance(VASAdsWebChromeClient.class);

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        if (Logger.isLogLevelEnabled(2)) {
            f35892a.v(String.format("Received JS Alert: %s:", str2));
        }
        jsResult.cancel();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        if (Logger.isLogLevelEnabled(2)) {
            f35892a.v(String.format("Received JS BeforeUnload: %s:", str2));
        }
        jsResult.cancel();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        if (Logger.isLogLevelEnabled(2)) {
            f35892a.v(String.format("Received JS Confirm: %s:", str2));
        }
        jsResult.cancel();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        if (Logger.isLogLevelEnabled(2)) {
            f35892a.v(String.format("Received JS Prompt: %s:", str2));
        }
        jsPromptResult.cancel();
        return true;
    }
}
