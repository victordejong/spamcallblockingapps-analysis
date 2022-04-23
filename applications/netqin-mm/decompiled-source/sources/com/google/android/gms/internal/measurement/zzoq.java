package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzoq.class */
public final class zzoq implements zzor {

    /* renamed from: a */
    public static final zzdh<Boolean> f29657a;

    /* renamed from: b */
    public static final zzdh<Double> f29658b;

    /* renamed from: c */
    public static final zzdh<Long> f29659c;

    /* renamed from: d */
    public static final zzdh<Long> f29660d;

    /* renamed from: e */
    public static final zzdh<String> f29661e;

    static {
        zzdm zzdmVar = new zzdm(zzde.m9849a("com.google.android.gms.measurement"));
        f29657a = zzdmVar.m9827a("measurement.test.boolean_flag", false);
        f29658b = zzdmVar.m9830a("measurement.test.double_flag", -3.0d);
        f29659c = zzdmVar.m9829a("measurement.test.int_flag", -2L);
        f29660d = zzdmVar.m9829a("measurement.test.long_flag", -1L);
        f29661e = zzdmVar.m9828a("measurement.test.string_flag", "---");
    }

    @Override // com.google.android.gms.internal.measurement.zzor
    /* renamed from: c */
    public final String mo9469c() {
        return f29661e.m9838b();
    }

    @Override // com.google.android.gms.internal.measurement.zzor
    public final boolean zza() {
        return f29657a.m9838b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzor
    public final double zzb() {
        return f29658b.m9838b().doubleValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzor
    public final long zzc() {
        return f29659c.m9838b().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzor
    public final long zzd() {
        return f29660d.m9838b().longValue();
    }
}
