package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.util.Map;
@TargetApi(11)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/adu.class */
public final class adu extends adx {
    public adu(act actVar, dwi dwiVar, boolean z) {
        super(actVar, dwiVar, z);
    }

    @Override // com.google.android.gms.internal.ads.acs, android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return m13559a(webView, str, (Map<String, String>) null);
    }
}
