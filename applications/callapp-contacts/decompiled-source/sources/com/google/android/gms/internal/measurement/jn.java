package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/jn.class */
public final class jn implements jm {

    /* renamed from: a  reason: collision with root package name */
    public static final ec<Boolean> f29159a;

    /* renamed from: b  reason: collision with root package name */
    public static final ec<Boolean> f29160b;

    /* renamed from: c  reason: collision with root package name */
    public static final ec<Long> f29161c;

    static {
        ea eaVar = new ea(ds.a());
        f29159a = eaVar.a("measurement.frontend.directly_maybe_log_error_events", false);
        f29160b = eaVar.a("measurement.upload.directly_maybe_log_error_events", true);
        f29161c = eaVar.a("measurement.id.frontend.directly_maybe_log_error_events", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.jm
    public final boolean a() {
        return f29159a.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.jm
    public final boolean b() {
        return f29160b.b().booleanValue();
    }
}
