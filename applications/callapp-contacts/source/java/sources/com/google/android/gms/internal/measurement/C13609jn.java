package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.jn */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/jn.class */
public final class C13609jn implements AbstractC13608jm {

    /* renamed from: a */
    public static final AbstractC13463ec<Boolean> f50883a;

    /* renamed from: b */
    public static final AbstractC13463ec<Boolean> f50884b;

    /* renamed from: c */
    public static final AbstractC13463ec<Long> f50885c;

    static {
        C13461ea c13461ea = new C13461ea(C13452ds.m12911a());
        f50883a = c13461ea.m12907a("measurement.frontend.directly_maybe_log_error_events", false);
        f50884b = c13461ea.m12907a("measurement.upload.directly_maybe_log_error_events", true);
        f50885c = c13461ea.m12909a("measurement.id.frontend.directly_maybe_log_error_events", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13608jm
    /* renamed from: a */
    public final boolean mo12491a() {
        return f50883a.m12901b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13608jm
    /* renamed from: b */
    public final boolean mo12490b() {
        return f50884b.m12901b().booleanValue();
    }
}
