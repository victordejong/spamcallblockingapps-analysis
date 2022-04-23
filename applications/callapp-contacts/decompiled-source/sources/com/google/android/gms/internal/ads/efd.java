package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
import android.webkit.WebView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efd.class */
public final class efd implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ eev f27767a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ WebView f27768b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ boolean f27769c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ efb f27770d;
    private ValueCallback<String> e = new efg(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    public efd(efb efbVar, eev eevVar, WebView webView, boolean z) {
        this.f27770d = efbVar;
        this.f27767a = eevVar;
        this.f27768b = webView;
        this.f27769c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f27768b.getSettings().getJavaScriptEnabled()) {
            try {
                this.f27768b.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.e);
            } catch (Throwable th) {
                this.e.onReceiveValue("");
            }
        }
    }
}
