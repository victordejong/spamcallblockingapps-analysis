package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/kw.class */
public final class kw implements kv {

    /* renamed from: a  reason: collision with root package name */
    public static final ec<Boolean> f29209a;

    /* renamed from: b  reason: collision with root package name */
    public static final ec<Boolean> f29210b;

    /* renamed from: c  reason: collision with root package name */
    public static final ec<Long> f29211c;

    static {
        ea eaVar = new ea(ds.a());
        f29209a = eaVar.a("measurement.collection.efficient_engagement_reporting_enabled_2", true);
        f29210b = eaVar.a("measurement.collection.redundant_engagement_removal_enabled", false);
        f29211c = eaVar.a("measurement.id.collection.redundant_engagement_removal_enabled", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.kv
    public final boolean a() {
        return f29210b.b().booleanValue();
    }
}
