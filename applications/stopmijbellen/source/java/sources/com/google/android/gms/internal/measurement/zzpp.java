package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzpp.class */
public final class zzpp implements zzpo {
    public static final zzht<Boolean> zza;
    public static final zzht<Long> zzb;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zzb("measurement.config.persist_last_modified", true);
        zzb = zzhrVar.zza("measurement.id.config.persist_last_modified", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzpo
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzpo
    public final boolean zzb() {
        return zza.zze().booleanValue();
    }
}
