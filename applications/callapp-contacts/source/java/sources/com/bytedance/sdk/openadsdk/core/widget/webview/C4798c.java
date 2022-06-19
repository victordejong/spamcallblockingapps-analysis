package com.bytedance.sdk.openadsdk.core.widget.webview;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.bytedance.sdk.openadsdk.core.C4754w;
import com.bytedance.sdk.openadsdk.p164d.C4822k;
import com.bytedance.sdk.openadsdk.utils.C5472n;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5482t;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.core.widget.webview.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/c.class */
public class C4798c extends WebViewClient {

    /* renamed from: a */
    private static final HashSet<String> f17629a;

    /* renamed from: b */
    protected final C4754w f17630b;

    /* renamed from: c */
    protected final Context f17631c;

    /* renamed from: d */
    protected final String f17632d;

    /* renamed from: e */
    protected C4822k f17633e;

    /* renamed from: f */
    protected boolean f17634f = true;

    /* renamed from: g */
    protected boolean f17635g = true;

    static {
        HashSet<String> hashSet = new HashSet<>();
        f17629a = hashSet;
        hashSet.add("png");
        hashSet.add("ico");
        hashSet.add("jpg");
        hashSet.add("gif");
        hashSet.add("svg");
        hashSet.add("jpeg");
    }

    public C4798c(Context context, C4754w c4754w, String str, C4822k c4822k) {
        this.f17631c = context;
        this.f17630b = c4754w;
        this.f17632d = str;
        this.f17633e = c4822k;
    }

    /* renamed from: b */
    private static String m33920b(String str) {
        int lastIndexOf;
        String substring;
        if (str == null || (lastIndexOf = str.lastIndexOf(46)) < 0 || lastIndexOf == str.length() - 1 || (substring = str.substring(lastIndexOf)) == null || !f17629a.contains(substring.toLowerCase(Locale.getDefault()))) {
            return null;
        }
        return "image/" + substring;
    }

    /* renamed from: a */
    public boolean m33921a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Uri parse = Uri.parse(str);
            if (!"play.google.com".equals(parse.getHost())) {
                return false;
            }
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(parse);
            intent.setPackage("com.android.vending");
            this.f17631c.startActivity(intent);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        super.onLoadResource(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        if (C5478q.m32121a()) {
            C5478q.m32118a("WebChromeClient", "onPageFinished ".concat(String.valueOf(str)));
        }
        C4822k c4822k = this.f17633e;
        if (c4822k != null) {
            c4822k.m33822a(webView, str);
        }
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        C4822k c4822k = this.f17633e;
        if (c4822k != null) {
            c4822k.m33821a(webView, str, bitmap);
        }
        if (this.f17635g) {
            C4785a.m33991a(this.f17631c).m33988a(Build.VERSION.SDK_INT >= 19).m33989a(webView);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        C4822k c4822k = this.f17633e;
        if (c4822k != null) {
            c4822k.m33824a(webView, i, str, str2, m33920b(str2));
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (this.f17633e == null || webResourceError == null) {
            return;
        }
        Uri url = webResourceRequest.getUrl();
        String uri = url != null ? url.toString() : "";
        Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
        String str = "";
        if (requestHeaders.containsKey("accept")) {
            str = requestHeaders.get("accept");
        }
        this.f17633e.m33824a(webView, webResourceError.getErrorCode(), String.valueOf(webResourceError.getDescription()), uri, str);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (this.f17633e == null || webResourceResponse == null) {
            return;
        }
        Uri url = webResourceRequest.getUrl();
        String uri = url != null ? url.toString() : "";
        Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
        String str = "";
        if (requestHeaders.containsKey("accept")) {
            str = requestHeaders.get("accept");
        }
        this.f17633e.m33824a(webView, webResourceResponse.getStatusCode(), String.valueOf(webResourceResponse.getReasonPhrase()), uri, str);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (sslErrorHandler != null) {
            try {
                sslErrorHandler.cancel();
            } catch (Throwable th) {
            }
        }
        if (this.f17633e != null) {
            int i = 0;
            String str = "SslError: unknown";
            String str2 = null;
            if (sslError != null) {
                str = "SslError: unknown";
                i = 0;
                try {
                    int primaryError = sslError.getPrimaryError();
                    StringBuilder sb = new StringBuilder("SslError: ");
                    sb.append(String.valueOf(sslError));
                    String sb2 = sb.toString();
                    str = sb2;
                    i = primaryError;
                    str2 = sslError.getUrl();
                    i = primaryError;
                    str = sb2;
                } catch (Throwable th2) {
                    str2 = null;
                }
            }
            this.f17633e.m33824a(webView, i, str, str2, m33920b(str2));
        }
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        C4822k c4822k = this.f17633e;
        if (c4822k != null) {
            c4822k.m33823a(webView, webResourceRequest);
        }
        return super.shouldInterceptRequest(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return super.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Uri parse;
        C5478q.m32112b("WebChromeClient", "shouldOverrideUrlLoading ".concat(String.valueOf(str)));
        try {
            parse = Uri.parse(str);
        } catch (Throwable th) {
            C5478q.m32111b("WebChromeClient", "shouldOverrideUrlLoading", th);
            C4754w c4754w = this.f17630b;
            if (c4754w != null && c4754w.m34163a()) {
                return true;
            }
        }
        if ("bytedance".equals(parse.getScheme().toLowerCase())) {
            C5472n.m32127a(parse, this.f17630b);
            return true;
        } else if (m33921a(str)) {
            return true;
        } else {
            if (!C5482t.m32090a(str)) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(parse);
                intent.addFlags(268435456);
                this.f17631c.startActivity(intent);
                return true;
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }
    }
}
