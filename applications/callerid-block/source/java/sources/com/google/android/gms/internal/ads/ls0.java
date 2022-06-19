package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ls0.class */
final class ls0 {

    /* renamed from: a */
    private Long f7156a;

    /* renamed from: b */
    private final String f7157b;

    /* renamed from: c */
    private String f7158c;

    /* renamed from: d */
    private Integer f7159d;

    /* renamed from: e */
    private String f7160e;

    /* renamed from: f */
    private Integer f7161f;

    /* renamed from: a */
    public static /* synthetic */ String m6666a(ls0 ls0Var) {
        String str = (String) C1674c.m7906c().m6878b(C1842m3.f7243E5);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("objectId", ls0Var.f7156a);
            jSONObject.put("eventCategory", ls0Var.f7157b);
            jSONObject.putOpt("event", ls0Var.f7158c);
            jSONObject.putOpt("errorCode", ls0Var.f7159d);
            jSONObject.putOpt("rewardType", ls0Var.f7160e);
            jSONObject.putOpt("rewardAmount", ls0Var.f7161f);
        } catch (JSONException e) {
            C1894po.m6180f("Could not convert parameters to JSON.");
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
