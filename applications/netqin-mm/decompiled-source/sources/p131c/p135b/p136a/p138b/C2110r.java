package p131c.p135b.p136a.p138b;

import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.lang.ref.WeakReference;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
/* renamed from: c.b.a.b.r */
/* loaded from: classes-dex2jar.jar:c/b/a/b/r.class */
public class C2110r extends WebViewClient {

    /* renamed from: a */
    public final C2374t f8116a;

    /* renamed from: b */
    public WeakReference<AbstractC2111a> f8117b;

    /* renamed from: c.b.a.b.r$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/r$a.class */
    public interface AbstractC2111a {
        /* renamed from: a */
        void mo19223a(C2109q qVar);

        /* renamed from: b */
        void mo19222b(C2109q qVar);

        /* renamed from: c */
        void mo19221c(C2109q qVar);
    }

    public C2110r(C2341l lVar) {
        this.f8116a = lVar.m30262d0();
    }

    /* renamed from: a */
    public final void m31043a(WebView webView, String str) {
        C2374t tVar = this.f8116a;
        tVar.m30042c("WebViewButtonClient", "Processing click on ad URL \"" + str + "\"");
        if (str != null && (webView instanceof C2109q)) {
            C2109q qVar = (C2109q) webView;
            Uri parse = Uri.parse(str);
            String scheme = parse.getScheme();
            String host = parse.getHost();
            String path = parse.getPath();
            AbstractC2111a aVar = this.f8117b.get();
            if ("applovin".equalsIgnoreCase(scheme) && "com.applovin.sdk".equalsIgnoreCase(host) && aVar != null) {
                if ("/track_click".equals(path)) {
                    aVar.mo19221c(qVar);
                } else if ("/close_ad".equals(path)) {
                    aVar.mo19222b(qVar);
                } else if ("/skip_ad".equals(path)) {
                    aVar.mo19223a(qVar);
                } else {
                    C2374t tVar2 = this.f8116a;
                    tVar2.m30040d("WebViewButtonClient", "Unknown URL: " + str);
                    C2374t tVar3 = this.f8116a;
                    tVar3.m30040d("WebViewButtonClient", "Path: " + path);
                }
            }
        }
    }

    /* renamed from: a */
    public void m31042a(WeakReference<AbstractC2111a> weakReference) {
        this.f8117b = weakReference;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        m31043a(webView, str);
        return true;
    }
}
