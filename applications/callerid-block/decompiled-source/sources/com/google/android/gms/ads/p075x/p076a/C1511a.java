package com.google.android.gms.ads.p075x.p076a;

import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.C1357e;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.p077y.C1522b;
import java.util.UUID;
/* renamed from: com.google.android.gms.ads.x.a.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/x/a/a.class */
final class C1511a {

    /* renamed from: a */
    private final Context f5739a;

    /* renamed from: b */
    private final WebView f5740b;

    C1511a(WebView webView) {
        this.f5740b = webView;
        this.f5739a = webView.getContext();
    }

    @JavascriptInterface
    @TargetApi(21)
    public String getQueryInfo() {
        C1407r.m8920d();
        String uuid = UUID.randomUUID().toString();
        C1522b.m8523a(this.f5739a, AdFormat.BANNER, new C1357e.C1358a().m9028c(), new e(this, uuid));
        return uuid;
    }
}
