package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.core.e.h;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.w;
import com.bytedance.sdk.openadsdk.core.widget.webview.a.a;
import com.bytedance.sdk.openadsdk.core.widget.webview.a.e;
import com.bytedance.sdk.openadsdk.core.widget.webview.c;
import com.bytedance.sdk.openadsdk.d.k;
import com.bytedance.sdk.openadsdk.utils.q;
import com.mopub.common.Constants;
import java.io.File;
import java.io.FileInputStream;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/f.class */
public class f extends c {

    /* renamed from: a  reason: collision with root package name */
    private i f9044a;

    public f(Context context, w wVar, i iVar, k kVar) {
        super(context, wVar, iVar.P(), kVar);
        this.f9044a = iVar;
    }

    private WebResourceResponse a(WebView webView, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        e.a a2 = e.a(str);
        h hVar = null;
        if (a2 != e.a.IMAGE) {
            Iterator<h> it2 = this.f9044a.H().iterator();
            while (true) {
                hVar = null;
                if (!it2.hasNext()) {
                    break;
                }
                h next = it2.next();
                if (!TextUtils.isEmpty(next.a()) && !TextUtils.isEmpty(str)) {
                    String a3 = next.a();
                    String str2 = a3;
                    if (a3.startsWith(Constants.HTTPS)) {
                        str2 = a3.replaceFirst(Constants.HTTPS, "http");
                    }
                    if ((str.startsWith(Constants.HTTPS) ? str.replaceFirst(Constants.HTTPS, "http") : str).equals(str2)) {
                        hVar = next;
                        break;
                    }
                }
            }
        }
        return (a2 == e.a.IMAGE || hVar != null) ? b(str) : a.a(str, a2);
    }

    private void a(long j, long j2, String str, int i) {
        if (this.e != null && this.e.a() != null) {
            e.a a2 = e.a(str);
            if (a2 == e.a.HTML) {
                this.e.a().a(str, j, j2, i);
            } else if (a2 == e.a.JS) {
                this.e.a().b(str, j, j2, i);
            }
        }
    }

    private WebResourceResponse b(String str) {
        WebResourceResponse webResourceResponse;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            File a2 = com.bytedance.sdk.openadsdk.j.a.a.a().a(com.bytedance.sdk.openadsdk.j.a.a.a().a(str, 0, 0, null));
            webResourceResponse = null;
            if (a2 != null) {
                webResourceResponse = null;
                if (a2.exists()) {
                    webResourceResponse = null;
                    if (a2.length() > 0) {
                        webResourceResponse = new WebResourceResponse(e.a.IMAGE.a(), "utf-8", new FileInputStream(a2));
                    }
                }
            }
        } catch (Throwable th) {
            q.c("ExpressClient", "get image WebResourceResponse error", th);
            webResourceResponse = null;
        }
        return webResourceResponse;
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        this.f = false;
        super.onPageFinished(webView, str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        this.g = false;
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        try {
            return shouldInterceptRequest(webView, webResourceRequest.getUrl().toString());
        } catch (Throwable th) {
            q.c("ExpressClient", "shouldInterceptRequest error1", th);
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.webview.c, android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            WebResourceResponse a2 = a(webView, str);
            a(currentTimeMillis, System.currentTimeMillis(), str, a2 != null ? 1 : 2);
            if (a2 != null) {
                return a2;
            }
        } catch (Throwable th) {
            q.c("ExpressClient", "shouldInterceptRequest error2", th);
        }
        return super.shouldInterceptRequest(webView, str);
    }
}
