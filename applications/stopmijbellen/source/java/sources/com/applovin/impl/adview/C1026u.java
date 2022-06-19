package com.applovin.impl.adview;

import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.google.ads.mediation.applovin.AppLovinMediationAdapter;
import java.lang.ref.WeakReference;
/* renamed from: com.applovin.impl.adview.u */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/u.class */
public class C1026u extends WebViewClient {

    /* renamed from: a */
    private final C1479t f3714a;

    /* renamed from: b */
    private WeakReference<AbstractC1027a> f3715b;

    /* renamed from: com.applovin.impl.adview.u$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/u$a.class */
    public interface AbstractC1027a {
        /* renamed from: a */
        void mo6780a(C1025t c1025t);

        /* renamed from: b */
        void mo6779b(C1025t c1025t);

        /* renamed from: c */
        void mo6778c(C1025t c1025t);
    }

    public C1026u(C1408l c1408l) {
        this.f3714a = c1408l.m5542A();
    }

    /* renamed from: a */
    private void m6782a(WebView webView, String str) {
        C1479t c1479t = this.f3714a;
        c1479t.m5114c("WebViewButtonClient", "Processing click on ad URL \"" + str + "\"");
        if (str == null || !(webView instanceof C1025t)) {
            return;
        }
        C1025t c1025t = (C1025t) webView;
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        String host = parse.getHost();
        String path = parse.getPath();
        AbstractC1027a abstractC1027a = this.f3715b.get();
        if (!"applovin".equalsIgnoreCase(scheme) || !AppLovinMediationAdapter.APPLOVIN_SDK_ERROR_DOMAIN.equalsIgnoreCase(host) || abstractC1027a == null) {
            return;
        }
        if ("/track_click".equals(path)) {
            abstractC1027a.mo6780a(c1025t);
        } else if ("/close_ad".equals(path)) {
            abstractC1027a.mo6779b(c1025t);
        } else if ("/skip_ad".equals(path)) {
            abstractC1027a.mo6778c(c1025t);
        } else {
            C1479t c1479t2 = this.f3714a;
            c1479t2.m5112d("WebViewButtonClient", "Unknown URL: " + str);
            C1479t c1479t3 = this.f3714a;
            c1479t3.m5112d("WebViewButtonClient", "Path: " + path);
        }
    }

    /* renamed from: a */
    public void m6781a(WeakReference<AbstractC1027a> weakReference) {
        this.f3715b = weakReference;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        m6782a(webView, str);
        return true;
    }
}
