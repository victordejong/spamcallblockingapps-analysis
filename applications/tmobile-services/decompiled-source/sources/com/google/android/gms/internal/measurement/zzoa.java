package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzoa.class */
public final class zzoa implements zznx {

    /* renamed from: a */
    private static final zzdh<Boolean> f8754a;

    /* renamed from: b */
    private static final zzdh<Boolean> f8755b;

    /* renamed from: c */
    private static final zzdh<Boolean> f8756c;

    static {
        zzdm zzdmVar = new zzdm(zzde.m12780a("com.google.android.gms.measurement"));
        f8754a = zzdmVar.m12757d("measurement.client.global_params", true);
        f8755b = zzdmVar.m12757d("measurement.service.global_params_in_payload", true);
        f8756c = zzdmVar.m12757d("measurement.service.global_params", true);
        zzdmVar.m12759b("measurement.id.service.global_params", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean zzb() {
        return f8754a.m12764o().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean zzc() {
        return f8755b.m12764o().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean zzd() {
        return f8756c.m12764o().booleanValue();
    }
}
