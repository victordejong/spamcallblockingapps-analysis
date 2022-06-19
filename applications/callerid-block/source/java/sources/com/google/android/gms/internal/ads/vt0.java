package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vt0.class */
final class vt0 {

    /* renamed from: a */
    private final String f8949a;

    /* renamed from: b */
    private final String f8950b;

    /* renamed from: c */
    private final int f8951c;

    /* renamed from: d */
    private final String f8952d;

    /* renamed from: e */
    private final int f8953e;

    public vt0(String str, String str2, int i, String str3, int i2) {
        this.f8949a = str;
        this.f8950b = str2;
        this.f8951c = i;
        this.f8952d = str3;
        this.f8953e = i2;
    }

    /* renamed from: a */
    public final JSONObject m5185a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("adapterClassName", this.f8949a);
        jSONObject.put("version", this.f8950b);
        jSONObject.put("status", this.f8951c);
        jSONObject.put("description", this.f8952d);
        jSONObject.put("initializationLatencyMillis", this.f8953e);
        return jSONObject;
    }
}
