package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.kw */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/kw.class */
public final class C13645kw implements AbstractC13644kv {

    /* renamed from: a */
    public static final AbstractC13463ec<Boolean> f50968a;

    /* renamed from: b */
    public static final AbstractC13463ec<Boolean> f50969b;

    /* renamed from: c */
    public static final AbstractC13463ec<Long> f50970c;

    static {
        C13461ea c13461ea = new C13461ea(C13452ds.m12911a());
        f50968a = c13461ea.m12907a("measurement.collection.efficient_engagement_reporting_enabled_2", true);
        f50969b = c13461ea.m12907a("measurement.collection.redundant_engagement_removal_enabled", false);
        f50970c = c13461ea.m12909a("measurement.id.collection.redundant_engagement_removal_enabled", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13644kv
    /* renamed from: a */
    public final boolean mo12372a() {
        return f50969b.m12901b().booleanValue();
    }
}
