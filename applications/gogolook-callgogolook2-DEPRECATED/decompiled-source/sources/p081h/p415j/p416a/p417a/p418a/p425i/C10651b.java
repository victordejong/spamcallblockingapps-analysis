package p081h.p415j.p416a.p417a.p418a.p425i;

import android.annotation.SuppressLint;
import android.webkit.WebView;
/* renamed from: h.j.a.a.a.i.b */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/i/b.class */
public class C10651b extends AbstractC10649a {
    @SuppressLint({"SetJavaScriptEnabled"})
    public C10651b(WebView webView) {
        if (webView != null && !webView.getSettings().getJavaScriptEnabled()) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
        m11071a(webView);
    }
}
