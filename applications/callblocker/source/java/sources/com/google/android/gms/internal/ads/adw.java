package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
@TargetApi(21)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/adw.class */
public final class adw extends adx {
    public adw(act actVar, dwi dwiVar, boolean z) {
        super(actVar, dwiVar, z);
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        return (webResourceRequest == null || webResourceRequest.getUrl() == null) ? null : m13559a(webView, webResourceRequest.getUrl().toString(), webResourceRequest.getRequestHeaders());
    }
}
