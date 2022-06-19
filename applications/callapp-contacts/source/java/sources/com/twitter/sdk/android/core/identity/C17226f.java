package com.twitter.sdk.android.core.identity;

import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.twitter.sdk.android.core.internal.p485a.C17242f;
import java.net.URI;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: com.twitter.sdk.android.core.identity.f */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/f.class */
final class C17226f extends WebViewClient {

    /* renamed from: a */
    private final String f60971a;

    /* renamed from: b */
    private final AbstractC17227a f60972b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.twitter.sdk.android.core.identity.f$a */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/identity/f$a.class */
    public interface AbstractC17227a {
        /* renamed from: a */
        void mo5697a(Bundle bundle);

        /* renamed from: a */
        void mo5696a(WebView webView);

        /* renamed from: a */
        void mo5695a(C17232i c17232i);
    }

    public C17226f(String str, AbstractC17227a abstractC17227a) {
        this.f60971a = str;
        this.f60972b = abstractC17227a;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.f60972b.mo5696a(webView);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        this.f60972b.mo5695a(new C17232i(i, str, str2));
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        this.f60972b.mo5695a(new C17232i(sslError.getPrimaryError(), null, null));
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str.startsWith(this.f60971a)) {
            TreeMap<String, String> m5679a = C17242f.m5679a(URI.create(str), false);
            Bundle bundle = new Bundle(m5679a.size());
            for (Map.Entry<String, String> entry : m5679a.entrySet()) {
                bundle.putString(entry.getKey(), entry.getValue());
            }
            this.f60972b.mo5697a(bundle);
            return true;
        }
        return super.shouldOverrideUrlLoading(webView, str);
    }
}
