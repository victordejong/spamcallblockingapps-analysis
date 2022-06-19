package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.webkit.WebView;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jq2.class */
public final class jq2 extends iq2 {
    @SuppressLint({"SetJavaScriptEnabled"})
    public jq2(WebView webView) {
        if (!webView.getSettings().getJavaScriptEnabled()) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
        m14304c(webView);
    }
}
