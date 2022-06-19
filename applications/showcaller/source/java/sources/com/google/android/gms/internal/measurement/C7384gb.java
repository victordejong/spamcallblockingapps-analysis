package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.gb */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gb.class */
public final class C7384gb implements AbstractC7370fb {

    /* renamed from: a */
    public static final AbstractC7607x3<Boolean> f34488a;

    /* renamed from: b */
    public static final AbstractC7607x3<Double> f34489b;

    /* renamed from: c */
    public static final AbstractC7607x3<Long> f34490c;

    /* renamed from: d */
    public static final AbstractC7607x3<Long> f34491d;

    /* renamed from: e */
    public static final AbstractC7607x3<String> f34492e;

    static {
        C7581v3 c7581v3 = new C7581v3(C7474n3.m7080a("com.google.android.gms.measurement"));
        f34488a = c7581v3.m6834b("measurement.test.boolean_flag", false);
        f34489b = c7581v3.m6833c("measurement.test.double_flag", -3.0d);
        f34490c = c7581v3.m6835a("measurement.test.int_flag", -2L);
        f34491d = c7581v3.m6835a("measurement.test.long_flag", -1L);
        f34492e = c7581v3.m6832d("measurement.test.string_flag", "---");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7370fb
    /* renamed from: a */
    public final String mo7379a() {
        return f34492e.m6771e();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7370fb
    /* renamed from: b */
    public final double mo7378b() {
        return f34489b.m6771e().doubleValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7370fb
    /* renamed from: c */
    public final long mo7377c() {
        return f34490c.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7370fb
    /* renamed from: e */
    public final long mo7376e() {
        return f34491d.m6771e().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7370fb
    public final boolean zza() {
        return f34488a.m6771e().booleanValue();
    }
}
