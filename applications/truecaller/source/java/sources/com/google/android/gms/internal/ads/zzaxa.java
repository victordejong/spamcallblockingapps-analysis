package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
import android.webkit.WebView;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxa.class */
public final class zzaxa implements Runnable {
    public final ValueCallback<String> zza = new zzawz(this);
    public final /* synthetic */ zzaws zzb;
    public final /* synthetic */ WebView zzc;
    public final /* synthetic */ boolean zzd;
    public final /* synthetic */ zzaxc zze;

    public zzaxa(zzaxc zzaxcVar, zzaws zzawsVar, WebView webView, boolean z) {
        this.zze = zzaxcVar;
        this.zzb = zzawsVar;
        this.zzc = webView;
        this.zzd = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzc.getSettings().getJavaScriptEnabled()) {
            try {
                this.zzc.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.zza);
            } catch (Throwable th) {
                ((zzawz) this.zza).onReceiveValue("");
            }
        }
    }
}
