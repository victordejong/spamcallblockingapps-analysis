package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/uo1.class */
public final class uo1 {

    /* renamed from: a */
    private Long f30687a;

    /* renamed from: b */
    private final String f30688b;

    /* renamed from: c */
    private String f30689c;

    /* renamed from: d */
    private Integer f30690d;

    /* renamed from: e */
    private String f30691e;

    /* renamed from: f */
    private Integer f30692f;

    /* renamed from: f */
    public static /* synthetic */ String m10280f(uo1 uo1Var) {
        String str = (String) C7192yr.m8714c().m14263c(C6679kw.f25538M6);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("objectId", uo1Var.f30687a);
            jSONObject.put("eventCategory", uo1Var.f30688b);
            jSONObject.putOpt("event", uo1Var.f30689c);
            jSONObject.putOpt("errorCode", uo1Var.f30690d);
            jSONObject.putOpt("rewardType", uo1Var.f30691e);
            jSONObject.putOpt("rewardAmount", uo1Var.f30692f);
        } catch (JSONException e) {
            ei0.m15464f("Could not convert parameters to JSON.");
        }
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 16 + String.valueOf(jSONObject2).length());
        sb.append(str);
        sb.append("(\"h5adsEvent\",");
        sb.append(jSONObject2);
        sb.append(");");
        return sb.toString();
    }
}
