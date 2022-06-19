package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzqe.class */
public final class zzqe implements zzqd {
    public static final zzht<Boolean> zza = new zzhr(zzhk.zza("com.google.android.gms.measurement")).zzb("measurement.scheduler.task_thread.cleanup_on_exit", false);

    @Override // com.google.android.gms.internal.measurement.zzqd
    public final boolean zza() {
        return zza.zze().booleanValue();
    }
}
