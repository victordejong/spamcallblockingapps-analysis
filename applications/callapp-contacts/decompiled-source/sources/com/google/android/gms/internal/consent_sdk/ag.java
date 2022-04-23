package com.google.android.gms.internal.consent_sdk;

import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/ag.class */
public final class ag extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zzbe f28694a;

    private ag(zzbe zzbeVar) {
        this.f28694a = zzbeVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        ak akVar;
        if (zzbe.a(str)) {
            akVar = this.f28694a.f28862b;
            akVar.a(str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        boolean z;
        ak unused;
        z = this.f28694a.f28863c;
        if (!z) {
            unused = this.f28694a.f28862b;
            this.f28694a.f28863c = true;
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        ak akVar;
        akVar = this.f28694a.f28862b;
        akVar.f28700b.a(new zzk(2, String.format(Locale.US, "WebResourceError(%d, %s): %s", Integer.valueOf(i), str2, str)));
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        ak akVar;
        String uri = webResourceRequest.getUrl().toString();
        if (!zzbe.a(uri)) {
            return false;
        }
        akVar = this.f28694a.f28862b;
        akVar.a(uri);
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        ak akVar;
        if (!zzbe.a(str)) {
            return false;
        }
        akVar = this.f28694a.f28862b;
        akVar.a(str);
        return true;
    }
}
