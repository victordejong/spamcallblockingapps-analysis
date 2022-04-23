package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.common.util.AbstractC1610f;
/* renamed from: com.google.android.gms.measurement.internal.a9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/a9.class */
final class C2224a9 {

    /* renamed from: a */
    private final AbstractC1610f f9985a;

    /* renamed from: b */
    private long f9986b;

    public C2224a9(AbstractC1610f fVar) {
        C1581h.m8347h(fVar);
        this.f9985a = fVar;
    }

    /* renamed from: a */
    public final void m4024a() {
        this.f9986b = this.f9985a.m8245c();
    }

    /* renamed from: b */
    public final void m4023b() {
        this.f9986b = 0L;
    }

    /* renamed from: c */
    public final boolean m4022c(long j) {
        return this.f9986b == 0 || this.f9985a.m8245c() - this.f9986b >= 3600000;
    }
}
