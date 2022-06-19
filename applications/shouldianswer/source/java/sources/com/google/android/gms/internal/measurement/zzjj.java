package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjj.class */
public final class zzjj implements zzcz<zzjm> {
    private static zzjj zza = new zzjj();
    private final zzcz<zzjm> zzb;

    public zzjj() {
        this(zzdc.zza(new zzjl()));
    }

    private zzjj(zzcz<zzjm> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzjm) zza.zza()).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzjm zza() {
        return this.zzb.zza();
    }
}
