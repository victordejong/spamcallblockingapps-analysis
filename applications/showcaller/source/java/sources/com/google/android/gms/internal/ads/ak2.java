package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ak2.class */
public final class ak2 {

    /* renamed from: a */
    private final JSONObject f19984a;

    public ak2(JSONObject jSONObject) {
        this.f19984a = jSONObject;
    }

    /* renamed from: a */
    public final String m16576a() {
        if (m16575b() - 1 != 1) {
            return "javascript";
        }
        return null;
    }

    /* renamed from: b */
    public final int m16575b() {
        int optInt = this.f19984a.optInt("media_type", -1);
        if (optInt != 0) {
            return optInt != 1 ? 3 : 1;
        }
        return 2;
    }
}
