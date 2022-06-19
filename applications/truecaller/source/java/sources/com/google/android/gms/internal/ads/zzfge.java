package com.google.android.gms.internal.ads;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfge.class */
public final class zzfge {
    private final zzfgl zza;
    private final WebView zzb;
    private final List<zzfgm> zzc = new ArrayList();
    private final Map<String, zzfgm> zzd = new HashMap();
    private final String zze = "";
    private final String zzf;
    private final zzfgf zzg;

    private zzfge(zzfgl zzfglVar, WebView webView, String str, List<zzfgm> list, String str2, String str3, zzfgf zzfgfVar) {
        this.zza = zzfglVar;
        this.zzb = webView;
        this.zzg = zzfgfVar;
        this.zzf = str2;
    }

    public static zzfge zza(zzfgl zzfglVar, WebView webView, String str, String str2) {
        return new zzfge(zzfglVar, webView, null, null, str, "", zzfgf.HTML);
    }

    public static zzfge zzb(zzfgl zzfglVar, WebView webView, String str, String str2) {
        return new zzfge(zzfglVar, webView, null, null, str, "", zzfgf.JAVASCRIPT);
    }

    public final zzfgl zzc() {
        return this.zza;
    }

    public final List<zzfgm> zzd() {
        return Collections.unmodifiableList(this.zzc);
    }

    public final Map<String, zzfgm> zze() {
        return Collections.unmodifiableMap(this.zzd);
    }

    public final WebView zzf() {
        return this.zzb;
    }

    public final String zzg() {
        return this.zzf;
    }

    public final String zzh() {
        return this.zze;
    }

    public final zzfgf zzi() {
        return this.zzg;
    }
}
