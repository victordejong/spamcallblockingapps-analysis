package com.google.android.gms.internal.consent_sdk;

import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Locale;
/* renamed from: com.google.android.gms.internal.consent_sdk.ag */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/ag.class */
public final class C13176ag extends WebViewClient {

    /* renamed from: a */
    private final /* synthetic */ zzbe f50294a;

    /* JADX INFO: Access modifiers changed from: private */
    public C13176ag(zzbe zzbeVar) {
        this.f50294a = zzbeVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        C13180ak c13180ak;
        if (zzbe.m13514a(str)) {
            c13180ak = this.f50294a.f50522b;
            c13180ak.m13580a(str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        boolean z;
        C13180ak unused;
        z = this.f50294a.f50523c;
        if (!z) {
            unused = this.f50294a.f50522b;
            this.f50294a.f50523c = true;
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        C13180ak c13180ak;
        c13180ak = this.f50294a.f50522b;
        c13180ak.f50300b.m13522a(new zzk(2, String.format(Locale.US, "WebResourceError(%d, %s): %s", Integer.valueOf(i), str2, str)));
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        C13180ak c13180ak;
        String uri = webResourceRequest.getUrl().toString();
        if (zzbe.m13514a(uri)) {
            c13180ak = this.f50294a.f50522b;
            c13180ak.m13580a(uri);
            return true;
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        C13180ak c13180ak;
        if (zzbe.m13514a(str)) {
            c13180ak = this.f50294a.f50522b;
            c13180ak.m13580a(str);
            return true;
        }
        return false;
    }
}
