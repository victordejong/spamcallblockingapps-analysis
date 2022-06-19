package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ju */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ju.class */
public final class C4062ju implements AbstractC4063jv {

    /* renamed from: a */
    private static final AbstractC3821bj<Boolean> f18419a;

    /* renamed from: b */
    private static final AbstractC3821bj<Boolean> f18420b;

    /* renamed from: c */
    private static final AbstractC3821bj<Long> f18421c;

    static {
        C3827bp c3827bp = new C3827bp(C3822bk.m5864a("com.google.android.gms.measurement"));
        f18419a = c3827bp.m5858a("measurement.collection.efficient_engagement_reporting_enabled_2", true);
        f18420b = c3827bp.m5858a("measurement.collection.redundant_engagement_removal_enabled", false);
        f18421c = c3827bp.m5860a("measurement.id.collection.redundant_engagement_removal_enabled", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4063jv
    /* renamed from: a */
    public final boolean mo5028a() {
        return f18419a.m5866c().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4063jv
    /* renamed from: b */
    public final boolean mo5027b() {
        return f18420b.m5866c().booleanValue();
    }
}
