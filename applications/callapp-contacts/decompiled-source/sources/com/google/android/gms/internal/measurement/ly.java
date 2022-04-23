package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ly.class */
public final class ly implements lx {

    /* renamed from: a  reason: collision with root package name */
    public static final ec<Boolean> f29251a;

    /* renamed from: b  reason: collision with root package name */
    public static final ec<Double> f29252b;

    /* renamed from: c  reason: collision with root package name */
    public static final ec<Long> f29253c;

    /* renamed from: d  reason: collision with root package name */
    public static final ec<Long> f29254d;
    public static final ec<String> e;

    static {
        ea eaVar = new ea(ds.a());
        f29251a = eaVar.a("measurement.test.boolean_flag", false);
        f29252b = new dy(eaVar, "measurement.test.double_flag", Double.valueOf(-3.0d), true);
        f29253c = eaVar.a("measurement.test.int_flag", -2L);
        f29254d = eaVar.a("measurement.test.long_flag", -1L);
        e = eaVar.a("measurement.test.string_flag", "---");
    }

    @Override // com.google.android.gms.internal.measurement.lx
    public final boolean a() {
        return f29251a.b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.lx
    public final double b() {
        return f29252b.b().doubleValue();
    }

    @Override // com.google.android.gms.internal.measurement.lx
    public final long c() {
        return f29253c.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.lx
    public final long d() {
        return f29254d.b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.lx
    public final String e() {
        return e.b();
    }
}
