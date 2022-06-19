package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zznt.class */
public final class zznt implements zzns {
    public static final zzht<Boolean> zza;
    public static final zzht<Boolean> zzb;
    public static final zzht<Boolean> zzc;
    public static final zzht<Long> zzd;
    public static final zzht<Long> zze;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zzb("measurement.client.consent_state_v1", true);
        zzb = zzhrVar.zzb("measurement.client.3p_consent_state_v1", true);
        zzc = zzhrVar.zzb("measurement.service.consent_state_v1_W36", true);
        zzd = zzhrVar.zza("measurement.id.service.consent_state_v1_W36", 0L);
        zze = zzhrVar.zza("measurement.service.storage_consent_support_version", 203590L);
    }

    @Override // com.google.android.gms.internal.measurement.zzns
    public final long zza() {
        return zze.zze().longValue();
    }
}
