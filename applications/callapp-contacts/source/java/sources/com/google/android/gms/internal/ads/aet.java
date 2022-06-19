package com.google.android.gms.internal.ads;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aet.class */
public final class aet extends aew {
    public aet(adt adtVar, ehk ehkVar, boolean z) {
        super(adtVar, ehkVar, z);
    }

    @Override // com.google.android.gms.internal.ads.C12170ads, android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return m18801a(webView, str, (Map<String, String>) null);
    }
}
