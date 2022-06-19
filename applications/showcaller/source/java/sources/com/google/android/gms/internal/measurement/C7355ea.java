package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ea */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ea.class */
public final class C7355ea implements AbstractC7341da {

    /* renamed from: a */
    public static final AbstractC7607x3<Boolean> f34417a;

    /* renamed from: b */
    public static final AbstractC7607x3<Boolean> f34418b;

    /* renamed from: c */
    public static final AbstractC7607x3<Long> f34419c;

    static {
        C7581v3 c7581v3 = new C7581v3(C7474n3.m7080a("com.google.android.gms.measurement"));
        f34417a = c7581v3.m6834b("measurement.collection.efficient_engagement_reporting_enabled_2", true);
        f34418b = c7581v3.m6834b("measurement.collection.redundant_engagement_removal_enabled", false);
        f34419c = c7581v3.m6835a("measurement.id.collection.redundant_engagement_removal_enabled", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7341da
    public final boolean zza() {
        return f34418b.m6771e().booleanValue();
    }
}
