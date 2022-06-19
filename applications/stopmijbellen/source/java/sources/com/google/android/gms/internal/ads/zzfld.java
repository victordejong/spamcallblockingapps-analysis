package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.webkit.WebView;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfld.class */
public final class zzfld extends zzflc {
    @SuppressLint({"SetJavaScriptEnabled"})
    public zzfld(WebView webView) {
        if (!webView.getSettings().getJavaScriptEnabled()) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
        zzi(webView);
    }
}
