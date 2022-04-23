package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.zz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zz.class */
final /* synthetic */ class RunnableC2080zz implements Runnable {

    /* renamed from: b */
    private final jt f9458b;

    /* renamed from: c */
    private final JSONObject f9459c;

    RunnableC2080zz(jt jtVar, JSONObject jSONObject) {
        this.f9458b = jtVar;
        this.f9459c = jSONObject;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9458b.m4765m0("AFMA_updateActiveView", this.f9459c);
    }
}
