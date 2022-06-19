package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vl1.class */
public final class vl1 {

    /* renamed from: a */
    private final JSONObject f8923a;

    public vl1(JSONObject jSONObject) {
        this.f8923a = jSONObject;
    }

    /* renamed from: a */
    public final String m5212a() {
        if (m5211b() - 1 != 1) {
            return "javascript";
        }
        return null;
    }

    /* renamed from: b */
    public final int m5211b() {
        int optInt = this.f8923a.optInt("media_type", -1);
        if (optInt != 0) {
            return optInt != 1 ? 3 : 1;
        }
        return 2;
    }
}
