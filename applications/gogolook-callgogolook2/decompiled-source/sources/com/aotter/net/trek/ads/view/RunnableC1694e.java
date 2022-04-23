package com.aotter.net.trek.ads.view;
/* renamed from: com.aotter.net.trek.ads.view.e */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/e.class */
public class RunnableC1694e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ InterActiveWebView f1381a;

    public RunnableC1694e(InterActiveWebView interActiveWebView) {
        this.f1381a = interActiveWebView;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        z = this.f1381a.f1277p;
        if (z) {
            this.f1381a.f1277p = false;
            this.f1381a.loadUrl("javascript:window.WebViewBridge.emit('third_party_imp')");
        }
    }
}
