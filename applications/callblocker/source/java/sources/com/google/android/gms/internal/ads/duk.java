package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
import android.webkit.WebView;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/duk.class */
public final class duk implements Runnable {

    /* renamed from: a */
    final /* synthetic */ duc f15807a;

    /* renamed from: b */
    final /* synthetic */ WebView f15808b;

    /* renamed from: c */
    final /* synthetic */ boolean f15809c;

    /* renamed from: d */
    final /* synthetic */ dui f15810d;

    /* renamed from: e */
    private ValueCallback<String> f15811e = new dun(this);

    public duk(dui duiVar, duc ducVar, WebView webView, boolean z) {
        this.f15810d = duiVar;
        this.f15807a = ducVar;
        this.f15808b = webView;
        this.f15809c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f15808b.getSettings().getJavaScriptEnabled()) {
            try {
                this.f15808b.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.f15811e);
            } catch (Throwable th) {
                this.f15811e.onReceiveValue("");
            }
        }
    }
}
