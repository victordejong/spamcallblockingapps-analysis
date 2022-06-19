package com.google.android.gms.internal.ads;

import android.webkit.WebView;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kq2.class */
final class kq2 implements Runnable {

    /* renamed from: d */
    private final WebView f25296d;

    /* renamed from: e */
    final /* synthetic */ lq2 f25297e;

    public kq2(lq2 lq2Var) {
        WebView webView;
        this.f25297e = lq2Var;
        webView = lq2Var.f26226d;
        this.f25296d = webView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f25296d.destroy();
    }
}
