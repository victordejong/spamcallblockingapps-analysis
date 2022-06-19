package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
import android.webkit.WebView;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrr.class */
public final class zzrr implements Runnable {
    final /* synthetic */ zzrp zzbth;
    private ValueCallback<String> zzbtv = new zzrq(this);
    final /* synthetic */ zzrj zzbtw;
    final /* synthetic */ WebView zzbtx;
    final /* synthetic */ boolean zzbty;

    public zzrr(zzrp zzrpVar, zzrj zzrjVar, WebView webView, boolean z) {
        this.zzbth = zzrpVar;
        this.zzbtw = zzrjVar;
        this.zzbtx = webView;
        this.zzbty = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzbtx.getSettings().getJavaScriptEnabled()) {
            try {
                this.zzbtx.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.zzbtv);
            } catch (Throwable th) {
                this.zzbtv.onReceiveValue("");
            }
        }
    }
}
