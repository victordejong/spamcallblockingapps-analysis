package com.google.android.gms.internal.ads;

import android.webkit.WebView;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfhg.class */
public final class zzfhg implements Runnable {
    public final /* synthetic */ zzfhh zza;
    private final WebView zzb;

    public zzfhg(zzfhh zzfhhVar) {
        WebView webView;
        this.zza = zzfhhVar;
        webView = zzfhhVar.zza;
        this.zzb = webView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.destroy();
    }
}
