package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzji.class */
public final class zzji implements zzcz<zzjh> {
    private static zzji zza = new zzji();
    private final zzcz<zzjh> zzb;

    public zzji() {
        this(zzdc.zza(new zzjk()));
    }

    private zzji(zzcz<zzjh> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzjh) zza.zza()).zza();
    }

    public static boolean zzc() {
        return ((zzjh) zza.zza()).zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzjh zza() {
        return this.zzb.zza();
    }
}
