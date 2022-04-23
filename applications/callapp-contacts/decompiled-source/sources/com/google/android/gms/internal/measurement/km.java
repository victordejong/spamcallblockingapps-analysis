package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/km.class */
public final class km implements kl {

    /* renamed from: a  reason: collision with root package name */
    public static final ec<Boolean> f29195a;

    /* renamed from: b  reason: collision with root package name */
    public static final ec<Boolean> f29196b;

    /* renamed from: c  reason: collision with root package name */
    public static final ec<Boolean> f29197c;

    /* renamed from: d  reason: collision with root package name */
    public static final ec<Boolean> f29198d;

    static {
        ea eaVar = new ea(ds.a());
        f29195a = eaVar.a("measurement.service.audience.fix_skip_audience_with_failed_filters", true);
        f29196b = eaVar.a("measurement.audience.refresh_event_count_filters_timestamp", false);
        f29197c = eaVar.a("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        f29198d = eaVar.a("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }

    @Override // com.google.android.gms.internal.measurement.kl
    public final boolean a() {
        return f29196b.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.kl
    public final boolean b() {
        return f29197c.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.kl
    public final boolean c() {
        return f29198d.b().booleanValue();
    }
}
