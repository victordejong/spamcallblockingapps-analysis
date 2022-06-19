package com.google.android.gms.internal.ads;

import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sq2.class */
public final class sq2 {

    /* renamed from: a */
    private JSONObject f29616a;

    /* renamed from: b */
    private final br2 f29617b;

    public sq2(br2 br2Var) {
        this.f29617b = br2Var;
    }

    /* renamed from: a */
    public final void m10929a(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f29617b.m16254a(new er2(this, hashSet, jSONObject, j, null));
    }

    /* renamed from: b */
    public final void m10928b(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f29617b.m16254a(new dr2(this, hashSet, jSONObject, j, null));
    }

    /* renamed from: c */
    public final void m10927c() {
        this.f29617b.m16254a(new cr2(this, null));
    }

    /* renamed from: d */
    public final JSONObject m10926d() {
        return this.f29616a;
    }

    /* renamed from: e */
    public final void m10925e(JSONObject jSONObject) {
        this.f29616a = jSONObject;
    }
}
