package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzka.class */
public final class zzka implements zzcz<zzjz> {
    private static zzka zza = new zzka();
    private final zzcz<zzjz> zzb;

    public zzka() {
        this(zzdc.zza(new zzkc()));
    }

    private zzka(zzcz<zzjz> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzjz) zza.zza()).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzjz zza() {
        return this.zzb.zza();
    }
}
