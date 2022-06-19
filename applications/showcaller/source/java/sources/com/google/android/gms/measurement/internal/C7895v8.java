package com.google.android.gms.measurement.internal;

import android.os.Handler;
/* renamed from: com.google.android.gms.measurement.internal.v8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/v8.class */
public final class C7895v8 {

    /* renamed from: a */
    private RunnableC7884u8 f35762a;

    /* renamed from: b */
    final /* synthetic */ C7939z8 f35763b;

    public C7895v8(C7939z8 c7939z8) {
        this.f35763b = c7939z8;
    }

    /* renamed from: a */
    public final void m5897a() {
        Handler handler;
        this.f35763b.mo6113f();
        if (this.f35762a != null) {
            handler = this.f35763b.f35854c;
            handler.removeCallbacks(this.f35762a);
        }
        if (this.f35763b.f35460a.m6006y().m6471u(null, C7672c3.f35101t0)) {
            this.f35763b.f35460a.m6005z().f35208r.m5886b(false);
        }
    }

    /* renamed from: b */
    public final void m5896b(long j) {
        Handler handler;
        this.f35762a = new RunnableC7884u8(this, this.f35763b.f35460a.mo6007x().mo16807a(), j);
        handler = this.f35763b.f35854c;
        handler.postDelayed(this.f35762a, 2000L);
    }
}
