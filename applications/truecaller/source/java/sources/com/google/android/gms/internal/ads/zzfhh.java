package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.text.TextUtils;
import android.webkit.WebView;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfhh.class */
public final class zzfhh extends zzfhe {
    private WebView zza;
    private Long zzb = null;
    private final Map<String, zzfgm> zzc;

    public zzfhh(Map<String, zzfgm> map, String str) {
        this.zzc = map;
    }

    @Override // com.google.android.gms.internal.ads.zzfhe
    public final void zza() {
        WebView webView = new WebView(zzfgv.zza().zzb());
        this.zza = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        zzc(this.zza);
        WebView webView2 = this.zza;
        if (webView2 != null && !TextUtils.isEmpty(null)) {
            webView2.loadUrl("javascript: null");
        }
        Iterator<String> it = this.zzc.keySet().iterator();
        if (!it.hasNext()) {
            this.zzb = Long.valueOf(System.nanoTime());
            return;
        }
        this.zzc.get(it.next());
        throw null;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzfhe
    public final void zzb() {
        super.zzb();
        new Handler().postDelayed(new zzfhg(this), Math.max(4000 - (this.zzb == null ? (char) 4000 : TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.zzb.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.ads.zzfhe
    public final void zzh(zzfgg zzfggVar, zzfge zzfgeVar) {
        JSONObject jSONObject = new JSONObject();
        Map<String, zzfgm> zze = zzfgeVar.zze();
        for (String str : zze.keySet()) {
            zzfhi.zzc(jSONObject, str, zze.get(str));
        }
        zzi(zzfggVar, zzfgeVar, jSONObject);
    }
}
