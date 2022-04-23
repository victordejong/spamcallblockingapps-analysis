package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzny.class */
public final class zzny implements zznz {

    /* renamed from: a */
    public static final zzdh<Boolean> f29632a;

    /* renamed from: b */
    public static final zzdh<Boolean> f29633b;

    /* renamed from: c */
    public static final zzdh<Boolean> f29634c;

    static {
        zzdm zzdmVar = new zzdm(zzde.m9849a("com.google.android.gms.measurement"));
        f29632a = zzdmVar.m9827a("measurement.client.global_params", true);
        f29633b = zzdmVar.m9827a("measurement.service.global_params_in_payload", true);
        f29634c = zzdmVar.m9827a("measurement.service.global_params", true);
        zzdmVar.m9829a("measurement.id.service.global_params", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zznz
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zznz
    public final boolean zzb() {
        return f29632a.m9838b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznz
    public final boolean zzc() {
        return f29633b.m9838b().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznz
    public final boolean zzd() {
        return f29634c.m9838b().booleanValue();
    }
}
