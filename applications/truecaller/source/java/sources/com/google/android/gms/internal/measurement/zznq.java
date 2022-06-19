package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zznq.class */
public final class zznq implements zznp {
    public static final zzhu zza;
    public static final zzhu zzb;
    public static final zzhu zzc;
    public static final zzhu zzd;

    static {
        zzhr zza2 = new zzhr(zzhk.zza("com.google.android.gms.measurement")).zza();
        zza = zza2.zze("measurement.collection.event_safelist", true);
        zzb = zza2.zze("measurement.service.store_null_safelist", false);
        zzc = zza2.zze("measurement.service.store_safelist", false);
        zzd = zza2.zzc("measurement.id.service.store_safelist", 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final boolean zzb() {
        return ((Boolean) zzb.zzb()).booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zznp
    public final boolean zzc() {
        return ((Boolean) zzc.zzb()).booleanValue();
    }
}
