package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
@TargetApi(21)
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ap0.class */
public final class ap0 extends zo0 {
    public ap0(wn0 wn0Var, C6854pm c6854pm, boolean z) {
        super(wn0Var, c6854pm, z);
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest == null || webResourceRequest.getUrl() == null) {
            return null;
        }
        return m8311P0(webView, webResourceRequest.getUrl().toString(), webResourceRequest.getRequestHeaders());
    }
}
