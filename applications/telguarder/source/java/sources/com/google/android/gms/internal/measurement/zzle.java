package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzle.class */
public final class zzle implements zzld {
    public static final zzfg<Boolean> zza;
    public static final zzfg<Boolean> zzb;
    public static final zzfg<Boolean> zzc;
    public static final zzfg<Long> zzd;
    public static final zzfg<Long> zze;

    static {
        zzfe zzfeVar = new zzfe(zzex.zza("com.google.android.gms.measurement"));
        zza = zzfeVar.zzb("measurement.client.consent_state_v1", true);
        zzb = zzfeVar.zzb("measurement.client.3p_consent_state_v1", false);
        zzc = zzfeVar.zzb("measurement.service.consent_state_v1_W36", true);
        zzd = zzfeVar.zza("measurement.id.service.consent_state_v1_W36", 0L);
        zze = zzfeVar.zza("measurement.service.storage_consent_support_version", 203590L);
    }

    @Override // com.google.android.gms.internal.measurement.zzld
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzld
    public final boolean zzb() {
        return zza.zze().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzld
    public final boolean zzc() {
        return zzb.zze().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzld
    public final boolean zzd() {
        return zzc.zze().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzld
    public final long zze() {
        return zze.zze().longValue();
    }
}
