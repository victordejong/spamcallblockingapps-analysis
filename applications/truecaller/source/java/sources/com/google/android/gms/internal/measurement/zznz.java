package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zznz.class */
public final class zznz implements zzny {
    public static final zzhu zza;
    public static final zzhu zzb;

    static {
        zzhr zzhrVar = new zzhr(zzhk.zza("com.google.android.gms.measurement"));
        zza = zzhrVar.zze("measurement.client.consent.suppress_1p_in_ga4f_install", true);
        zzb = zzhrVar.zze("measurement.client.consent.gmpappid_worker_thread_fix", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzny
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzny
    public final boolean zzb() {
        return ((Boolean) zzb.zzb()).booleanValue();
    }
}
