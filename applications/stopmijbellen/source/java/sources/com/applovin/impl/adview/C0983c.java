package com.applovin.impl.adview;

import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
/* renamed from: com.applovin.impl.adview.c */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/c.class */
class C0983c extends WebChromeClient {

    /* renamed from: a */
    private final C1479t f3618a;

    public C0983c(C1408l c1408l) {
        this.f3618a = c1408l.m5542A();
    }

    @Override // android.webkit.WebChromeClient
    public void onConsoleMessage(String str, int i, String str2) {
        C1479t c1479t = this.f3618a;
        c1479t.m5112d("AdWebView", "console.log[" + i + "] :" + str);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        this.f3618a.m5116b("AdWebView", consoleMessage.sourceId() + ": " + consoleMessage.lineNumber() + ": " + consoleMessage.message());
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        C1479t c1479t = this.f3618a;
        c1479t.m5112d("AdWebView", "Alert attempted: " + str2);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        C1479t c1479t = this.f3618a;
        c1479t.m5112d("AdWebView", "JS onBeforeUnload attempted: " + str2);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        C1479t c1479t = this.f3618a;
        c1479t.m5112d("AdWebView", "JS confirm attempted: " + str2);
        return true;
    }
}
