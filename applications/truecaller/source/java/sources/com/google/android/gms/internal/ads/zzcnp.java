package com.google.android.gms.internal.ads;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import java.io.File;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcnp.class */
public class zzcnp extends zzcms {
    public zzcnp(zzcml zzcmlVar, zzazb zzazbVar, boolean z) {
        super(zzcmlVar, zzazbVar, z);
    }

    public final WebResourceResponse zzM(WebView webView, String str, Map<String, String> map) {
        String str2;
        if (!(webView instanceof zzcml)) {
            zzcgt.zzi("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        zzcml zzcmlVar = (zzcml) webView;
        zzcdy zzcdyVar = this.zza;
        if (zzcdyVar != null) {
            zzcdyVar.zzf(str, map, 1);
        }
        if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
            Map<String, String> map2 = map;
            if (map == null) {
                map2 = Collections.emptyMap();
            }
            return super.zzA(str, map2);
        }
        if (zzcmlVar.zzR() != null) {
            zzcmlVar.zzR().zzC();
        }
        if (zzcmlVar.zzP().zzg()) {
            str2 = (String) zzbet.zzc().zzc(zzbjl.zzJ);
        } else if (zzcmlVar.zzW()) {
            str2 = (String) zzbet.zzc().zzc(zzbjl.zzI);
        } else {
            str2 = (String) zzbet.zzc().zzc(zzbjl.zzH);
        }
        zzt.zzc();
        return zzs.zzB(zzcmlVar.getContext(), zzcmlVar.zzt().zza, str2);
    }
}
