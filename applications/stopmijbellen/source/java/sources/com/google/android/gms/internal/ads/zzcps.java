package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.zzt;
import java.io.File;
import java.util.Collections;
import java.util.Map;
@TargetApi(11)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcps.class */
public class zzcps extends zzcow {
    public zzcps(zzcop zzcopVar, zzbay zzbayVar, boolean z) {
        super(zzcopVar, zzbayVar, z);
    }

    public final WebResourceResponse zzM(WebView webView, String str, Map<String, String> map) {
        String str2;
        if (!(webView instanceof zzcop)) {
            zzciz.zzj("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        zzcop zzcopVar = (zzcop) webView;
        zzcgf zzcgfVar = this.zza;
        if (zzcgfVar != null) {
            zzcgfVar.zzd(str, map, 1);
        }
        if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
            Map<String, String> map2 = map;
            if (map == null) {
                map2 = Collections.emptyMap();
            }
            return super.zzc(str, map2);
        }
        if (zzcopVar.zzP() != null) {
            zzcopVar.zzP().zzD();
        }
        if (zzcopVar.zzQ().zzi()) {
            str2 = (String) zzbgq.zzc().zzb(zzblj.zzJ);
        } else if (zzcopVar.zzaC()) {
            str2 = (String) zzbgq.zzc().zzb(zzblj.zzI);
        } else {
            str2 = (String) zzbgq.zzc().zzb(zzblj.zzH);
        }
        zzt.zzp();
        return com.google.android.gms.ads.internal.util.zzt.zzB(zzcopVar.getContext(), zzcopVar.zzp().zza, str2);
    }
}
