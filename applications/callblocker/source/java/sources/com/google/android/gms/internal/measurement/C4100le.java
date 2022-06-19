package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.le */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/le.class */
public final class C4100le implements AbstractC4097lb {

    /* renamed from: a */
    private static final AbstractC3821bj<Boolean> f18472a;

    /* renamed from: b */
    private static final AbstractC3821bj<Double> f18473b;

    /* renamed from: c */
    private static final AbstractC3821bj<Long> f18474c;

    /* renamed from: d */
    private static final AbstractC3821bj<Long> f18475d;

    /* renamed from: e */
    private static final AbstractC3821bj<String> f18476e;

    static {
        C3827bp c3827bp = new C3827bp(C3822bk.m5864a("com.google.android.gms.measurement"));
        f18472a = c3827bp.m5858a("measurement.test.boolean_flag", false);
        f18473b = c3827bp.m5861a("measurement.test.double_flag", -3.0d);
        f18474c = c3827bp.m5860a("measurement.test.int_flag", -2L);
        f18475d = c3827bp.m5860a("measurement.test.long_flag", -1L);
        f18476e = c3827bp.m5859a("measurement.test.string_flag", "---");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4097lb
    /* renamed from: a */
    public final boolean mo4980a() {
        return f18472a.m5866c().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4097lb
    /* renamed from: b */
    public final double mo4979b() {
        return f18473b.m5866c().doubleValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4097lb
    /* renamed from: c */
    public final long mo4978c() {
        return f18474c.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4097lb
    /* renamed from: d */
    public final long mo4977d() {
        return f18475d.m5866c().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC4097lb
    /* renamed from: e */
    public final String mo4976e() {
        return f18476e.m5866c();
    }
}
