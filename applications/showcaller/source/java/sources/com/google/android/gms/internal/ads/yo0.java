package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
@TargetApi(11)
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yo0.class */
public final class yo0 extends zo0 {
    public yo0(wn0 wn0Var, C6854pm c6854pm, boolean z) {
        super(wn0Var, c6854pm, z);
    }

    @Override // com.google.android.gms.internal.ads.do0, android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return m8311P0(webView, str, null);
    }
}
