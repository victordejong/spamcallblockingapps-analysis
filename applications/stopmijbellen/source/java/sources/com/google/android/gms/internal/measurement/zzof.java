package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzof.class */
public final class zzof implements zzoe {
    public static final zzht<Boolean> zza = new zzhr(zzhk.zza("com.google.android.gms.measurement")).zzb("measurement.client.consent.suppress_1p_in_ga4f_install", true);

    @Override // com.google.android.gms.internal.measurement.zzoe
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzoe
    public final boolean zzb() {
        return zza.zze().booleanValue();
    }
}
