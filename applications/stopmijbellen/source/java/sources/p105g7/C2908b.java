package p105g7;

import android.annotation.SuppressLint;
import android.webkit.WebView;
import p094f7.C2767b;
/* renamed from: g7.b */
/* loaded from: classes-dex2jar.jar:g7/b.class */
public class C2908b extends AbstractC2907a {
    @SuppressLint({"SetJavaScriptEnabled"})
    public C2908b(WebView webView) {
        if (webView != null && !webView.getSettings().getJavaScriptEnabled()) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
        this.f9802a = new C2767b(webView);
    }
}
