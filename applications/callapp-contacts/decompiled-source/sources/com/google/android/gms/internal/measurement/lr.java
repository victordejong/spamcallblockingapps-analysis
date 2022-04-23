package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/lr.class */
public final class lr implements lq {

    /* renamed from: a  reason: collision with root package name */
    public static final ec<Boolean> f29241a;

    /* renamed from: b  reason: collision with root package name */
    public static final ec<Long> f29242b;

    static {
        ea eaVar = new ea(ds.a());
        f29241a = eaVar.a("measurement.validation.internal_limits_internal_event_params", false);
        f29242b = eaVar.a("measurement.id.validation.internal_limits_internal_event_params", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.lq
    public final boolean a() {
        return f29241a.b().booleanValue();
    }
}
