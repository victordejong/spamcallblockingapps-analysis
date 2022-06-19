package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.js */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/js.class */
public final /* synthetic */ class C12671js {
    /* renamed from: a */
    public static void m14573a(AbstractC12668jp abstractC12668jp, String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("(");
        sb.append(str2);
        sb.append(");");
        abstractC12668jp.mo13775a(sb.toString());
    }

    /* renamed from: a */
    public static void m14572a(AbstractC12668jp abstractC12668jp, String str, Map map) {
        try {
            abstractC12668jp.mo13769a(str, zzr.zzkv().zzj(map));
        } catch (JSONException e) {
            zzd.zzez("Could not convert parameters to JSON.");
        }
    }

    /* renamed from: a */
    public static void m14571a(AbstractC12668jp abstractC12668jp, String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        abstractC12668jp.mo14532a(str, jSONObject2.toString());
    }

    /* renamed from: b */
    public static void m14570b(AbstractC12668jp abstractC12668jp, String str, JSONObject jSONObject) {
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
        abstractC12668jp.mo13775a(sb.toString());
    }
}
