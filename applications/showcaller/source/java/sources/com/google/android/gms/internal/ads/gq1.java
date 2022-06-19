package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gq1.class */
final class gq1 {

    /* renamed from: a */
    private final String f23442a;

    /* renamed from: b */
    private final String f23443b;

    /* renamed from: c */
    private final int f23444c;

    /* renamed from: d */
    private final String f23445d;

    /* renamed from: e */
    private final int f23446e;

    public gq1(String str, String str2, int i, String str3, int i2) {
        this.f23442a = str;
        this.f23443b = str2;
        this.f23444c = i;
        this.f23445d = str3;
        this.f23446e = i2;
    }

    /* renamed from: a */
    public final JSONObject m14873a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("adapterClassName", this.f23442a);
        jSONObject.put("version", this.f23443b);
        jSONObject.put("status", this.f23444c);
        jSONObject.put("description", this.f23445d);
        jSONObject.put("initializationLatencyMillis", this.f23446e);
        return jSONObject;
    }
}
