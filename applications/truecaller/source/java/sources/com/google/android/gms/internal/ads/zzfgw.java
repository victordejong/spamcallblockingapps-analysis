package com.google.android.gms.internal.ads;

import android.webkit.WebView;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfgw.class */
public final class zzfgw implements Runnable {
    public final /* synthetic */ WebView zza;
    public final /* synthetic */ String zzb;

    public zzfgw(zzfgx zzfgxVar, WebView webView, String str) {
        this.zza = webView;
        this.zzb = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.loadUrl(this.zzb);
    }
}
