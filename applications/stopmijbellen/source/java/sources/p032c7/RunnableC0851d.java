package p032c7;

import android.webkit.WebView;
import p291y.C4951d;
/* renamed from: c7.d */
/* loaded from: classes-dex2jar.jar:c7/d.class */
public class RunnableC0851d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ WebView f3139a;

    /* renamed from: b */
    public final /* synthetic */ String f3140b;

    public RunnableC0851d(C4951d c4951d, WebView webView, String str) {
        this.f3139a = webView;
        this.f3140b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3139a.loadUrl(this.f3140b);
    }
}
