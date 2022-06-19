package com.applovin.impl.adview;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PointF;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.URLUtil;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.p035a.C0875a;
import com.applovin.impl.p035a.C0882d;
import com.applovin.impl.p035a.C0891l;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.network.C1464h;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p056d.C1323b;
import com.applovin.impl.sdk.p056d.C1326d;
import com.applovin.impl.sdk.utils.AbstractC1485a;
import com.applovin.impl.sdk.utils.C1496j;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.internal.ads.C1676a;
/* renamed from: com.applovin.impl.adview.e */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/e.class */
public class C0990e extends WebViewClient {

    /* renamed from: a */
    private final C1408l f3632a;

    /* renamed from: b */
    private final C1479t f3633b;

    /* renamed from: c */
    private final C0969b f3634c;

    public C0990e(C0969b c0969b, C1408l c1408l) {
        this.f3632a = c1408l;
        this.f3633b = c1408l.m5542A();
        this.f3634c = c0969b;
    }

    /* renamed from: a */
    private void m6872a() {
        this.f3634c.m6905l();
    }

    /* renamed from: a */
    private void m6871a(PointF pointF) {
        this.f3634c.m6947a(pointF);
    }

    /* renamed from: a */
    private void m6870a(Uri uri, C0984d c0984d) {
        C1479t c1479t;
        String str;
        final String queryParameter = uri.getQueryParameter(GoogleApiAvailabilityLight.TRACKING_SOURCE_NOTIFICATION);
        if (StringUtils.isValidString(queryParameter)) {
            String queryParameter2 = uri.getQueryParameter("load_type");
            if ("external".equalsIgnoreCase(queryParameter2)) {
                C1479t c1479t2 = this.f3633b;
                c1479t2.m5116b("AdWebView", "Loading new page externally: " + queryParameter);
                Utils.openUri(c0984d.getContext(), Uri.parse(queryParameter), this.f3632a);
                C1496j.m5004c(this.f3634c.m6915g(), this.f3634c.m6897p(), this.f3634c.m6893r());
                return;
            } else if ("internal".equalsIgnoreCase(queryParameter2)) {
                C1479t c1479t3 = this.f3633b;
                c1479t3.m5116b("AdWebView", "Loading new page in WebView: " + queryParameter);
                c0984d.loadUrl(queryParameter);
                String queryParameter3 = uri.getQueryParameter("bg_color");
                if (!StringUtils.isValidString(queryParameter3)) {
                    return;
                }
                c0984d.setBackgroundColor(Color.parseColor(queryParameter3));
                return;
            } else if ("in_app".equalsIgnoreCase(queryParameter2)) {
                C1479t c1479t4 = this.f3633b;
                c1479t4.m5116b("AdWebView", "Loading new page in slide-up webview: " + queryParameter);
                this.f3632a.m5491ad().m6067a(new AbstractC1485a() { // from class: com.applovin.impl.adview.e.1
                    @Override // com.applovin.impl.sdk.utils.AbstractC1485a, android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityCreated(Activity activity, Bundle bundle) {
                        if (activity instanceof AppLovinWebViewActivity) {
                            ((AppLovinWebViewActivity) activity).loadUrl(queryParameter, null);
                            C1496j.m5037a(C0990e.this.f3634c.m6915g(), C0990e.this.f3634c.m6897p(), C0990e.this.f3634c.m6893r());
                        }
                    }

                    @Override // com.applovin.impl.sdk.utils.AbstractC1485a, android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityDestroyed(Activity activity) {
                        if (activity instanceof AppLovinWebViewActivity) {
                            C1496j.m5010b(C0990e.this.f3634c.m6915g(), C0990e.this.f3634c.m6897p(), C0990e.this.f3634c.m6893r());
                            C0990e.this.f3632a.m5491ad().m6065b(this);
                        }
                    }
                });
                Intent intent = new Intent(this.f3632a.m5532K(), AppLovinWebViewActivity.class);
                intent.putExtra(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f3632a.m5444z());
                intent.setFlags(268435456);
                this.f3632a.m5532K().startActivity(intent);
                return;
            } else {
                c1479t = this.f3633b;
                str = "Could not find load type in original uri";
            }
        } else {
            c1479t = this.f3633b;
            str = "Could not find url to load from query in original uri";
        }
        c1479t.m5111e("AdWebView", str);
    }

    /* renamed from: a */
    private void m6869a(Uri uri, AbstractC1286e abstractC1286e) {
        String queryParameter = uri.getQueryParameter(GoogleApiAvailabilityLight.TRACKING_SOURCE_NOTIFICATION);
        if (URLUtil.isValidUrl(queryParameter)) {
            String appendQueryParameter = StringUtils.appendQueryParameter(queryParameter, "clcode", abstractC1286e.getClCode());
            this.f3632a.m5523T().m5257a(C1464h.m5222o().m5211c(appendQueryParameter).m5217a(false).m5209c(Boolean.parseBoolean(uri.getQueryParameter("fire_from_webview"))).m5221a());
            return;
        }
        C1479t c1479t = this.f3633b;
        c1479t.m5111e("AdWebView", "Could not find postback url to fire from query in original uri: " + uri);
    }

    /* renamed from: a */
    private void m6868a(C0875a c0875a, C0984d c0984d) {
        C0882d m7206aK = c0875a.m7206aK();
        if (m7206aK != null) {
            C0891l.m7111a(m7206aK.m7151c(), this.f3634c.m6895q());
            m6867a(c0984d, m7206aK.m7154a());
        }
    }

    /* renamed from: a */
    private void m6867a(C0984d c0984d, Uri uri) {
        AbstractC1286e currentAd = c0984d.getCurrentAd();
        AppLovinAdView m6893r = this.f3634c.m6893r();
        if (m6893r != null && currentAd != null) {
            C1326d statsManagerHelper = c0984d.getStatsManagerHelper();
            if (statsManagerHelper != null) {
                statsManagerHelper.m5767b();
            }
            this.f3634c.m6937a(currentAd, m6893r, uri, c0984d.getAndClearLastClickLocation());
            return;
        }
        C1479t c1479t = this.f3633b;
        c1479t.m5111e("AdWebView", "Attempting to track click that is null or not an ApplovinAdView instance for clickedUri = " + uri);
    }

    /* renamed from: b */
    private void m6865b() {
        this.f3634c.m6907k();
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0140, code lost:
        if (r5.m7205aL() != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x02be, code lost:
        if (r5.m7205aL() != false) goto L37;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo5636a(android.webkit.WebView r5, java.lang.String r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 712
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.adview.C0990e.mo5636a(android.webkit.WebView, java.lang.String, boolean):boolean");
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        super.onLoadResource(webView, str);
        C1479t c1479t = this.f3633b;
        c1479t.m5114c("AdWebView", "Loaded resource: " + str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        C0969b c0969b = this.f3634c;
        if (c0969b != null) {
            c0969b.m6945a(webView);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        C0969b c0969b = this.f3634c;
        if (c0969b != null) {
            AbstractC1286e m6897p = c0969b.m6897p();
            String str3 = "Received error with error code: " + i + " with description \\'" + str + "\\' for URL: " + str2;
            if (m6897p != null) {
                this.f3632a.m5494aa().m5778a(m6897p).m5774a(C1323b.f5059z, str3).m5777a();
            }
            this.f3633b.m5111e("AdWebView", str3 + " for ad: " + m6897p);
        }
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(23)
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        onReceivedError(webView, webResourceError.getErrorCode(), webResourceError.getDescription().toString(), webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(21)
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        C0969b c0969b = this.f3634c;
        if (c0969b != null) {
            AbstractC1286e m6897p = c0969b.m6897p();
            this.f3632a.m5494aa().m5778a(m6897p).m5776a(C1323b.f5029A).m5777a();
            C1479t c1479t = this.f3633b;
            c1479t.m5111e("AdWebView", "Received HTTP error: " + webResourceResponse + "for url: " + webResourceRequest.getUrl() + " and ad: " + m6897p);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        C0969b c0969b = this.f3634c;
        if (c0969b != null) {
            AbstractC1286e m6897p = c0969b.m6897p();
            String str = "Received SSL error: " + sslError;
            this.f3632a.m5494aa().m5778a(m6897p).m5774a(C1323b.f5031C, str).m5777a();
            this.f3633b.m5111e("AdWebView", str + " for ad: " + m6897p);
        }
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        if (this.f3634c == null) {
            return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }
        StringBuilder m8752j = C0082b.m8752j("Render process gone for ad: ");
        m8752j.append(this.f3634c.m6897p());
        m8752j.append(". Process did crash: ");
        m8752j.append(renderProcessGoneDetail.didCrash());
        C1479t.m5107i("AdWebView", m8752j.toString());
        AbstractC1286e m6897p = this.f3634c.m6897p();
        if (m6897p != null) {
            this.f3632a.m5494aa().m5778a(m6897p).m5776a(C1323b.f5030B).m5777a();
        }
        if (!((Boolean) this.f3632a.m5511a(C1314b.f4933eF)).booleanValue()) {
            return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }
        if (renderProcessGoneDetail.didCrash() && ((Boolean) this.f3632a.m5511a(C1314b.f4935eH)).booleanValue()) {
            throw new RuntimeException(C1676a.m4789h("Render process crashed. This is likely caused by a crash in an AppLovin ad with ID: ", m6897p != null ? String.valueOf(m6897p.getAdIdNumber()) : "null"));
        } else if (webView == null || !webView.equals(this.f3634c.m6891s())) {
            return true;
        } else {
            this.f3634c.m6917f();
            AppLovinAdSize m6928b = this.f3634c.m6928b();
            if (!Utils.isBML(m6928b)) {
                return true;
            }
            this.f3634c.m6930a(m6928b);
            this.f3634c.m6919e();
            return true;
        }
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(24)
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        boolean hasGesture = ((Boolean) this.f3632a.m5511a(C1314b.f4776bE)).booleanValue() ? webResourceRequest.hasGesture() : true;
        Uri url = webResourceRequest.getUrl();
        if (url != null) {
            return mo5636a(webView, url.toString(), hasGesture);
        }
        this.f3633b.m5111e("AdWebView", "No url found for request");
        return false;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return mo5636a(webView, str, true);
    }
}
