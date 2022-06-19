package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.jb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/jb.class */
public final class C4043jb implements AbstractC4039iy {

    /* renamed from: a */
    private static final AbstractC3821bj<Boolean> f18394a;

    /* renamed from: b */
    private static final AbstractC3821bj<Boolean> f18395b;

    /* renamed from: c */
    private static final AbstractC3821bj<Boolean> f18396c;

    /* renamed from: d */
    private static final AbstractC3821bj<Boolean> f18397d;

    static {
        C3827bp c3827bp = new C3827bp(C3822bk.m5864a("com.google.android.gms.measurement"));
        f18394a = c3827bp.m5858a("measurement.service.audience.fix_skip_audience_with_failed_filters", true);
        f18395b = c3827bp.m5858a("measurement.audience.refresh_event_count_filters_timestamp", false);
        f18396c = c3827bp.m5858a("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        f18397d = c3827bp.m5858a("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4039iy
    /* renamed from: a */
    public final boolean mo5056a() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4039iy
    /* renamed from: b */
    public final boolean mo5055b() {
        return f18394a.m5866c().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4039iy
    /* renamed from: c */
    public final boolean mo5054c() {
        return f18395b.m5866c().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4039iy
    /* renamed from: d */
    public final boolean mo5053d() {
        return f18396c.m5866c().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4039iy
    /* renamed from: e */
    public final boolean mo5052e() {
        return f18397d.m5866c().booleanValue();
    }
}
