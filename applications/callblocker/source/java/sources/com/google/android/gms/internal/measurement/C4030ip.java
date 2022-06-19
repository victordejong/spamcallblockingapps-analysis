package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ip */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ip.class */
public final class C4030ip implements AbstractC4027im {

    /* renamed from: a */
    private static final AbstractC3821bj<Boolean> f18374a;

    /* renamed from: b */
    private static final AbstractC3821bj<Long> f18375b;

    /* renamed from: c */
    private static final AbstractC3821bj<Boolean> f18376c;

    /* renamed from: d */
    private static final AbstractC3821bj<Boolean> f18377d;

    /* renamed from: e */
    private static final AbstractC3821bj<Boolean> f18378e;

    /* renamed from: f */
    private static final AbstractC3821bj<Boolean> f18379f;

    /* renamed from: g */
    private static final AbstractC3821bj<Boolean> f18380g;

    static {
        C3827bp c3827bp = new C3827bp(C3822bk.m5864a("com.google.android.gms.measurement"));
        f18374a = c3827bp.m5858a("measurement.gold.enhanced_ecommerce.format_logs", false);
        f18375b = c3827bp.m5860a("measurement.id.gold.enhanced_ecommerce.service", 0L);
        f18376c = c3827bp.m5858a("measurement.gold.enhanced_ecommerce.log_nested_complex_events", true);
        f18377d = c3827bp.m5858a("measurement.gold.enhanced_ecommerce.nested_param_daily_event_count", false);
        f18378e = c3827bp.m5858a("measurement.gold.enhanced_ecommerce.updated_schema.client", true);
        f18379f = c3827bp.m5858a("measurement.gold.enhanced_ecommerce.updated_schema.service", false);
        f18380g = c3827bp.m5858a("measurement.gold.enhanced_ecommerce.upload_nested_complex_events", false);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4027im
    /* renamed from: a */
    public final boolean mo5076a() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4027im
    /* renamed from: b */
    public final boolean mo5075b() {
        return f18374a.m5866c().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4027im
    /* renamed from: c */
    public final boolean mo5074c() {
        return f18376c.m5866c().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4027im
    /* renamed from: d */
    public final boolean mo5073d() {
        return f18377d.m5866c().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4027im
    /* renamed from: e */
    public final boolean mo5072e() {
        return f18378e.m5866c().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4027im
    /* renamed from: f */
    public final boolean mo5071f() {
        return f18379f.m5866c().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4027im
    /* renamed from: g */
    public final boolean mo5070g() {
        return f18380g.m5866c().booleanValue();
    }
}
