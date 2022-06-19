package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmu.class */
public final class zzmu implements zzcz<zzmt> {
    private static zzmu zza = new zzmu();
    private final zzcz<zzmt> zzb;

    public zzmu() {
        this(zzdc.zza(new zzmw()));
    }

    private zzmu(zzcz<zzmt> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzmt) zza.zza()).zza();
    }

    public static boolean zzc() {
        return ((zzmt) zza.zza()).zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzmt zza() {
        return this.zzb.zza();
    }
}
