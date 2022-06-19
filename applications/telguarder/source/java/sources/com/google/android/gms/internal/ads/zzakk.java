package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzakk.class */
public final /* synthetic */ class zzakk {
    public static void zza(zzakl zzaklVar, String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("(");
        sb.append(str2);
        sb.append(");");
        zzaklVar.zzcv(sb.toString());
    }

    public static void zza(zzakl zzaklVar, String str, Map map) {
        try {
            zzaklVar.zza(str, zzr.zzkr().zzj(map));
        } catch (JSONException e) {
            zzd.zzex("Could not convert parameters to JSON.");
        }
    }

    public static void zza(zzakl zzaklVar, String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        zzaklVar.zzi(str, jSONObject2.toString());
    }

    public static void zzb(zzakl zzaklVar, String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        String jSONObject3 = jSONObject2.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("'");
        sb.append(",");
        sb.append(jSONObject3);
        sb.append(");");
        String valueOf = String.valueOf(sb.toString());
        zzd.zzdy(valueOf.length() != 0 ? "Dispatching AFMA event: ".concat(valueOf) : new String("Dispatching AFMA event: "));
        zzaklVar.zzcv(sb.toString());
    }
}
