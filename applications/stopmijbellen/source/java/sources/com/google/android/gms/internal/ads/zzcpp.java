package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.JavascriptInterface;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzt;
import com.google.android.gms.internal.ads.zzcpq;
import com.google.android.gms.internal.ads.zzcpx;
import com.google.android.gms.internal.ads.zzcpz;
@TargetApi(17)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpp.class */
public final class zzcpp<WebViewT extends zzcpq & zzcpx & zzcpz> {
    private final WebViewT zza;
    private final zzcpn zzb;

    /* JADX WARN: Multi-variable type inference failed */
    public zzcpp(zzcpq zzcpqVar, WebViewT webviewt, zzcpn zzcpnVar) {
        this.zzb = webviewt;
        this.zza = zzcpqVar;
    }

    @JavascriptInterface
    public String getClickSignals(String str) {
        if (TextUtils.isEmpty(str)) {
            zze.zza("Click string is empty, not proceeding.");
            return "";
        }
        zzalt zzK = this.zza.zzK();
        if (zzK == null) {
            zze.zza("Signal utils is empty, ignoring.");
            return "";
        }
        zzalp zzc = zzK.zzc();
        if (zzc == null) {
            zze.zza("Signals object is empty, ignoring.");
            return "";
        } else if (this.zza.getContext() == null) {
            zze.zza("Context is null, ignoring.");
            return "";
        } else {
            Context context = this.zza.getContext();
            WebViewT webviewt = this.zza;
            return zzc.zzf(context, str, (View) webviewt, webviewt.zzk());
        }
    }

    @JavascriptInterface
    public void notify(final String str) {
        if (TextUtils.isEmpty(str)) {
            zzciz.zzj("URL is empty, ignoring message");
        } else {
            zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcpo
                @Override // java.lang.Runnable
                public final void run() {
                    zzcpp.this.zza(str);
                }
            });
        }
    }

    public final /* synthetic */ void zza(String str) {
        zzcpn zzcpnVar = this.zzb;
        Uri parse = Uri.parse(str);
        zzcow zzaL = ((zzcpi) zzcpnVar.zza).zzaL();
        if (zzaL == null) {
            zzciz.zzg("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
        } else {
            zzaL.zzi(parse);
        }
    }
}
