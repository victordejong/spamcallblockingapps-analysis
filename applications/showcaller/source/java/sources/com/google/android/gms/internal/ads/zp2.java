package com.google.android.gms.internal.ads;

import android.webkit.WebView;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zp2.class */
public final class zp2 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ WebView f33066d;

    /* renamed from: e */
    final /* synthetic */ String f33067e;

    public zp2(aq2 aq2Var, WebView webView, String str) {
        this.f33066d = webView;
        this.f33067e = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33066d.loadUrl(this.f33067e);
    }
}
