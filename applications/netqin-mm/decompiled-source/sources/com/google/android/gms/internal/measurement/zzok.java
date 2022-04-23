package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzok.class */
public final class zzok implements zzol {

    /* renamed from: a */
    public static final zzdh<Long> f29651a;

    static {
        zzdm zzdmVar = new zzdm(zzde.m9849a("com.google.android.gms.measurement"));
        zzdmVar.m9829a("measurement.id.max_bundles_per_iteration", 0L);
        f29651a = zzdmVar.m9829a("measurement.max_bundles_per_iteration", 2L);
    }

    @Override // com.google.android.gms.internal.measurement.zzol
    public final long zza() {
        return f29651a.m9838b().longValue();
    }
}
