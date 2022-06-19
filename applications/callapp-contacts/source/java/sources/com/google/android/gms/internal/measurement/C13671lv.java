package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.lv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/lv.class */
public final class C13671lv implements AbstractC13669lt {

    /* renamed from: a */
    public static final AbstractC13463ec<Boolean> f51008a;

    /* renamed from: b */
    public static final AbstractC13463ec<Long> f51009b;

    static {
        C13461ea c13461ea = new C13461ea(C13452ds.m12911a());
        f51008a = c13461ea.m12907a("measurement.config.persist_last_modified", false);
        f51009b = c13461ea.m12909a("measurement.id.config.persist_last_modified", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13669lt
    /* renamed from: a */
    public final boolean mo12332a() {
        return f51008a.m12901b().booleanValue();
    }
}
