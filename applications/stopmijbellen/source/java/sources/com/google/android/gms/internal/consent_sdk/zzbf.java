package com.google.android.gms.internal.consent_sdk;

import android.annotation.TargetApi;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzbf.class */
public final class zzbf extends WebViewClient {
    public final /* synthetic */ zzbg zza;

    public /* synthetic */ zzbf(zzbg zzbgVar, zzbe zzbeVar) {
        this.zza = zzbgVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        zzbm zzbmVar;
        if (zzbg.zzc(this.zza, str)) {
            zzbmVar = this.zza.zzb;
            zzbmVar.zzd(str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        boolean z;
        z = this.zza.zzc;
        if (!z) {
            this.zza.zzc = true;
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        zzbm zzbmVar;
        zzbmVar = this.zza.zzb;
        zzbmVar.zze(i, str, str2);
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(24)
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        zzbm zzbmVar;
        String uri = webResourceRequest.getUrl().toString();
        if (zzbg.zzc(this.zza, uri)) {
            zzbmVar = this.zza.zzb;
            zzbmVar.zzd(uri);
            return true;
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        zzbm zzbmVar;
        if (zzbg.zzc(this.zza, str)) {
            zzbmVar = this.zza.zzb;
            zzbmVar.zzd(str);
            return true;
        }
        return false;
    }
}
