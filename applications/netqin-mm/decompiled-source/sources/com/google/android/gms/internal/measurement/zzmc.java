package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmc.class */
public final class zzmc implements zzmd {

    /* renamed from: a */
    public static final zzdh<Boolean> f29544a;

    /* renamed from: b */
    public static final zzdh<Long> f29545b;

    static {
        zzdm zzdmVar = new zzdm(zzde.m9849a("com.google.android.gms.measurement"));
        f29544a = zzdmVar.m9827a("measurement.sdk.attribution.cache", true);
        f29545b = zzdmVar.m9829a("measurement.sdk.attribution.cache.ttl", 604800000L);
    }

    @Override // com.google.android.gms.internal.measurement.zzmd
    public final boolean zza() {
        return f29544a.m9838b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmd
    public final long zzb() {
        return f29545b.m9838b().longValue();
    }
}
