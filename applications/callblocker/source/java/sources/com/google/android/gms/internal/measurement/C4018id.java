package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.id */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/id.class */
public final class C4018id implements AbstractC4015ia {

    /* renamed from: a */
    private static final AbstractC3821bj<Boolean> f18322a;

    /* renamed from: b */
    private static final AbstractC3821bj<Long> f18323b;

    static {
        C3827bp c3827bp = new C3827bp(C3822bk.m5864a("com.google.android.gms.measurement"));
        f18322a = c3827bp.m5858a("measurement.sdk.attribution.cache", true);
        f18323b = c3827bp.m5860a("measurement.sdk.attribution.cache.ttl", 604800000L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4015ia
    /* renamed from: a */
    public final boolean mo5129a() {
        return f18322a.m5866c().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4015ia
    /* renamed from: b */
    public final long mo5128b() {
        return f18323b.m5866c().longValue();
    }
}
