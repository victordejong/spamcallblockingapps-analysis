package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzoz.class */
public final class zzoz implements zzpa {

    /* renamed from: a */
    private static final zzdh<Boolean> f8790a;

    static {
        zzdm zzdmVar = new zzdm(zzde.m12780a("com.google.android.gms.measurement"));
        f8790a = zzdmVar.m12757d("measurement.service.ssaid_removal", true);
        zzdmVar.m12759b("measurement.id.ssaid_removal", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzpa
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzpa
    public final boolean zzb() {
        return f8790a.m12764o().booleanValue();
    }
}
