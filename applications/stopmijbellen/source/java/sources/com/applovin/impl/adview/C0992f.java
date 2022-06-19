package com.applovin.impl.adview;

import android.annotation.TargetApi;
import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p056d.C1323b;
@TargetApi(29)
/* renamed from: com.applovin.impl.adview.f */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/f.class */
public class C0992f {

    /* renamed from: a */
    private final C1408l f3637a;

    /* renamed from: b */
    private final WebViewRenderProcessClient f3638b = new WebViewRenderProcessClient() { // from class: com.applovin.impl.adview.f.1
        @Override // android.webkit.WebViewRenderProcessClient
        public void onRenderProcessResponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        }

        @Override // android.webkit.WebViewRenderProcessClient
        public void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
            if (webView instanceof C0984d) {
                AbstractC1286e currentAd = ((C0984d) webView).getCurrentAd();
                C0992f.this.f3637a.m5494aa().m5778a(currentAd).m5776a(C1323b.f5032D).m5777a();
                C1479t m5542A = C0992f.this.f3637a.m5542A();
                m5542A.m5111e("AdWebViewRenderProcessClient", "WebView render process unresponsive for ad: " + currentAd);
            }
        }
    };

    public C0992f(C1408l c1408l) {
        this.f3637a = c1408l;
    }

    /* renamed from: a */
    public WebViewRenderProcessClient m6863a() {
        return this.f3638b;
    }
}
