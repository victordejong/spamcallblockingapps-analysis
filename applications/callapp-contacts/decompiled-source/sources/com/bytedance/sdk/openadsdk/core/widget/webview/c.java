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
import com.bytedance.sdk.openadsdk.core.w;
import com.bytedance.sdk.openadsdk.d.k;
import com.bytedance.sdk.openadsdk.utils.n;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.t;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/webview/c.class */
public class c extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    private static final HashSet<String> f9377a;

    /* renamed from: b  reason: collision with root package name */
    protected final w f9378b;

    /* renamed from: c  reason: collision with root package name */
    protected final Context f9379c;

    /* renamed from: d  reason: collision with root package name */
    protected final String f9380d;
    protected k e;
    protected boolean f = true;
    protected boolean g = true;

    static {
        HashSet<String> hashSet = new HashSet<>();
        f9377a = hashSet;
        hashSet.add("png");
        hashSet.add("ico");
        hashSet.add("jpg");
        hashSet.add("gif");
        hashSet.add("svg");
        hashSet.add("jpeg");
    }

    public c(Context context, w wVar, String str, k kVar) {
        this.f9379c = context;
        this.f9378b = wVar;
        this.f9380d = str;
        this.e = kVar;
    }

    private static String b(String str) {
        int lastIndexOf;
        String substring;
        if (str == null || (lastIndexOf = str.lastIndexOf(46)) < 0 || lastIndexOf == str.length() - 1 || (substring = str.substring(lastIndexOf)) == null || !f9377a.contains(substring.toLowerCase(Locale.getDefault()))) {
            return null;
        }
        return "image/" + substring;
    }

    public boolean a(String str) {
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
            this.f9379c.startActivity(intent);
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
        if (q.a()) {
            q.a("WebChromeClient", "onPageFinished ".concat(String.valueOf(str)));
        }
        k kVar = this.e;
        if (kVar != null) {
            kVar.a(webView, str);
        }
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        k kVar = this.e;
        if (kVar != null) {
            kVar.a(webView, str, bitmap);
        }
        if (this.g) {
            a.a(this.f9379c).a(Build.VERSION.SDK_INT >= 19).a(webView);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        k kVar = this.e;
        if (kVar != null) {
            kVar.a(webView, i, str, str2, b(str2));
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (this.e != null && webResourceError != null) {
            Uri url = webResourceRequest.getUrl();
            String str = "";
            String uri = url != null ? url.toString() : "";
            Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
            if (requestHeaders.containsKey("accept")) {
                str = requestHeaders.get("accept");
            }
            this.e.a(webView, webResourceError.getErrorCode(), String.valueOf(webResourceError.getDescription()), uri, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (this.e != null && webResourceResponse != null) {
            Uri url = webResourceRequest.getUrl();
            String str = "";
            String uri = url != null ? url.toString() : "";
            Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
            if (requestHeaders.containsKey("accept")) {
                str = requestHeaders.get("accept");
            }
            this.e.a(webView, webResourceResponse.getStatusCode(), String.valueOf(webResourceResponse.getReasonPhrase()), uri, str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (sslErrorHandler != null) {
            try {
                sslErrorHandler.cancel();
            } catch (Throwable th) {
            }
        }
        if (this.e != null) {
            r12 = 0;
            int i = 0;
            String str = "SslError: unknown";
            String str2 = null;
            if (sslError != null) {
                str = "SslError: unknown";
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
            this.e.a(webView, i, str, str2, b(str2));
        }
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        k kVar = this.e;
        if (kVar != null) {
            kVar.a(webView, webResourceRequest);
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
        q.b("WebChromeClient", "shouldOverrideUrlLoading ".concat(String.valueOf(str)));
        try {
            parse = Uri.parse(str);
        } catch (Throwable th) {
            q.b("WebChromeClient", "shouldOverrideUrlLoading", th);
            w wVar = this.f9378b;
            if (wVar != null && wVar.a()) {
                return true;
            }
        }
        if ("bytedance".equals(parse.getScheme().toLowerCase())) {
            n.a(parse, this.f9378b);
            return true;
        } else if (a(str)) {
            return true;
        } else {
            if (!t.a(str)) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(parse);
                intent.addFlags(268435456);
                this.f9379c.startActivity(intent);
                return true;
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }
    }
}
