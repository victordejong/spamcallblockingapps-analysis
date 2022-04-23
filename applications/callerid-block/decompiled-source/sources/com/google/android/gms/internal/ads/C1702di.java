package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.di */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/di.class */
public final class C1702di {

    /* renamed from: a */
    public final boolean f6325a;

    /* renamed from: b */
    public final String f6326b;

    public C1702di(boolean z, String str) {
        this.f6325a = z;
        this.f6326b = str;
    }

    /* renamed from: a */
    public static C1702di m7738a(JSONObject jSONObject) {
        return new C1702di(jSONObject.optBoolean("enable_prewarming", false), jSONObject.optString("prefetch_url", ""));
    }
}
