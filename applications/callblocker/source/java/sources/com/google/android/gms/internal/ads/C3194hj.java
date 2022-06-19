package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.hj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hj.class */
public final /* synthetic */ class C3194hj {
    /* renamed from: a */
    public static void m7796a(AbstractC3195hk abstractC3195hk, String str, String str2) {
        abstractC3195hk.mo7733d(new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length()).append(str).append("(").append(str2).append(");").toString());
    }

    /* renamed from: a */
    public static void m7795a(AbstractC3195hk abstractC3195hk, String str, Map map) {
        try {
            abstractC3195hk.mo7734b(str, C2341q.m14744c().m6982a(map));
        } catch (JSONException e) {
            C3556uu.m6745e("Could not convert parameters to JSON.");
        }
    }

    /* renamed from: a */
    public static void m7794a(AbstractC3195hk abstractC3195hk, String str, JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        if (jSONObject == null) {
            jSONObject2 = new JSONObject();
        }
        abstractC3195hk.mo7738a(str, jSONObject2.toString());
    }

    /* renamed from: b */
    public static void m7793b(AbstractC3195hk abstractC3195hk, String str, JSONObject jSONObject) {
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
        C3556uu.m6751b(valueOf.length() != 0 ? "Dispatching AFMA event: ".concat(valueOf) : new String("Dispatching AFMA event: "));
        abstractC3195hk.mo7733d(sb.toString());
    }
}
