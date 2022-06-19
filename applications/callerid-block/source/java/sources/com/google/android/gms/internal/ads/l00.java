package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/l00.class */
final /* synthetic */ class l00 implements Runnable {

    /* renamed from: b */
    private final m00 f7078b;

    /* renamed from: c */
    private final JSONObject f7079c;

    l00(m00 m00Var, JSONObject jSONObject) {
        this.f7078b = m00Var;
        this.f7079c = jSONObject;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7078b.f(this.f7079c);
    }
}
