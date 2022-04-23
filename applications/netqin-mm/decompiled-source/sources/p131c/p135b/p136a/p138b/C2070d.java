package p131c.p135b.p136a.p138b;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.applovin.impl.p483a.C6894a;
import com.applovin.impl.p483a.C6900e;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import p131c.p135b.p136a.p137a.C2031a;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p150c.C2245a;
import p131c.p135b.p136a.p148e.p151e.C2262c;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2388g;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: c.b.a.b.d */
/* loaded from: classes-dex2jar.jar:c/b/a/b/d.class */
public class C2070d extends C2081g {

    /* renamed from: i */
    public static C2070d f8029i;

    /* renamed from: j */
    public static WebView f8030j;

    /* renamed from: k */
    public static volatile String f8031k;

    /* renamed from: l */
    public static volatile Map<String, String> f8032l;

    /* renamed from: b */
    public final C2374t f8033b;

    /* renamed from: c */
    public final C2341l f8034c;

    /* renamed from: d */
    public C2262c f8035d;

    /* renamed from: e */
    public AbstractC7036g f8036e;

    /* renamed from: f */
    public boolean f8037f;

    /* renamed from: g */
    public boolean f8038g;

    /* renamed from: h */
    public final boolean f8039h;

    /* renamed from: c.b.a.b.d$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/d$a.class */
    public static final class RunnableC2071a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            WebView unused = C2070d.f8030j = new WebView(C2341l.m30250i0());
        }
    }

    /* renamed from: c.b.a.b.d$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/d$b.class */
    public class View$OnTouchListenerC2072b implements View.OnTouchListener {
        public View$OnTouchListenerC2072b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (view.hasFocus()) {
                return false;
            }
            view.requestFocus();
            return false;
        }
    }

    /* renamed from: c.b.a.b.d$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/d$c.class */
    public class View$OnLongClickListenerC2073c implements View.OnLongClickListener {
        public View$OnLongClickListenerC2073c() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            C2070d.this.f8033b.m30044b("AdWebView", "Received a LongClick event.");
            return true;
        }
    }

    /* renamed from: c.b.a.b.d$d */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/d$d.class */
    public static final class RunnableC2074d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ CountDownLatch f8042a;

        public RunnableC2074d(CountDownLatch countDownLatch) {
            this.f8042a = countDownLatch;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                String unused = C2070d.f8031k = C2070d.f8030j.getSettings().getUserAgentString();
            } catch (Throwable th) {
            }
            this.f8042a.countDown();
        }
    }

    /* renamed from: c.b.a.b.d$e */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/d$e.class */
    public static final class RunnableC2075e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ CountDownLatch f8043a;

        /* renamed from: c.b.a.b.d$e$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/b/d$e$a.class */
        public class C2076a extends WebViewClient {
            public C2076a() {
            }

            @Override // android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                HashMap hashMap = new HashMap();
                for (Map.Entry<String, String> entry : webResourceRequest.getRequestHeaders().entrySet()) {
                    hashMap.put("AppLovin-WebView-" + entry.getKey(), entry.getValue());
                }
                Map unused = C2070d.f8032l = hashMap;
                RunnableC2075e.this.f8043a.countDown();
                return super.shouldInterceptRequest(webView, webResourceRequest);
            }
        }

        public RunnableC2075e(CountDownLatch countDownLatch) {
            this.f8043a = countDownLatch;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2070d.f8030j.setWebViewClient(new C2076a());
            C2070d.f8030j.loadUrl("https://blank");
        }
    }

    static {
        AppLovinSdkUtils.runOnUiThread(new RunnableC2071a());
    }

    public C2070d(C2077e eVar, C2341l lVar, Context context) {
        this(eVar, lVar, context, false);
    }

    public C2070d(C2077e eVar, C2341l lVar, Context context, boolean z) {
        super(context);
        if (lVar != null) {
            this.f8034c = lVar;
            this.f8033b = lVar.m30262d0();
            this.f8039h = z;
            setBackgroundColor(0);
            WebSettings settings = getSettings();
            settings.setSupportMultipleWindows(false);
            settings.setJavaScriptEnabled(true);
            setWebViewClient(eVar);
            setWebChromeClient(new C2069c(lVar));
            setVerticalScrollBarEnabled(false);
            setHorizontalScrollBarEnabled(false);
            setScrollBarStyle(33554432);
            if (C2388g.m29968g()) {
                setWebViewRenderProcessClient(new C2079f(lVar).m31107a());
            }
            setOnTouchListener(new View$OnTouchListenerC2072b());
            setOnLongClickListener(new View$OnLongClickListenerC2073c());
            return;
        }
        throw new IllegalArgumentException("No sdk specified.");
    }

    /* renamed from: a */
    public static C2070d m31126a(AppLovinAdSize appLovinAdSize, C2077e eVar, C2341l lVar, Context context) {
        if (!((Boolean) lVar.m30291a(C2251d.C2256e.f8656d4)).booleanValue() || appLovinAdSize != AppLovinAdSize.INTERSTITIAL) {
            return new C2070d(eVar, lVar, context);
        }
        C2070d dVar = f8029i;
        if (dVar == null) {
            f8029i = new C2070d(eVar, lVar, context.getApplicationContext(), true);
        } else {
            dVar.setWebViewClient(eVar);
        }
        return f8029i;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0034 -> B:8:0x002c). Please submit an issue!!! */
    /* renamed from: a */
    public static String m31130a(long j) {
        if (f8031k != null || j <= 0) {
            return f8031k;
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        AppLovinSdkUtils.runOnUiThread(new RunnableC2074d(countDownLatch));
        try {
            countDownLatch.await(j, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
        }
        return f8031k;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x003a -> B:10:0x0032). Please submit an issue!!! */
    /* renamed from: b */
    public static Map<String, String> m31119b(long j) {
        if (f8032l != null || j <= 0) {
            return f8032l;
        }
        if (C2388g.m29971d()) {
            CountDownLatch countDownLatch = new CountDownLatch(1);
            AppLovinSdkUtils.runOnUiThread(new RunnableC2075e(countDownLatch));
            try {
                countDownLatch.await(j, TimeUnit.MILLISECONDS);
            } catch (Throwable th) {
            }
        }
        return f8032l;
    }

    public static Map<String, String> getHttpHeaders() {
        return f8032l;
    }

    /* renamed from: a */
    public final String m31123a(String str, String str2) {
        if (C2422o.m29851b(str)) {
            return AbstractC2426r.m29791a(this.f8038g, str).replace("{SOURCE}", str2);
        }
        return null;
    }

    /* renamed from: a */
    public void m31127a(AbstractC7036g gVar) {
        C2374t tVar;
        String str;
        C2374t tVar2;
        String str2;
        String a;
        String E;
        String E2;
        C2341l lVar;
        if (!this.f8037f) {
            this.f8036e = gVar;
            try {
                m31118b(gVar);
                if (gVar.m18909c0()) {
                    setVisibility(0);
                }
                if (gVar instanceof C2245a) {
                    loadDataWithBaseURL(gVar.m18957E(), AbstractC2426r.m29791a(this.f8038g, ((C2245a) gVar).m30660J0()), "text/html", null, "");
                    tVar = this.f8033b;
                    str = "AppLovinAd rendered";
                } else if (gVar instanceof C6894a) {
                    C6894a aVar = (C6894a) gVar;
                    C2031a Y0 = aVar.m19458Y0();
                    if (Y0 != null) {
                        C6900e b = Y0.m31244b();
                        Uri b2 = b.m19421b();
                        String uri = b2 != null ? b2.toString() : "";
                        String c = b.m19420c();
                        String J0 = aVar.m19473J0();
                        if (!C2422o.m29851b(uri) && !C2422o.m29851b(c)) {
                            tVar2 = this.f8033b;
                            str2 = "Unable to load companion ad. No resources provided.";
                            tVar2.m30039e("AdWebView", str2);
                            return;
                        }
                        if (b.m19426a() == C6900e.EnumC6901a.STATIC) {
                            this.f8033b.m30044b("AdWebView", "Rendering WebView for static VAST ad");
                            loadDataWithBaseURL(gVar.m18957E(), m31123a((String) this.f8034c.m30291a(C2251d.C2256e.f8531E3), uri), "text/html", null, "");
                            return;
                        } else if (b.m19426a() == C6900e.EnumC6901a.HTML) {
                            if (C2422o.m29851b(c)) {
                                a = m31123a(J0, c);
                                if (!C2422o.m29851b(a)) {
                                    a = c;
                                }
                                C2374t tVar3 = this.f8033b;
                                tVar3.m30044b("AdWebView", "Rendering WebView for HTML VAST ad with resourceContents: " + a);
                                E = gVar.m18957E();
                                loadDataWithBaseURL(E, a, "text/html", null, "");
                                return;
                            } else if (C2422o.m29851b(uri)) {
                                this.f8033b.m30044b("AdWebView", "Preparing to load HTML VAST ad resourceUri");
                                E2 = gVar.m18957E();
                                lVar = this.f8034c;
                                m31122a(uri, E2, J0, lVar);
                                return;
                            } else {
                                return;
                            }
                        } else if (b.m19426a() != C6900e.EnumC6901a.IFRAME) {
                            tVar2 = this.f8033b;
                            str2 = "Failed to render VAST companion ad of invalid type";
                            tVar2.m30039e("AdWebView", str2);
                            return;
                        } else if (C2422o.m29851b(uri)) {
                            this.f8033b.m30044b("AdWebView", "Preparing to load iFrame VAST ad resourceUri");
                            E2 = gVar.m18957E();
                            lVar = this.f8034c;
                            m31122a(uri, E2, J0, lVar);
                            return;
                        } else if (C2422o.m29851b(c)) {
                            a = m31123a(J0, c);
                            if (!C2422o.m29851b(a)) {
                                a = c;
                            }
                            C2374t tVar4 = this.f8033b;
                            tVar4.m30044b("AdWebView", "Rendering WebView for iFrame VAST ad with resourceContents: " + a);
                            E = gVar.m18957E();
                            loadDataWithBaseURL(E, a, "text/html", null, "");
                            return;
                        } else {
                            return;
                        }
                    } else {
                        tVar = this.f8033b;
                        str = "No companion ad provided.";
                    }
                } else {
                    return;
                }
                tVar.m30044b("AdWebView", str);
            } catch (Throwable th) {
                String valueOf = gVar != null ? String.valueOf(gVar.getAdIdNumber()) : "null";
                throw new RuntimeException("Unable to render AppLovin ad (" + valueOf + ") - " + th);
            }
        } else {
            C2374t.m30034j("AdWebView", "Ad can not be loaded in a destroyed webview");
        }
    }

    /* renamed from: a */
    public void m31125a(String str) {
        m31124a(str, (Runnable) null);
    }

    /* renamed from: a */
    public void m31124a(String str, Runnable runnable) {
        try {
            C2374t tVar = this.f8033b;
            tVar.m30044b("AdWebView", "Forwarding \"" + str + "\" to ad template");
            loadUrl(str);
        } catch (Throwable th) {
            this.f8033b.m30043b("AdWebView", "Unable to forward to template", th);
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    /* renamed from: a */
    public final void m31122a(String str, String str2, String str3, C2341l lVar) {
        String a = m31123a(str3, str);
        if (C2422o.m29851b(a)) {
            C2374t tVar = this.f8033b;
            tVar.m30044b("AdWebView", "Rendering webview for VAST ad with resourceContents : " + a);
            loadDataWithBaseURL(str2, a, "text/html", null, "");
            return;
        }
        String a2 = m31123a((String) lVar.m30291a(C2251d.C2256e.f8536F3), str);
        if (C2422o.m29851b(a2)) {
            C2374t tVar2 = this.f8033b;
            tVar2.m30044b("AdWebView", "Rendering webview for VAST ad with resourceContents : " + a2);
            loadDataWithBaseURL(str2, a2, "text/html", null, "");
            return;
        }
        C2374t tVar3 = this.f8033b;
        tVar3.m30044b("AdWebView", "Rendering webview for VAST ad with resourceURL : " + str);
        loadUrl(str);
    }

    /* renamed from: a */
    public boolean m31131a() {
        return this.f8039h;
    }

    /* renamed from: b */
    public final void m31118b(AbstractC7036g gVar) {
        Boolean n;
        Integer a;
        if (((Boolean) this.f8034c.m30291a(C2251d.C2256e.f8611U3)).booleanValue() || gVar.m18959D()) {
            loadUrl("about:blank");
        }
        if (C2388g.m29973b()) {
            getSettings().setMediaPlaybackRequiresUserGesture(gVar.m18961C());
        }
        if (C2388g.m29972c() && gVar.m18955F()) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        C2112s G = gVar.m18953G();
        if (G != null) {
            WebSettings settings = getSettings();
            WebSettings.PluginState b = G.m31040b();
            if (b != null) {
                settings.setPluginState(b);
            }
            Boolean c = G.m31039c();
            if (c != null) {
                settings.setAllowFileAccess(c.booleanValue());
            }
            Boolean d = G.m31038d();
            if (d != null) {
                settings.setLoadWithOverviewMode(d.booleanValue());
            }
            Boolean e = G.m31037e();
            if (e != null) {
                settings.setUseWideViewPort(e.booleanValue());
            }
            Boolean f = G.m31036f();
            if (f != null) {
                settings.setAllowContentAccess(f.booleanValue());
            }
            Boolean g = G.m31035g();
            if (g != null) {
                settings.setBuiltInZoomControls(g.booleanValue());
            }
            Boolean h = G.m31034h();
            if (h != null) {
                settings.setDisplayZoomControls(h.booleanValue());
            }
            Boolean i = G.m31033i();
            if (i != null) {
                settings.setSaveFormData(i.booleanValue());
            }
            Boolean j = G.m31032j();
            if (j != null) {
                settings.setGeolocationEnabled(j.booleanValue());
            }
            Boolean k = G.m31031k();
            if (k != null) {
                settings.setNeedInitialFocus(k.booleanValue());
            }
            Boolean l = G.m31030l();
            if (l != null) {
                settings.setAllowFileAccessFromFileURLs(l.booleanValue());
            }
            Boolean m = G.m31029m();
            if (m != null) {
                settings.setAllowUniversalAccessFromFileURLs(m.booleanValue());
            }
            if (C2388g.m29971d() && (a = G.m31041a()) != null) {
                settings.setMixedContentMode(a.intValue());
            }
            if (C2388g.m29970e() && (n = G.m31028n()) != null) {
                settings.setOffscreenPreRaster(n.booleanValue());
            }
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void computeScroll() {
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.f8037f = true;
        super.destroy();
    }

    public AbstractC7036g getCurrentAd() {
        return this.f8036e;
    }

    public C2262c getStatsManagerHelper() {
        return this.f8035d;
    }

    @Override // android.webkit.WebView, android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
    }

    public void setIsShownOutOfContext(boolean z) {
        this.f8038g = z;
    }

    public void setStatsManagerHelper(C2262c cVar) {
        this.f8035d = cVar;
    }
}
