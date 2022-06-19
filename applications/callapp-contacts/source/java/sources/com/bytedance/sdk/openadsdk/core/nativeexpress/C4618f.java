package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.core.C4754w;
import com.bytedance.sdk.openadsdk.core.p154e.C4556h;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.widget.webview.C4798c;
import com.bytedance.sdk.openadsdk.core.widget.webview.p163a.C4786a;
import com.bytedance.sdk.openadsdk.core.widget.webview.p163a.C4794e;
import com.bytedance.sdk.openadsdk.p164d.C4822k;
import com.bytedance.sdk.openadsdk.p174j.p175a.C4940a;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.mopub.common.Constants;
import java.io.File;
import java.io.FileInputStream;
import java.util.Iterator;
/* renamed from: com.bytedance.sdk.openadsdk.core.nativeexpress.f */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/f.class */
public class C4618f extends C4798c {

    /* renamed from: a */
    private C4557i f16924a;

    public C4618f(Context context, C4754w c4754w, C4557i c4557i, C4822k c4822k) {
        super(context, c4754w, c4557i.m35231P(), c4822k);
        this.f16924a = c4557i;
    }

    /* renamed from: a */
    private WebResourceResponse m34726a(WebView webView, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        C4794e.EnumC4795a m33931a = C4794e.m33931a(str);
        C4556h c4556h = null;
        if (m33931a != C4794e.EnumC4795a.IMAGE) {
            Iterator<C4556h> it2 = this.f16924a.m35239H().iterator();
            while (true) {
                c4556h = null;
                if (!it2.hasNext()) {
                    break;
                }
                C4556h next = it2.next();
                if (!TextUtils.isEmpty(next.m35254a()) && !TextUtils.isEmpty(str)) {
                    String m35254a = next.m35254a();
                    String str2 = m35254a;
                    if (m35254a.startsWith(Constants.HTTPS)) {
                        str2 = m35254a.replaceFirst(Constants.HTTPS, "http");
                    }
                    if ((str.startsWith(Constants.HTTPS) ? str.replaceFirst(Constants.HTTPS, "http") : str).equals(str2)) {
                        c4556h = next;
                        break;
                    }
                }
            }
        }
        return (m33931a == C4794e.EnumC4795a.IMAGE || c4556h != null) ? m34725b(str) : C4786a.m33981a(str, m33931a);
    }

    /* renamed from: a */
    private void m34727a(long j, long j2, String str, int i) {
        if (this.f17633e == null || this.f17633e.m33826a() == null) {
            return;
        }
        C4794e.EnumC4795a m33931a = C4794e.m33931a(str);
        if (m33931a == C4794e.EnumC4795a.HTML) {
            this.f17633e.m33826a().m33767a(str, j, j2, i);
        } else if (m33931a != C4794e.EnumC4795a.JS) {
        } else {
            this.f17633e.m33826a().m33758b(str, j, j2, i);
        }
    }

    /* renamed from: b */
    private WebResourceResponse m34725b(String str) {
        WebResourceResponse webResourceResponse;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            File m33484a = C4940a.m33485a().m33484a(C4940a.m33485a().m33483a(str, 0, 0, null));
            webResourceResponse = null;
            if (m33484a != null) {
                webResourceResponse = null;
                if (m33484a.exists()) {
                    webResourceResponse = null;
                    if (m33484a.length() > 0) {
                        webResourceResponse = new WebResourceResponse(C4794e.EnumC4795a.IMAGE.m33930a(), "utf-8", new FileInputStream(m33484a));
                    }
                }
            }
        } catch (Throwable th) {
            C5478q.m32108c("ExpressClient", "get image WebResourceResponse error", th);
            webResourceResponse = null;
        }
        return webResourceResponse;
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        this.f17634f = false;
        super.onPageFinished(webView, str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        this.f17635g = false;
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        try {
            return shouldInterceptRequest(webView, webResourceRequest.getUrl().toString());
        } catch (Throwable th) {
            C5478q.m32108c("ExpressClient", "shouldInterceptRequest error1", th);
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.webview.C4798c, android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            WebResourceResponse m34726a = m34726a(webView, str);
            m34727a(currentTimeMillis, System.currentTimeMillis(), str, m34726a != null ? 1 : 2);
            if (m34726a != null) {
                return m34726a;
            }
        } catch (Throwable th) {
            C5478q.m32108c("ExpressClient", "shouldInterceptRequest error2", th);
        }
        return super.shouldInterceptRequest(webView, str);
    }
}
