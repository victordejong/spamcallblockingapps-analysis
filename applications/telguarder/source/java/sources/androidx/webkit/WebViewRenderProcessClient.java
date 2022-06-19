package androidx.webkit;

import android.webkit.WebView;
/* loaded from: classes-dex2jar.jar:androidx/webkit/WebViewRenderProcessClient.class */
public abstract class WebViewRenderProcessClient {
    public abstract void onRenderProcessResponsive(WebView webView, WebViewRenderProcess webViewRenderProcess);

    public abstract void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess);
}
