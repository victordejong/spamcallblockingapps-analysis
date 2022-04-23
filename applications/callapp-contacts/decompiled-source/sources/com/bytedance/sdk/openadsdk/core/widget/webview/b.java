package com.bytedance.sdk.openadsdk.core.widget.webview;

import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.core.w;
import com.bytedance.sdk.openadsdk.d.k;
import com.bytedance.sdk.openadsdk.utils.n;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/b.class */
public class b extends WebChromeClient {

    /* renamed from: a  reason: collision with root package name */
    private static final String f9374a = WebChromeClient.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private final w f9375b;

    /* renamed from: c  reason: collision with root package name */
    private k f9376c;

    public b(w wVar, k kVar) {
        this.f9375b = wVar;
        this.f9376c = kVar;
    }

    private boolean a(String str) {
        try {
            Uri parse = Uri.parse(str);
            if (!"bytedance".equals(parse.getScheme().toLowerCase())) {
                return false;
            }
            n.a(parse, this.f9375b);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onConsoleMessage(String str, int i, String str2) {
        if (!TextUtils.isEmpty(str)) {
            a(str);
        }
        super.onConsoleMessage(str, i, str2);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        if (consoleMessage == null || TextUtils.isEmpty(consoleMessage.message()) || !a(consoleMessage.message())) {
            return super.onConsoleMessage(consoleMessage);
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        super.onProgressChanged(webView, i);
        k kVar = this.f9376c;
        if (kVar != null) {
            kVar.a(webView, i);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        super.onShowCustomView(view, customViewCallback);
    }
}
