package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.li */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/li.class */
public final class C13658li implements AbstractC13657lh {

    /* renamed from: a */
    public static final AbstractC13463ec<Long> f50988a;

    /* renamed from: b */
    public static final AbstractC13463ec<Boolean> f50989b;

    /* renamed from: c */
    public static final AbstractC13463ec<Boolean> f50990c;

    /* renamed from: d */
    public static final AbstractC13463ec<Boolean> f50991d;

    /* renamed from: e */
    public static final AbstractC13463ec<Long> f50992e;

    static {
        C13461ea c13461ea = new C13461ea(C13452ds.m12911a());
        f50988a = c13461ea.m12909a("measurement.id.lifecycle.app_in_background_parameter", 0L);
        f50989b = c13461ea.m12907a("measurement.lifecycle.app_backgrounded_engagement", false);
        f50990c = c13461ea.m12907a("measurement.lifecycle.app_backgrounded_tracking", true);
        f50991d = c13461ea.m12907a("measurement.lifecycle.app_in_background_parameter", false);
        f50992e = c13461ea.m12909a("measurement.id.lifecycle.app_backgrounded_tracking", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13657lh
    /* renamed from: a */
    public final boolean mo12352a() {
        return f50989b.m12901b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13657lh
    /* renamed from: b */
    public final boolean mo12351b() {
        return f50991d.m12901b().booleanValue();
    }
}
