package com.twitter.sdk.android.core.identity;

import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.net.URI;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/f.class */
final class f extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    private final String f35124a;

    /* renamed from: b  reason: collision with root package name */
    private final a f35125b;

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/f$a.class */
    interface a {
        void a(Bundle bundle);

        void a(WebView webView);

        void a(i iVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(String str, a aVar) {
        this.f35124a = str;
        this.f35125b = aVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.f35125b.a(webView);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        this.f35125b.a(new i(i, str, str2));
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        this.f35125b.a(new i(sslError.getPrimaryError(), null, null));
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!str.startsWith(this.f35124a)) {
            return super.shouldOverrideUrlLoading(webView, str);
        }
        TreeMap<String, String> a2 = com.twitter.sdk.android.core.internal.a.f.a(URI.create(str), false);
        Bundle bundle = new Bundle(a2.size());
        for (Map.Entry<String, String> entry : a2.entrySet()) {
            bundle.putString(entry.getKey(), entry.getValue());
        }
        this.f35125b.a(bundle);
        return true;
    }
}
