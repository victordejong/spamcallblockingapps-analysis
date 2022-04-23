package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/js.class */
public final /* synthetic */ class js {
    public static void a(jp jpVar, String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("(");
        sb.append(str2);
        sb.append(");");
        jpVar.a(sb.toString());
    }

    public static void a(jp jpVar, String str, Map map) {
        try {
            jpVar.a(str, zzr.zzkv().zzj(map));
        } catch (JSONException e) {
            zzd.zzez("Could not convert parameters to JSON.");
        }
    }

    public static void a(jp jpVar, String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        jpVar.a(str, jSONObject2.toString());
    }

    public static void b(jp jpVar, String str, JSONObject jSONObject) {
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
        zzd.zzdz(valueOf.length() != 0 ? "Dispatching AFMA event: ".concat(valueOf) : new String("Dispatching AFMA event: "));
        jpVar.a(sb.toString());
    }
}
