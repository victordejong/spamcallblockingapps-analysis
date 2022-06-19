package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ly */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ly.class */
public final class C13674ly implements AbstractC13673lx {

    /* renamed from: a */
    public static final AbstractC13463ec<Boolean> f51012a;

    /* renamed from: b */
    public static final AbstractC13463ec<Double> f51013b;

    /* renamed from: c */
    public static final AbstractC13463ec<Long> f51014c;

    /* renamed from: d */
    public static final AbstractC13463ec<Long> f51015d;

    /* renamed from: e */
    public static final AbstractC13463ec<String> f51016e;

    static {
        C13461ea c13461ea = new C13461ea(C13452ds.m12911a());
        f51012a = c13461ea.m12907a("measurement.test.boolean_flag", false);
        f51013b = new C13458dy(c13461ea, "measurement.test.double_flag", Double.valueOf(-3.0d), true);
        f51014c = c13461ea.m12909a("measurement.test.int_flag", -2L);
        f51015d = c13461ea.m12909a("measurement.test.long_flag", -1L);
        f51016e = c13461ea.m12908a("measurement.test.string_flag", "---");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13673lx
    /* renamed from: a */
    public final boolean mo12325a() {
        return f51012a.m12901b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13673lx
    /* renamed from: b */
    public final double mo12324b() {
        return f51013b.m12901b().doubleValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13673lx
    /* renamed from: c */
    public final long mo12323c() {
        return f51014c.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13673lx
    /* renamed from: d */
    public final long mo12322d() {
        return f51015d.m12901b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13673lx
    /* renamed from: e */
    public final String mo12321e() {
        return f51016e.m12901b();
    }
}
