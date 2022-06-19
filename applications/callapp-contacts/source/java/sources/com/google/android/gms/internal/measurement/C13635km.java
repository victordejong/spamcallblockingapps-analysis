package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.km */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/km.class */
public final class C13635km implements AbstractC13634kl {

    /* renamed from: a */
    public static final AbstractC13463ec<Boolean> f50954a;

    /* renamed from: b */
    public static final AbstractC13463ec<Boolean> f50955b;

    /* renamed from: c */
    public static final AbstractC13463ec<Boolean> f50956c;

    /* renamed from: d */
    public static final AbstractC13463ec<Boolean> f50957d;

    static {
        C13461ea c13461ea = new C13461ea(C13452ds.m12911a());
        f50954a = c13461ea.m12907a("measurement.service.audience.fix_skip_audience_with_failed_filters", true);
        f50955b = c13461ea.m12907a("measurement.audience.refresh_event_count_filters_timestamp", false);
        f50956c = c13461ea.m12907a("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        f50957d = c13461ea.m12907a("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13634kl
    /* renamed from: a */
    public final boolean mo12385a() {
        return f50955b.m12901b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13634kl
    /* renamed from: b */
    public final boolean mo12384b() {
        return f50956c.m12901b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13634kl
    /* renamed from: c */
    public final boolean mo12383c() {
        return f50957d.m12901b().booleanValue();
    }
}
