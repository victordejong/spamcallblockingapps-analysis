package com.bytedance.sdk.openadsdk.core.widget.webview;

import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.core.C4754w;
import com.bytedance.sdk.openadsdk.p164d.C4822k;
import com.bytedance.sdk.openadsdk.utils.C5472n;
/* renamed from: com.bytedance.sdk.openadsdk.core.widget.webview.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/b.class */
public class C4797b extends WebChromeClient {

    /* renamed from: a */
    private static final String f17626a = WebChromeClient.class.getSimpleName();

    /* renamed from: b */
    private final C4754w f17627b;

    /* renamed from: c */
    private C4822k f17628c;

    public C4797b(C4754w c4754w, C4822k c4822k) {
        this.f17627b = c4754w;
        this.f17628c = c4822k;
    }

    /* renamed from: a */
    private boolean m33922a(String str) {
        try {
            Uri parse = Uri.parse(str);
            if (!"bytedance".equals(parse.getScheme().toLowerCase())) {
                return false;
            }
            C5472n.m32127a(parse, this.f17627b);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onConsoleMessage(String str, int i, String str2) {
        if (!TextUtils.isEmpty(str)) {
            m33922a(str);
        }
        super.onConsoleMessage(str, i, str2);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        if (consoleMessage == null || TextUtils.isEmpty(consoleMessage.message()) || !m33922a(consoleMessage.message())) {
            return super.onConsoleMessage(consoleMessage);
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        super.onProgressChanged(webView, i);
        C4822k c4822k = this.f17628c;
        if (c4822k != null) {
            c4822k.m33825a(webView, i);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        super.onShowCustomView(view, customViewCallback);
    }
}
