package com.google.android.gms.internal.ads;

import android.os.Build;
import android.webkit.WebView;
import androidx.recyclerview.widget.C0608b;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzflc.class */
public class zzflc {
    private zzfma zza = new zzfma(null);
    private long zzb;
    private int zzc;

    public zzflc() {
        zzb();
    }

    public final WebView zza() {
        return this.zza.get();
    }

    public final void zzb() {
        this.zzb = System.nanoTime();
        this.zzc = 1;
    }

    public void zzc() {
        this.zza.clear();
    }

    public final void zzd(String str, long j) {
        if (j < this.zzb || this.zzc == 3) {
            return;
        }
        this.zzc = 3;
        zzfkv.zza().zzf(zza(), str);
    }

    public final void zze(String str, long j) {
        if (j >= this.zzb) {
            this.zzc = 2;
            zzfkv.zza().zzf(zza(), str);
        }
    }

    public void zzf(zzfke zzfkeVar, zzfkc zzfkcVar) {
        zzg(zzfkeVar, zzfkcVar, null);
    }

    public final void zzg(zzfke zzfkeVar, zzfkc zzfkcVar, JSONObject jSONObject) {
        String zzh = zzfkeVar.zzh();
        JSONObject jSONObject2 = new JSONObject();
        zzflg.zzg(jSONObject2, "environment", "app");
        zzflg.zzg(jSONObject2, "adSessionType", zzfkcVar.zzd());
        JSONObject jSONObject3 = new JSONObject();
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        zzflg.zzg(jSONObject3, "deviceType", C0608b.m7625j(new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(str2).length()), str, "; ", str2));
        zzflg.zzg(jSONObject3, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        zzflg.zzg(jSONObject3, "os", "Android");
        zzflg.zzg(jSONObject2, "deviceInfo", jSONObject3);
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        zzflg.zzg(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject4 = new JSONObject();
        zzflg.zzg(jSONObject4, "partnerName", zzfkcVar.zze().zzb());
        zzflg.zzg(jSONObject4, "partnerVersion", zzfkcVar.zze().zzc());
        zzflg.zzg(jSONObject2, "omidNativeInfo", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        zzflg.zzg(jSONObject5, "libraryVersion", "1.3.3-google_20200416");
        zzflg.zzg(jSONObject5, "appId", zzfkt.zzb().zza().getApplicationContext().getPackageName());
        zzflg.zzg(jSONObject2, "app", jSONObject5);
        if (zzfkcVar.zzf() != null) {
            zzflg.zzg(jSONObject2, "contentUrl", zzfkcVar.zzf());
        }
        zzflg.zzg(jSONObject2, "customReferenceData", zzfkcVar.zzg());
        JSONObject jSONObject6 = new JSONObject();
        Iterator<zzfkk> it2 = zzfkcVar.zzh().iterator();
        if (!it2.hasNext()) {
            zzfkv.zza().zzg(zza(), zzh, jSONObject2, jSONObject6, jSONObject);
        } else {
            it2.next();
            throw null;
        }
    }

    public final void zzh(float f) {
        zzfkv.zza().zze(zza(), f);
    }

    public final void zzi(WebView webView) {
        this.zza = new zzfma(webView);
    }

    public void zzj() {
    }

    public final boolean zzk() {
        return this.zza.get() != null;
    }
}
