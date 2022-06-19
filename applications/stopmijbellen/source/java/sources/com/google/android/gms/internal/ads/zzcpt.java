package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
@TargetApi(21)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpt.class */
public final class zzcpt extends zzcps {
    public zzcpt(zzcop zzcopVar, zzbay zzbayVar, boolean z) {
        super(zzcopVar, zzbayVar, z);
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest == null || webResourceRequest.getUrl() == null) {
            return null;
        }
        return zzM(webView, webResourceRequest.getUrl().toString(), webResourceRequest.getRequestHeaders());
    }
}
