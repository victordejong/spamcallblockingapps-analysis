package com.google.android.gms.internal.ads;

import android.webkit.WebView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rr1.class */
public final class rr1 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ WebView f8399b;

    /* renamed from: c */
    final /* synthetic */ String f8400c;

    public rr1(sr1 sr1Var, WebView webView, String str) {
        this.f8399b = webView;
        this.f8400c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8399b.loadUrl(this.f8400c);
    }
}
