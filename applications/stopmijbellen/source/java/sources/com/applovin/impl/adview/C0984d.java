package com.applovin.impl.adview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.support.p012v4.media.C0082b;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.applovin.impl.p035a.C0875a;
import com.applovin.impl.p035a.C0882d;
import com.applovin.impl.p035a.C0886h;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.network.C1467i;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p053ad.C1281a;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p056d.C1326d;
import com.applovin.impl.sdk.utils.C1492g;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinSdkUtils;
/* renamed from: com.applovin.impl.adview.d */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/d.class */
public class C0984d extends C0995h {

    /* renamed from: c */
    private static WebView f3619c;

    /* renamed from: a */
    private final C1479t f3620a;

    /* renamed from: b */
    private final C1408l f3621b;

    /* renamed from: d */
    private C1326d f3622d;

    /* renamed from: e */
    private AbstractC1286e f3623e;

    /* renamed from: f */
    private boolean f3624f;

    /* renamed from: g */
    private boolean f3625g;

    public C0984d(C0990e c0990e, C1408l c1408l, Context context) {
        this(c0990e, c1408l, context, false);
    }

    public C0984d(C0990e c0990e, C1408l c1408l, Context context, boolean z) {
        super(context);
        if (c1408l != null) {
            this.f3621b = c1408l;
            this.f3620a = c1408l.m5542A();
            setBackgroundColor(0);
            WebSettings settings = getSettings();
            settings.setSupportMultipleWindows(false);
            settings.setJavaScriptEnabled(true);
            setWebViewClient(c0990e);
            setWebChromeClient(new C0983c(c1408l));
            setVerticalScrollBarEnabled(false);
            setHorizontalScrollBarEnabled(false);
            setScrollBarStyle(33554432);
            if (C1492g.m5067h() && ((Boolean) c1408l.m5511a(C1314b.f4938eK)).booleanValue()) {
                setWebViewRenderProcessClient(new C0992f(c1408l).m6863a());
            }
            setOnTouchListener(new View.OnTouchListener() { // from class: com.applovin.impl.adview.d.1
                @Override // android.view.View.OnTouchListener
                @SuppressLint({"ClickableViewAccessibility"})
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (!view.hasFocus()) {
                        view.requestFocus();
                        return false;
                    }
                    return false;
                }
            });
            setOnLongClickListener(new View.OnLongClickListener() { // from class: com.applovin.impl.adview.d.2
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    C0984d.this.f3620a.m5116b("AdWebView", "Received a LongClick event.");
                    return true;
                }
            });
            return;
        }
        throw new IllegalArgumentException("No sdk specified.");
    }

    /* renamed from: a */
    private String m6877a(String str, String str2) {
        if (StringUtils.isValidString(str)) {
            return Utils.replaceCommonMacros(this.f3625g, str).replace("{SOURCE}", str2);
        }
        return null;
    }

    /* renamed from: a */
    public static void m6880a(final C1467i c1467i, final C1408l c1408l, final AppLovinPostbackListener appLovinPostbackListener) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.d.3
            @Override // java.lang.Runnable
            public void run() {
                String m5329a = c1467i.m5329a();
                C0984d.m6873c();
                if (C0984d.f3619c == null) {
                    appLovinPostbackListener.onPostbackFailure(m5329a, -1);
                    return;
                }
                String str = m5329a;
                if (c1467i.m5323c() != null) {
                    str = StringUtils.appendQueryParameters(m5329a, c1467i.m5323c(), ((Boolean) c1408l.m5511a(C1314b.f4908dg)).booleanValue());
                }
                String m8755g = C0082b.m8755g("al_firePostback('", str, "');");
                if (C1492g.m5072c()) {
                    C0984d.f3619c.evaluateJavascript(m8755g, null);
                } else {
                    WebView webView = C0984d.f3619c;
                    webView.loadUrl("javascript:" + m8755g);
                }
                appLovinPostbackListener.onPostbackSuccess(str);
            }
        });
    }

    /* renamed from: a */
    private void m6876a(String str, String str2, String str3, C1408l c1408l) {
        String m6877a = m6877a(str3, str);
        if (StringUtils.isValidString(m6877a)) {
            C1479t c1479t = this.f3620a;
            c1479t.m5116b("AdWebView", "Rendering webview for VAST ad with resourceContents : " + m6877a);
            loadDataWithBaseURL(str2, m6877a, "text/html", null, "");
            return;
        }
        String m6877a2 = m6877a((String) c1408l.m5511a(C1314b.f4953ef), str);
        if (StringUtils.isValidString(m6877a2)) {
            C1479t c1479t2 = this.f3620a;
            c1479t2.m5116b("AdWebView", "Rendering webview for VAST ad with resourceContents : " + m6877a2);
            loadDataWithBaseURL(str2, m6877a2, "text/html", null, "");
            return;
        }
        C1479t c1479t3 = this.f3620a;
        c1479t3.m5116b("AdWebView", "Rendering webview for VAST ad with resourceURL : " + str);
        loadUrl(str);
    }

    /* renamed from: b */
    private void m6874b(AbstractC1286e abstractC1286e) {
        Boolean m6764n;
        Integer m6777a;
        loadUrl("about:blank");
        int m5929av = this.f3623e.m5929av();
        if (m5929av >= 0) {
            setLayerType(m5929av, null);
        }
        if (C1492g.m5073b()) {
            getSettings().setMediaPlaybackRequiresUserGesture(abstractC1286e.m5933ar());
        }
        if (C1492g.m5072c() && abstractC1286e.m5931at()) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        C1028v m5930au = abstractC1286e.m5930au();
        if (m5930au != null) {
            WebSettings settings = getSettings();
            WebSettings.PluginState m6776b = m5930au.m6776b();
            if (m6776b != null) {
                settings.setPluginState(m6776b);
            }
            Boolean m6775c = m5930au.m6775c();
            if (m6775c != null) {
                settings.setAllowFileAccess(m6775c.booleanValue());
            }
            Boolean m6774d = m5930au.m6774d();
            if (m6774d != null) {
                settings.setLoadWithOverviewMode(m6774d.booleanValue());
            }
            Boolean m6773e = m5930au.m6773e();
            if (m6773e != null) {
                settings.setUseWideViewPort(m6773e.booleanValue());
            }
            Boolean m6772f = m5930au.m6772f();
            if (m6772f != null) {
                settings.setAllowContentAccess(m6772f.booleanValue());
            }
            Boolean m6771g = m5930au.m6771g();
            if (m6771g != null) {
                settings.setBuiltInZoomControls(m6771g.booleanValue());
            }
            Boolean m6770h = m5930au.m6770h();
            if (m6770h != null) {
                settings.setDisplayZoomControls(m6770h.booleanValue());
            }
            Boolean m6769i = m5930au.m6769i();
            if (m6769i != null) {
                settings.setSaveFormData(m6769i.booleanValue());
            }
            Boolean m6768j = m5930au.m6768j();
            if (m6768j != null) {
                settings.setGeolocationEnabled(m6768j.booleanValue());
            }
            Boolean m6767k = m5930au.m6767k();
            if (m6767k != null) {
                settings.setNeedInitialFocus(m6767k.booleanValue());
            }
            Boolean m6766l = m5930au.m6766l();
            if (m6766l != null) {
                settings.setAllowFileAccessFromFileURLs(m6766l.booleanValue());
            }
            Boolean m6765m = m5930au.m6765m();
            if (m6765m != null) {
                settings.setAllowUniversalAccessFromFileURLs(m6765m.booleanValue());
            }
            if (C1492g.m5071d() && (m6777a = m5930au.m6777a()) != null) {
                settings.setMixedContentMode(m6777a.intValue());
            }
            if (!C1492g.m5070e() || (m6764n = m5930au.m6764n()) == null) {
                return;
            }
            settings.setOffscreenPreRaster(m6764n.booleanValue());
        }
    }

    /* renamed from: c */
    public static void m6873c() {
        if (f3619c != null) {
            return;
        }
        try {
            WebView webView = new WebView(C1408l.m5531L());
            f3619c = webView;
            webView.getSettings().setJavaScriptEnabled(true);
            f3619c.loadData("<html><head>\n<script type=\"text/javascript\">\n    window.al_firePostback = function(postback) {\n    setTimeout(function() {\n        var img = new Image();\n        img.src = postback;\n    }, 100);\n};\n</script></head>\n<body></body></html>", "text/html", "UTF-8");
            f3619c.setWebViewClient(new WebViewClient() { // from class: com.applovin.impl.adview.d.4
                @Override // android.webkit.WebViewClient
                public boolean onRenderProcessGone(WebView webView2, RenderProcessGoneDetail renderProcessGoneDetail) {
                    if (webView2 == C0984d.f3619c) {
                        C0984d.f3619c.destroy();
                        WebView unused = C0984d.f3619c = null;
                        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.d.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                C0984d.m6873c();
                            }
                        });
                        return true;
                    }
                    return true;
                }
            });
        } catch (Throwable th) {
            C1479t.m5113c("AdWebView", "Failed to initialize WebView for postbacks.", th);
        }
    }

    /* renamed from: a */
    public void m6881a(AbstractC1286e abstractC1286e) {
        C1479t c1479t;
        String str;
        C1479t c1479t2;
        String str2;
        String m6877a;
        String m5932as;
        String m5932as2;
        C1408l c1408l;
        if (this.f3624f) {
            C1479t.m5107i("AdWebView", "Ad can not be loaded in a destroyed webview");
            return;
        }
        this.f3623e = abstractC1286e;
        try {
            m6874b(abstractC1286e);
            if (Utils.isBML(abstractC1286e.getSize())) {
                setVisibility(0);
            }
            if (abstractC1286e instanceof C1281a) {
                C1281a c1281a = (C1281a) abstractC1286e;
                String replaceCommonMacros = Utils.replaceCommonMacros(this.f3625g, c1281a.m6023b());
                String str3 = replaceCommonMacros;
                if (c1281a.isOpenMeasurementEnabled()) {
                    str3 = this.f3621b.m5485aj().m6054a(replaceCommonMacros);
                }
                loadDataWithBaseURL(abstractC1286e.m5932as(), str3, "text/html", null, "");
                if (c1281a.isOpenMeasurementEnabled()) {
                    c1281a.getAdEventTracker().m6061b(this);
                    c1281a.getAdEventTracker().m6064a((View) this);
                    c1281a.getAdEventTracker().mo6039c();
                    c1281a.getAdEventTracker().mo6038d();
                }
                c1479t = this.f3620a;
                str = "AppLovinAd rendered";
            } else if (!(abstractC1286e instanceof C0875a)) {
                return;
            } else {
                C0875a c0875a = (C0875a) abstractC1286e;
                C0882d m7206aK = c0875a.m7206aK();
                if (m7206aK != null) {
                    C0886h m7152b = m7206aK.m7152b();
                    Uri m7132b = m7152b.m7132b();
                    String uri = m7132b != null ? m7132b.toString() : "";
                    String m7131c = m7152b.m7131c();
                    String m7204aM = c0875a.m7204aM();
                    if (!StringUtils.isValidString(uri) && !StringUtils.isValidString(m7131c)) {
                        c1479t2 = this.f3620a;
                        str2 = "Unable to load companion ad. No resources provided.";
                        c1479t2.m5111e("AdWebView", str2);
                        return;
                    }
                    if (m7152b.m7137a() == C0886h.EnumC0887a.STATIC) {
                        this.f3620a.m5116b("AdWebView", "Rendering WebView for static VAST ad");
                        loadDataWithBaseURL(abstractC1286e.m5932as(), m6877a((String) this.f3621b.m5511a(C1314b.f4952ee), uri), "text/html", null, "");
                        return;
                    } else if (m7152b.m7137a() == C0886h.EnumC0887a.HTML) {
                        if (!StringUtils.isValidString(m7131c)) {
                            if (!StringUtils.isValidString(uri)) {
                                return;
                            }
                            this.f3620a.m5116b("AdWebView", "Preparing to load HTML VAST ad resourceUri");
                            m5932as2 = abstractC1286e.m5932as();
                            c1408l = this.f3621b;
                            m6876a(uri, m5932as2, m7204aM, c1408l);
                            return;
                        }
                        m6877a = m6877a(m7204aM, m7131c);
                        if (!StringUtils.isValidString(m6877a)) {
                            m6877a = m7131c;
                        }
                        C1479t c1479t3 = this.f3620a;
                        c1479t3.m5116b("AdWebView", "Rendering WebView for HTML VAST ad with resourceContents: " + m6877a);
                        m5932as = abstractC1286e.m5932as();
                        loadDataWithBaseURL(m5932as, m6877a, "text/html", null, "");
                        return;
                    } else if (m7152b.m7137a() != C0886h.EnumC0887a.IFRAME) {
                        c1479t2 = this.f3620a;
                        str2 = "Failed to render VAST companion ad of invalid type";
                        c1479t2.m5111e("AdWebView", str2);
                        return;
                    } else if (StringUtils.isValidString(uri)) {
                        this.f3620a.m5116b("AdWebView", "Preparing to load iFrame VAST ad resourceUri");
                        m5932as2 = abstractC1286e.m5932as();
                        c1408l = this.f3621b;
                        m6876a(uri, m5932as2, m7204aM, c1408l);
                        return;
                    } else if (!StringUtils.isValidString(m7131c)) {
                        return;
                    } else {
                        m6877a = m6877a(m7204aM, m7131c);
                        if (!StringUtils.isValidString(m6877a)) {
                            m6877a = m7131c;
                        }
                        C1479t c1479t4 = this.f3620a;
                        c1479t4.m5116b("AdWebView", "Rendering WebView for iFrame VAST ad with resourceContents: " + m6877a);
                        m5932as = abstractC1286e.m5932as();
                        loadDataWithBaseURL(m5932as, m6877a, "text/html", null, "");
                        return;
                    }
                }
                c1479t = this.f3620a;
                str = "No companion ad provided.";
            }
            c1479t.m5116b("AdWebView", str);
        } catch (Throwable th) {
            String valueOf = abstractC1286e != null ? String.valueOf(abstractC1286e.getAdIdNumber()) : "null";
            throw new RuntimeException("Unable to render AppLovin ad (" + valueOf + ") - " + th);
        }
    }

    /* renamed from: a */
    public void m6879a(String str) {
        m6878a(str, (Runnable) null);
    }

    /* renamed from: a */
    public void m6878a(String str, Runnable runnable) {
        try {
            C1479t c1479t = this.f3620a;
            c1479t.m5116b("AdWebView", "Forwarding \"" + str + "\" to ad template");
            loadUrl(str);
        } catch (Throwable th) {
            this.f3620a.m5115b("AdWebView", "Unable to forward to template", th);
            if (runnable == null) {
                return;
            }
            runnable.run();
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void computeScroll() {
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.f3624f = true;
        super.destroy();
    }

    public AbstractC1286e getCurrentAd() {
        return this.f3623e;
    }

    public C1326d getStatsManagerHelper() {
        return this.f3622d;
    }

    @Override // android.webkit.WebView, android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
    }

    public void setIsShownOutOfContext(boolean z) {
        this.f3625g = z;
    }

    public void setStatsManagerHelper(C1326d c1326d) {
        this.f3622d = c1326d;
    }
}
