package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
import android.webkit.WebView;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efd.class */
public final class efd implements Runnable {

    /* renamed from: a */
    final /* synthetic */ eev f48946a;

    /* renamed from: b */
    final /* synthetic */ WebView f48947b;

    /* renamed from: c */
    final /* synthetic */ boolean f48948c;

    /* renamed from: d */
    final /* synthetic */ efb f48949d;

    /* renamed from: e */
    private ValueCallback<String> f48950e = new efg(this);

    public efd(efb efbVar, eev eevVar, WebView webView, boolean z) {
        this.f48949d = efbVar;
        this.f48946a = eevVar;
        this.f48947b = webView;
        this.f48948c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f48947b.getSettings().getJavaScriptEnabled()) {
            try {
                this.f48947b.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.f48950e);
            } catch (Throwable th) {
                this.f48950e.onReceiveValue("");
            }
        }
    }
}
