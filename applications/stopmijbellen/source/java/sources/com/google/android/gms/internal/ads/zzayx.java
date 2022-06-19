package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
import android.webkit.WebView;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayx.class */
public final class zzayx implements Runnable {
    public final ValueCallback<String> zza = new zzayw(this);
    public final /* synthetic */ zzayp zzb;
    public final /* synthetic */ WebView zzc;
    public final /* synthetic */ boolean zzd;
    public final /* synthetic */ zzayz zze;

    public zzayx(zzayz zzayzVar, zzayp zzaypVar, WebView webView, boolean z) {
        this.zze = zzayzVar;
        this.zzb = zzaypVar;
        this.zzc = webView;
        this.zzd = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzc.getSettings().getJavaScriptEnabled()) {
            try {
                this.zzc.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.zza);
            } catch (Throwable th) {
                ((zzayw) this.zza).onReceiveValue("");
            }
        }
    }
}
