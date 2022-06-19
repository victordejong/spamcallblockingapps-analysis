package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbsj.class */
public final /* synthetic */ class zzbsj {
    public static void zza(zzbsk zzbskVar, String str, JSONObject jSONObject) {
        zzbskVar.zzbl(str, jSONObject.toString());
    }

    public static void zzb(zzbsk zzbskVar, String str, String str2) {
        zzbskVar.zza(C22128a.m8606k(new StringBuilder(str.length() + 3 + String.valueOf(str2).length()), str, "(", str2, ");"));
    }

    public static void zzc(zzbsk zzbskVar, String str, JSONObject jSONObject) {
        StringBuilder m8688M = C22128a.m8688M("(window.AFMA_ReceiveMessage || function() {})('", str, "',", jSONObject.toString(), ");");
        String sb = m8688M.toString();
        zzcgt.zzd(sb.length() != 0 ? "Dispatching AFMA event: ".concat(sb) : new String("Dispatching AFMA event: "));
        zzbskVar.zza(m8688M.toString());
    }

    public static void zzd(zzbsk zzbskVar, String str, Map map) {
        try {
            zzbskVar.zzd(str, zzt.zzc().zzj(map));
        } catch (JSONException e) {
            zzcgt.zzi("Could not convert parameters to JSON.");
        }
    }
}
