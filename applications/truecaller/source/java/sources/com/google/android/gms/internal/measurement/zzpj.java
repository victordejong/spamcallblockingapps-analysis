package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzpj.class */
public final class zzpj implements zzpi {
    public static final zzhu zza = new zzhr(zzhk.zza("com.google.android.gms.measurement")).zze("measurement.integration.disable_firebase_instance_id", false);

    @Override // com.google.android.gms.internal.measurement.zzpi
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzpi
    public final boolean zzb() {
        return ((Boolean) zza.zzb()).booleanValue();
    }
}
