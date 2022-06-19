package com.google.android.gms.internal.ads;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbfg.class */
public final class zzbfg extends zzbff {
    public zzbfg(zzbeb zzbebVar, zztu zztuVar, boolean z) {
        super(zzbebVar, zztuVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzbee, android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zza(webView, str, (Map<String, String>) null);
    }
}
