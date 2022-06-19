package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qb0.class */
public final class qb0 {

    /* renamed from: a */
    public final boolean f28404a;

    /* renamed from: b */
    public final String f28405b;

    public qb0(boolean z, String str) {
        this.f28404a = z;
        this.f28405b = str;
    }

    /* renamed from: a */
    public static qb0 m11959a(JSONObject jSONObject) {
        return new qb0(jSONObject.optBoolean("enable_prewarming", false), jSONObject.optString("prefetch_url", ""));
    }
}
