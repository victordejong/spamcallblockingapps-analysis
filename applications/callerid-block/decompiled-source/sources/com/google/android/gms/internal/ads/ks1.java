package com.google.android.gms.internal.ads;

import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ks1.class */
public final class ks1 {

    /* renamed from: a */
    private JSONObject f7058a;

    /* renamed from: b */
    private final ts1 f7059b;

    public ks1(ts1 ts1Var) {
        this.f7059b = ts1Var;
    }

    /* renamed from: a */
    public final void m6761a(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f7059b.m5476a(new ws1(this, hashSet, jSONObject, j, (byte[]) null));
    }

    /* renamed from: b */
    public final void m6760b(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f7059b.m5476a(new vs1(this, hashSet, jSONObject, j, (byte[]) null));
    }

    /* renamed from: c */
    public final void m6759c() {
        this.f7059b.m5476a(new us1(this, (byte[]) null));
    }

    /* renamed from: d */
    public final JSONObject m6758d() {
        return this.f7058a;
    }

    /* renamed from: e */
    public final void m6757e(JSONObject jSONObject) {
        this.f7058a = jSONObject;
    }
}
