package p131c.p135b.p136a.p138b;

import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.impl.sdk.p490c.C7042c;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p151e.C2261b;
/* renamed from: c.b.a.b.f */
/* loaded from: classes-dex2jar.jar:c/b/a/b/f.class */
public class C2079f {

    /* renamed from: a */
    public final C2341l f8050a;

    /* renamed from: b */
    public final WebViewRenderProcessClient f8051b = new C2080a();

    /* renamed from: c.b.a.b.f$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/f$a.class */
    public class C2080a extends WebViewRenderProcessClient {
        public C2080a() {
        }

        @Override // android.webkit.WebViewRenderProcessClient
        public void onRenderProcessResponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        }

        @Override // android.webkit.WebViewRenderProcessClient
        public void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
            if (webView instanceof C2070d) {
                AbstractC7036g currentAd = ((C2070d) webView).getCurrentAd();
                C7042c.C7047e a = C2079f.this.f8050a.m30237v().m18855a(currentAd);
                a.m18831a(C2261b.f8830G);
                a.m18832a();
                C2374t d0 = C2079f.this.f8050a.m30262d0();
                d0.m30039e("AdWebViewRenderProcessClient", "WebView render process unresponsive for ad: " + currentAd);
            }
        }
    }

    public C2079f(C2341l lVar) {
        this.f8050a = lVar;
    }

    /* renamed from: a */
    public WebViewRenderProcessClient m31107a() {
        return this.f8051b;
    }
}
