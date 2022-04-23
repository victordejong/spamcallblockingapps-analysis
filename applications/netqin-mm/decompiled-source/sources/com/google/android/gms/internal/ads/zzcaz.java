package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.graphics.Bitmap;
import android.view.View;
import android.webkit.WebView;
import com.android.volley.Request;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcaz.class */
public final class zzcaz implements zzsu {

    /* renamed from: a */
    public zzdvp f25661a;

    @Override // com.google.android.gms.internal.ads.zzsu
    /* renamed from: a */
    public final void mo11461a(Activity activity, WebView webView) {
        try {
            this.f25661a = new zzdvp(activity, webView);
        } catch (RuntimeException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 46);
            sb.append(" Failed to initialize the internal ArWebView: ");
            sb.append(valueOf);
            zzbbq.m15856b(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    /* renamed from: a */
    public final void mo11460a(WebView webView, String str, Bitmap bitmap) {
        if (this.f25661a != null) {
            zzdvp.m13105a(webView, str, bitmap);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    /* renamed from: a */
    public final void mo11459a(String str, String str2) {
        if (this.f25661a == null) {
            zzbbq.m15856b("ArWebView is not initialized.");
        } else {
            zzdvp.getWebView().loadDataWithBaseURL(str, str2, "text/html", Request.DEFAULT_PARAMS_ENCODING, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    public final View getView() {
        return this.f25661a;
    }

    @Override // com.google.android.gms.internal.ads.zzsu
    public final WebView getWebView() {
        if (this.f25661a == null) {
            return null;
        }
        return zzdvp.getWebView();
    }
}
