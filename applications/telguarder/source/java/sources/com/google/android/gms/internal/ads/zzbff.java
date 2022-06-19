package com.google.android.gms.internal.ads;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.io.File;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbff.class */
public class zzbff extends zzbee {
    public zzbff(zzbeb zzbebVar, zztu zztuVar, boolean z) {
        super(zzbebVar, zztuVar, z);
    }

    public final WebResourceResponse zza(WebView webView, String str, Map<String, String> map) {
        String str2;
        if (!(webView instanceof zzbeb)) {
            zzd.zzex("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        zzbeb zzbebVar = (zzbeb) webView;
        if (this.zzerf != null) {
            this.zzerf.zza(str, map, 1);
        }
        if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
            Map<String, String> map2 = map;
            if (map == null) {
                map2 = Collections.emptyMap();
            }
            return super.zzc(str, map2);
        }
        if (zzbebVar.zzacx() != null) {
            zzbebVar.zzacx().zzvx();
        }
        if (zzbebVar.zzacv().zzaeo()) {
            str2 = (String) zzwr.zzqr().zzd(zzabp.zzcnr);
        } else if (zzbebVar.zzadc()) {
            str2 = (String) zzwr.zzqr().zzd(zzabp.zzcnq);
        } else {
            str2 = (String) zzwr.zzqr().zzd(zzabp.zzcnp);
        }
        zzr.zzkr();
        return zzj.zzd(zzbebVar.getContext(), zzbebVar.zzabj().zzbrp, str2);
    }
}
