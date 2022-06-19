package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzou.class */
public final class zzou implements zzot {
    public static final zzhu zza;
    public static final zzhu zzb;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zze("measurement.module.pixie.ees", true);
        zzb = zzhrVar.zze("measurement.module.pixie.fix_array", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzot
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzot
    public final boolean zzb() {
        return ((Boolean) zzb.zzb()).booleanValue();
    }
}
