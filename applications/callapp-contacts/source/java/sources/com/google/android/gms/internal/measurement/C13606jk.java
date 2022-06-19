package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.jk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/jk.class */
public final class C13606jk implements AbstractC13605jj {

    /* renamed from: a */
    public static final AbstractC13463ec<Boolean> f50879a;

    /* renamed from: b */
    public static final AbstractC13463ec<Boolean> f50880b;

    static {
        C13461ea c13461ea = new C13461ea(C13452ds.m12911a());
        f50879a = c13461ea.m12907a("measurement.androidId.delete_feature", true);
        f50880b = c13461ea.m12907a("measurement.log_androidId_enabled", false);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13605jj
    /* renamed from: a */
    public final boolean mo12495a() {
        return f50879a.m12901b().booleanValue();
    }
}
