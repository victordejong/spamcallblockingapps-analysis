package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
@TargetApi(11)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpr.class */
public final class zzcpr extends zzcps {
    public zzcpr(zzcop zzcopVar, zzbay zzbayVar, boolean z) {
        super(zzcopVar, zzbayVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzcow, android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zzM(webView, str, null);
    }
}
