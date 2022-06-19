package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/t40.class */
public final /* synthetic */ class t40 {
    /* renamed from: a */
    public static void m10841a(u40 u40Var, String str, JSONObject jSONObject) {
        u40Var.mo7890r(str, jSONObject.toString());
    }

    /* renamed from: b */
    public static void m10840b(u40 u40Var, String str, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("(");
        sb.append(str2);
        sb.append(");");
        u40Var.mo7896n(sb.toString());
    }

    /* renamed from: c */
    public static void m10839c(u40 u40Var, String str, JSONObject jSONObject) {
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("',");
        sb.append(jSONObject2);
        sb.append(");");
        String sb2 = sb.toString();
        ei0.m15469a(sb2.length() != 0 ? "Dispatching AFMA event: ".concat(sb2) : new String("Dispatching AFMA event: "));
        u40Var.mo7896n(sb.toString());
    }

    /* renamed from: d */
    public static void m10838d(u40 u40Var, String str, Map map) {
        try {
            u40Var.mo7920a(str, C5667s.m18160d().m18091Q(map));
        } catch (JSONException e) {
            ei0.m15464f("Could not convert parameters to JSON.");
        }
    }
}
