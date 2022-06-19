package com.razorpay;

import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/razorpay/E$_j$.class */
public final class E$_j$ {
    /* renamed from: a */
    public static JSONObject m36104a(boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("otp_read", z ? 1 : 0);
            return jSONObject;
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, "error", e.getMessage());
            return null;
        }
    }
}
