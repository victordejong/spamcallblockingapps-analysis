package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
import android.webkit.WebView;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vt2.class */
public final class vt2 implements Runnable {

    /* renamed from: b */
    final ValueCallback<String> f8954b = new ut2(this);

    /* renamed from: c */
    final /* synthetic */ mt2 f8955c;

    /* renamed from: d */
    final /* synthetic */ WebView f8956d;

    /* renamed from: e */
    final /* synthetic */ boolean f8957e;

    /* renamed from: f */
    final /* synthetic */ xt2 f8958f;

    public vt2(xt2 xt2Var, mt2 mt2Var, WebView webView, boolean z) {
        this.f8958f = xt2Var;
        this.f8955c = mt2Var;
        this.f8956d = webView;
        this.f8957e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f8956d.getSettings().getJavaScriptEnabled()) {
            try {
                this.f8956d.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.f8954b);
            } catch (Throwable th) {
                ((ut2) this.f8954b).onReceiveValue("");
            }
        }
    }
}
