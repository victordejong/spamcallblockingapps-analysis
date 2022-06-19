package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zznw.class */
public final class zznw implements zznv {
    public static final zzht<Boolean> zza;
    public static final zzht<Boolean> zzb;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zzb("measurement.euid.client.dev", false);
        zzb = zzhrVar.zzb("measurement.euid.service", false);
    }

    @Override // com.google.android.gms.internal.measurement.zznv
    public final boolean zza() {
        return zza.zze().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznv
    public final boolean zzb() {
        return zzb.zze().booleanValue();
    }
}
