package com.google.android.gms.internal.ads;

import android.webkit.WebView;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfle.class */
final class zzfle implements Runnable {
    public final /* synthetic */ zzflf zza;
    private final WebView zzb;

    public zzfle(zzflf zzflfVar) {
        WebView webView;
        this.zza = zzflfVar;
        webView = zzflfVar.zza;
        this.zzb = webView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.destroy();
    }
}
