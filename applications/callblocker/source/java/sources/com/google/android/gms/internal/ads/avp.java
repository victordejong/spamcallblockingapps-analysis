package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.graphics.Bitmap;
import android.view.View;
import android.webkit.WebView;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/avp.class */
public final class avp implements dvk {

    /* renamed from: a */
    private coa f10421a;

    @Override // com.google.android.gms.internal.ads.dvk
    /* renamed from: a */
    public final WebView mo8508a() {
        return this.f10421a == null ? null : coa.getWebView();
    }

    @Override // com.google.android.gms.internal.ads.dvk
    /* renamed from: a */
    public final void mo8507a(Activity activity, WebView webView) {
        try {
            this.f10421a = new coa(activity, webView);
        } catch (RuntimeException e) {
            String valueOf = String.valueOf(e);
            C3556uu.m6749c(new StringBuilder(String.valueOf(valueOf).length() + 46).append(" Failed to initialize the internal ArWebView: ").append(valueOf).toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.dvk
    /* renamed from: a */
    public final void mo8506a(WebView webView, String str, Bitmap bitmap) {
        if (this.f10421a != null) {
            coa.m10949a(webView, str, bitmap);
        }
    }

    @Override // com.google.android.gms.internal.ads.dvk
    /* renamed from: a */
    public final void mo8505a(String str, String str2) {
        if (this.f10421a == null) {
            C3556uu.m6749c("ArWebView is not initialized.");
        } else {
            coa.getWebView().loadDataWithBaseURL(str, str2, "text/html", "UTF-8", null);
        }
    }

    @Override // com.google.android.gms.internal.ads.dvk
    /* renamed from: b */
    public final View mo8504b() {
        return this.f10421a;
    }
}
