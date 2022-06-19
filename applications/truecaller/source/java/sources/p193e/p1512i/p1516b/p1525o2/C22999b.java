package p193e.p1512i.p1516b.p1525o2;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.tenor.android.core.constant.StringConstant;
import java.lang.ref.Reference;
import p193e.p1512i.p1516b.AbstractRunnableC22929c3;
import p193e.p1512i.p1516b.p1531s2.C23088k;
import p193e.p1512i.p1516b.p1533u2.C23132x;
/* renamed from: e.i.b.o2.b */
/* loaded from: classes-dex2jar.jar:e/i/b/o2/b.class */
public class C22999b extends AbstractRunnableC22929c3 {

    /* renamed from: c */
    public final Reference<? extends WebView> f63739c;

    /* renamed from: d */
    public final C23132x f63740d;

    /* renamed from: e */
    public final WebViewClient f63741e;

    /* renamed from: f */
    public final String f63742f;

    public C22999b(Reference<? extends WebView> reference, WebViewClient webViewClient, C23132x c23132x, String str) {
        this.f63739c = reference;
        this.f63741e = webViewClient;
        this.f63740d = c23132x;
        this.f63742f = str;
    }

    @Override // p193e.p1512i.p1516b.AbstractRunnableC22929c3
    /* renamed from: a */
    public void mo7379a() {
        WebView webView = this.f63739c.get();
        if (webView != null) {
            String replace = ((String) C23088k.m7561a(this.f63740d.f64080b.mo7514e(), "<html><body style='text-align:center; margin:0px; padding:0px; horizontal-align:center;'><script src=\"%%displayUrl%%\"></script></body></html>")).replace((String) C23088k.m7561a(this.f63740d.f64080b.mo7513f(), "%%displayUrl%%"), this.f63742f);
            webView.getSettings().setJavaScriptEnabled(true);
            webView.setWebViewClient(this.f63741e);
            webView.loadDataWithBaseURL("", replace, "text/html", StringConstant.UTF8, "");
        }
    }
}
