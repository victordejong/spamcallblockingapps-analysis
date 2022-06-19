package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.u9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/u9.class */
public final class C7574u9 implements AbstractC7561t9 {

    /* renamed from: a */
    public static final AbstractC7607x3<Boolean> f34713a;

    /* renamed from: b */
    public static final AbstractC7607x3<Boolean> f34714b;

    /* renamed from: c */
    public static final AbstractC7607x3<Boolean> f34715c;

    /* renamed from: d */
    public static final AbstractC7607x3<Boolean> f34716d;

    static {
        C7581v3 c7581v3 = new C7581v3(C7474n3.m7080a("com.google.android.gms.measurement"));
        f34713a = c7581v3.m6834b("measurement.service.audience.fix_skip_audience_with_failed_filters", true);
        f34714b = c7581v3.m6834b("measurement.audience.refresh_event_count_filters_timestamp", false);
        f34715c = c7581v3.m6834b("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        f34716d = c7581v3.m6834b("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7561t9
    /* renamed from: b */
    public final boolean mo6864b() {
        return f34714b.m6771e().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7561t9
    /* renamed from: c */
    public final boolean mo6863c() {
        return f34715c.m6771e().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7561t9
    /* renamed from: e */
    public final boolean mo6862e() {
        return f34716d.m6771e().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7561t9
    public final boolean zza() {
        return true;
    }
}
