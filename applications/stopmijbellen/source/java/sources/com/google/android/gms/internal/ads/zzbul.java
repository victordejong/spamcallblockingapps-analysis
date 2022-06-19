package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbul.class */
public final /* synthetic */ class zzbul {
    public static void zza(zzbum zzbumVar, String str, Map map) {
        try {
            zzbumVar.zze(str, zzt.zzp().zzf(map));
        } catch (JSONException e) {
            zzciz.zzj("Could not convert parameters to JSON.");
        }
    }

    public static void zzb(zzbum zzbumVar, String str, JSONObject jSONObject) {
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("',");
        sb.append(jSONObject2);
        sb.append(");");
        String sb2 = sb.toString();
        zzciz.zze(sb2.length() != 0 ? "Dispatching AFMA event: ".concat(sb2) : new String("Dispatching AFMA event: "));
        zzbumVar.zza(sb.toString());
    }

    public static void zzc(zzbum zzbumVar, String str, String str2) {
        zzbumVar.zza(C1676a.m4788i(new StringBuilder(C0033h.m8889h(str, 3, String.valueOf(str2).length())), str, "(", str2, ");"));
    }

    public static void zzd(zzbum zzbumVar, String str, JSONObject jSONObject) {
        zzbumVar.zzb(str, jSONObject.toString());
    }
}
