package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzla.class */
public final class zzla implements zzkx {
    private static final zzcl<Boolean> zza;
    private static final zzcl<Boolean> zzb;

    static {
        zzcr zzcrVar = new zzcr(zzcm.zza("com.google.android.gms.measurement"));
        zza = zzcrVar.zza("measurement.collection.efficient_engagement_reporting_enabled", false);
        zzb = zzcrVar.zza("measurement.collection.redundant_engagement_removal_enabled", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzkx
    public final boolean zza() {
        return zza.zzc().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzkx
    public final boolean zzb() {
        return zzb.zzc().booleanValue();
    }
}
