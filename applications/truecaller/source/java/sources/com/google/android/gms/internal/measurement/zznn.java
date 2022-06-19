package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zznn.class */
public final class zznn implements zznm {
    public static final zzhu zza;
    public static final zzhu zzb;

    static {
        zzhr zza2 = new zzhr(zzhk.zza("com.google.android.gms.measurement")).zza();
        zza = zza2.zze("measurement.enhanced_campaign.client", false);
        zzb = zza2.zze("measurement.enhanced_campaign.service", false);
    }

    @Override // com.google.android.gms.internal.measurement.zznm
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zznm
    public final boolean zzb() {
        return ((Boolean) zza.zzb()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznm
    public final boolean zzc() {
        return ((Boolean) zzb.zzb()).booleanValue();
    }
}
