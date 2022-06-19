package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.p071h5.H5AdsRequestHandler;
import com.google.android.gms.ads.p071h5.OnH5AdsEventListener;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqv.class */
public final class zzbqv extends zzbqi {
    public static final /* synthetic */ int zza = 0;
    private WebViewClient zzb;
    private final H5AdsRequestHandler zzc;
    private final WebView zzd;

    public zzbqv(Context context, WebView webView) {
        Objects.requireNonNull(context);
        Objects.requireNonNull(webView);
        zzflx.zza(webView.getSettings().getJavaScriptEnabled(), "JavaScript must be enabled on the WebView.");
        this.zzd = webView;
        this.zzc = new H5AdsRequestHandler(context, new OnH5AdsEventListener(webView) { // from class: com.google.android.gms.internal.ads.zzbqu
            private final WebView zza;

            {
                this.zza = webView;
            }

            @Override // com.google.android.gms.ads.p071h5.OnH5AdsEventListener
            public final void onH5AdsEvent(String str) {
                WebView webView2 = this.zza;
                int i = zzbqv.zza;
                webView2.evaluateJavascript(str, null);
            }
        });
    }

    private final boolean zzc(WebView webView) {
        if (this.zzd.equals(webView)) {
            return true;
        }
        zzcgt.zzf("H5AdsWebViewClient must be attached to the same WebVew which was passed in the constructor.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbqi
    public final WebViewClient getDelegate() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbqi, android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        if (zzc(webView) && !this.zzc.handleH5AdsRequest(str)) {
            super.onLoadResource(webView, str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqi, android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        if (!zzc(this.zzd)) {
            return false;
        }
        if (!this.zzc.handleH5AdsRequest(webResourceRequest.getUrl().toString())) {
            return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbqi, android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!zzc(webView)) {
            return false;
        }
        if (!this.zzc.handleH5AdsRequest(str)) {
            return super.shouldOverrideUrlLoading(webView, str);
        }
        return true;
    }

    public final void zza() {
        this.zzc.clearAdObjects();
    }

    public final void zzb(WebViewClient webViewClient) {
        zzflx.zza(webViewClient != this, "Delegate cannot be itself.");
        this.zzb = webViewClient;
    }
}
