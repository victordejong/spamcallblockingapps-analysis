package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C1407r;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.mb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mb.class */
public final /* synthetic */ class C1846mb {
    /* renamed from: a */
    public static void m6588a(nb nbVar, String str, JSONObject jSONObject) {
        nbVar.O(str, jSONObject.toString());
    }

    /* renamed from: b */
    public static void m6587b(nb nbVar, String str, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("(");
        sb.append(str2);
        sb.append(");");
        nbVar.g(sb.toString());
    }

    /* renamed from: c */
    public static void m6586c(nb nbVar, String str, JSONObject jSONObject) {
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("',");
        sb.append(jSONObject2);
        sb.append(");");
        String valueOf = String.valueOf(sb.toString());
        C1894po.m6185a(valueOf.length() != 0 ? "Dispatching AFMA event: ".concat(valueOf) : new String("Dispatching AFMA event: "));
        nbVar.g(sb.toString());
    }

    /* renamed from: d */
    public static void m6585d(nb nbVar, String str, Map map) {
        try {
            nbVar.a(str, C1407r.m8920d().m8787K(map));
        } catch (JSONException e) {
            C1894po.m6180f("Could not convert parameters to JSON.");
        }
    }
}
