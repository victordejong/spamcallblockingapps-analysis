package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.text.TextUtils;
import android.webkit.WebView;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzflf.class */
public final class zzflf extends zzflc {
    private WebView zza;
    private Long zzb = null;
    private final Map<String, zzfkk> zzc;

    public zzflf(Map<String, zzfkk> map, String str) {
        this.zzc = map;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzflc
    public final void zzc() {
        super.zzc();
        new Handler().postDelayed(new zzfle(this), Math.max(4000 - (this.zzb == null ? (char) 4000 : TimeUnit.MILLISECONDS.convert(System.nanoTime() - this.zzb.longValue(), TimeUnit.NANOSECONDS)), 2000L));
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.ads.zzflc
    public final void zzf(zzfke zzfkeVar, zzfkc zzfkcVar) {
        JSONObject jSONObject = new JSONObject();
        Map<String, zzfkk> zzi = zzfkcVar.zzi();
        for (String str : zzi.keySet()) {
            zzflg.zzg(jSONObject, str, zzi.get(str));
        }
        zzg(zzfkeVar, zzfkcVar, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzflc
    public final void zzj() {
        WebView webView = new WebView(zzfkt.zzb().zza());
        this.zza = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        zzi(this.zza);
        WebView webView2 = this.zza;
        if (webView2 != null && !TextUtils.isEmpty(null)) {
            webView2.loadUrl("javascript: null");
        }
        Iterator<String> it2 = this.zzc.keySet().iterator();
        if (!it2.hasNext()) {
            this.zzb = Long.valueOf(System.nanoTime());
            return;
        }
        this.zzc.get(it2.next());
        throw null;
    }
}
