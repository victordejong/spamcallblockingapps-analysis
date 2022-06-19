package com.google.android.gms.internal.ads;

import android.os.Build;
import android.webkit.WebView;
import com.freshchat.consumer.sdk.beans.User;
import com.razorpay.AnalyticsConstants;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfhe.class */
public class zzfhe {
    private zzfic zza = new zzfic(null);
    private long zzb;
    private int zzc;

    public zzfhe() {
        zzk();
    }

    public void zza() {
    }

    public void zzb() {
        this.zza.clear();
    }

    public final void zzc(WebView webView) {
        this.zza = new zzfic(webView);
    }

    public final WebView zzd() {
        return this.zza.get();
    }

    public final boolean zze() {
        return this.zza.get() != null;
    }

    public final void zzf(String str, long j) {
        if (j >= this.zzb) {
            this.zzc = 2;
            zzfgx.zza().zze(zzd(), str);
        }
    }

    public final void zzg(String str, long j) {
        if (j < this.zzb || this.zzc == 3) {
            return;
        }
        this.zzc = 3;
        zzfgx.zza().zze(zzd(), str);
    }

    public void zzh(zzfgg zzfggVar, zzfge zzfgeVar) {
        zzi(zzfggVar, zzfgeVar, null);
    }

    public final void zzi(zzfgg zzfggVar, zzfge zzfgeVar, JSONObject jSONObject) {
        String zzh = zzfggVar.zzh();
        JSONObject jSONObject2 = new JSONObject();
        zzfhi.zzc(jSONObject2, "environment", "app");
        zzfhi.zzc(jSONObject2, "adSessionType", zzfgeVar.zzi());
        JSONObject jSONObject3 = new JSONObject();
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        zzfhi.zzc(jSONObject3, "deviceType", C22128a.m8610j(new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(str2).length()), str, "; ", str2));
        zzfhi.zzc(jSONObject3, "osVersion", Integer.toString(Build.VERSION.SDK_INT));
        zzfhi.zzc(jSONObject3, User.DEVICE_META_OS_NAME, AnalyticsConstants.ANDROID);
        zzfhi.zzc(jSONObject2, "deviceInfo", jSONObject3);
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        zzfhi.zzc(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject4 = new JSONObject();
        zzfhi.zzc(jSONObject4, "partnerName", zzfgeVar.zzc().zzb());
        zzfhi.zzc(jSONObject4, "partnerVersion", zzfgeVar.zzc().zzc());
        zzfhi.zzc(jSONObject2, "omidNativeInfo", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        zzfhi.zzc(jSONObject5, "libraryVersion", "1.3.3-google_20200416");
        zzfhi.zzc(jSONObject5, "appId", zzfgv.zza().zzb().getApplicationContext().getPackageName());
        zzfhi.zzc(jSONObject2, "app", jSONObject5);
        if (zzfgeVar.zzg() != null) {
            zzfhi.zzc(jSONObject2, "contentUrl", zzfgeVar.zzg());
        }
        zzfhi.zzc(jSONObject2, "customReferenceData", zzfgeVar.zzh());
        JSONObject jSONObject6 = new JSONObject();
        Iterator<zzfgm> it = zzfgeVar.zzd().iterator();
        if (!it.hasNext()) {
            zzfgx.zza().zzc(zzd(), zzh, jSONObject2, jSONObject6, jSONObject);
        } else {
            it.next();
            throw null;
        }
    }

    public final void zzj(float f) {
        zzfgx.zza().zzf(zzd(), f);
    }

    public final void zzk() {
        this.zzb = System.nanoTime();
        this.zzc = 1;
    }
}
