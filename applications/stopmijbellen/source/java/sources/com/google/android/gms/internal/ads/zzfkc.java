package com.google.android.gms.internal.ads;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfkc.class */
public final class zzfkc {
    private final zzfkj zza;
    private final WebView zzb;
    private final List<zzfkk> zzc = new ArrayList();
    private final Map<String, zzfkk> zzd = new HashMap();
    private final String zze = "";
    private final String zzf;
    private final zzfkd zzg;

    private zzfkc(zzfkj zzfkjVar, WebView webView, String str, List<zzfkk> list, String str2, String str3, zzfkd zzfkdVar) {
        this.zza = zzfkjVar;
        this.zzb = webView;
        this.zzg = zzfkdVar;
        this.zzf = str2;
    }

    public static zzfkc zzb(zzfkj zzfkjVar, WebView webView, String str, String str2) {
        return new zzfkc(zzfkjVar, webView, null, null, str, "", zzfkd.HTML);
    }

    public static zzfkc zzc(zzfkj zzfkjVar, WebView webView, String str, String str2) {
        return new zzfkc(zzfkjVar, webView, null, null, str, "", zzfkd.JAVASCRIPT);
    }

    public final WebView zza() {
        return this.zzb;
    }

    public final zzfkd zzd() {
        return this.zzg;
    }

    public final zzfkj zze() {
        return this.zza;
    }

    public final String zzf() {
        return this.zzf;
    }

    public final String zzg() {
        return this.zze;
    }

    public final List<zzfkk> zzh() {
        return Collections.unmodifiableList(this.zzc);
    }

    public final Map<String, zzfkk> zzi() {
        return Collections.unmodifiableMap(this.zzd);
    }
}
