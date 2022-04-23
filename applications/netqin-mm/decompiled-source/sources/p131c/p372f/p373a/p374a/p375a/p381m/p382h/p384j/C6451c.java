package p131c.p372f.p373a.p374a.p375a.p381m.p382h.p384j;

import android.webkit.WebView;
import android.webkit.WebViewClient;
/* renamed from: c.f.a.a.a.m.h.j.c */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/m/h/j/c.class */
public class C6451c extends WebViewClient {

    /* renamed from: a */
    public AbstractC6452a f20141a;

    /* renamed from: c.f.a.a.a.m.h.j.c$a */
    /* loaded from: classes2-dex2jar.jar:c/f/a/a/a/m/h/j/c$a.class */
    public interface AbstractC6452a {
        void webViewDidLoadData();
    }

    /* renamed from: a */
    public void m20848a(AbstractC6452a aVar) {
        this.f20141a = aVar;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        AbstractC6452a aVar = this.f20141a;
        if (aVar != null) {
            aVar.webViewDidLoadData();
        }
    }
}
