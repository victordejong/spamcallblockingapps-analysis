package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ks */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ks.class */
public final class C4087ks implements AbstractC4088kt {

    /* renamed from: a */
    private static final AbstractC3821bj<Long> f18457a;

    /* renamed from: b */
    private static final AbstractC3821bj<Long> f18458b;

    static {
        C3827bp c3827bp = new C3827bp(C3822bk.m5864a("com.google.android.gms.measurement"));
        f18457a = c3827bp.m5860a("measurement.id.max_bundles_per_iteration", 0L);
        f18458b = c3827bp.m5860a("measurement.max_bundles_per_iteration", 2L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4088kt
    /* renamed from: a */
    public final long mo4991a() {
        return f18458b.m5866c().longValue();
    }
}
