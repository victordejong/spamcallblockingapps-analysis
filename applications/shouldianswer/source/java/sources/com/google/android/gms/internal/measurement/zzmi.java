package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmi.class */
public final class zzmi implements zzcz<zzmh> {
    private static zzmi zza = new zzmi();
    private final zzcz<zzmh> zzb;

    public zzmi() {
        this(zzdc.zza(new zzmk()));
    }

    private zzmi(zzcz<zzmh> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzmh) zza.zza()).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzmh zza() {
        return this.zzb.zza();
    }
}
