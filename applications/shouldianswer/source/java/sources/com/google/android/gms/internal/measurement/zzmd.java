package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmd.class */
public final class zzmd implements zzcz<zzmg> {
    private static zzmd zza = new zzmd();
    private final zzcz<zzmg> zzb;

    public zzmd() {
        this(zzdc.zza(new zzmf()));
    }

    private zzmd(zzcz<zzmg> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzmg) zza.zza()).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzmg zza() {
        return this.zzb.zza();
    }
}
