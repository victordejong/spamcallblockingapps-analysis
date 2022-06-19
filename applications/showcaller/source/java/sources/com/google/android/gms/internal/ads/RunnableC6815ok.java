package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
import android.webkit.WebView;
/* renamed from: com.google.android.gms.internal.ads.ok */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ok.class */
public final class RunnableC6815ok implements Runnable {

    /* renamed from: d */
    final ValueCallback<String> f27581d = new C6741mk(this);

    /* renamed from: e */
    final /* synthetic */ C6481fk f27582e;

    /* renamed from: f */
    final /* synthetic */ WebView f27583f;

    /* renamed from: g */
    final /* synthetic */ boolean f27584g;

    /* renamed from: h */
    final /* synthetic */ C6889qk f27585h;

    public RunnableC6815ok(C6889qk c6889qk, C6481fk c6481fk, WebView webView, boolean z) {
        this.f27585h = c6889qk;
        this.f27582e = c6481fk;
        this.f27583f = webView;
        this.f27584g = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f27583f.getSettings().getJavaScriptEnabled()) {
            try {
                this.f27583f.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.f27581d);
            } catch (Throwable th) {
                ((C6741mk) this.f27581d).onReceiveValue("");
            }
        }
    }
}
