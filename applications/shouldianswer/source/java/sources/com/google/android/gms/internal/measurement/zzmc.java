package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmc.class */
public final class zzmc implements zzcz<zzmb> {
    private static zzmc zza = new zzmc();
    private final zzcz<zzmb> zzb;

    public zzmc() {
        this(zzdc.zza(new zzme()));
    }

    private zzmc(zzcz<zzmb> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzmb) zza.zza()).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzmb zza() {
        return this.zzb.zza();
    }
}
