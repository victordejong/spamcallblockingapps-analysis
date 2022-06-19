package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.lr */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/lr.class */
public final class C13667lr implements AbstractC13666lq {

    /* renamed from: a */
    public static final AbstractC13463ec<Boolean> f51002a;

    /* renamed from: b */
    public static final AbstractC13463ec<Long> f51003b;

    static {
        C13461ea c13461ea = new C13461ea(C13452ds.m12911a());
        f51002a = c13461ea.m12907a("measurement.validation.internal_limits_internal_event_params", false);
        f51003b = c13461ea.m12909a("measurement.id.validation.internal_limits_internal_event_params", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13666lq
    /* renamed from: a */
    public final boolean mo12339a() {
        return f51002a.m12901b().booleanValue();
    }
}
