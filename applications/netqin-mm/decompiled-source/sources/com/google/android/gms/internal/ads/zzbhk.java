package com.google.android.gms.internal.ads;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhk.class */
public final class zzbhk extends zzbhn {
    public zzbhk(zzbgj zzbgjVar, zzts zztsVar, boolean z) {
        super(zzbgjVar, zztsVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzbgi, android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return m15525a(webView, str, (Map<String, String>) null);
    }
}
