package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zznv.class */
public final class zznv implements zznu {
    public static final zzfg<Boolean> zza;
    public static final zzfg<Long> zzb;

    static {
        zzfe zzfeVar = new zzfe(zzex.zza("com.google.android.gms.measurement"));
        zza = zzfeVar.zzb("measurement.upload.file_lock_state_check", false);
        zzb = zzfeVar.zza("measurement.id.upload.file_lock_state_check", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zznu
    public final boolean zza() {
        return zza.zze().booleanValue();
    }
}
