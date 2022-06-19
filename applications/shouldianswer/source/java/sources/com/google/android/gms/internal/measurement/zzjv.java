package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjv.class */
public final class zzjv implements zzcz<zzjy> {
    private static zzjv zza = new zzjv();
    private final zzcz<zzjy> zzb;

    public zzjv() {
        this(zzdc.zza(new zzjx()));
    }

    private zzjv(zzcz<zzjy> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzjy) zza.zza()).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzjy zza() {
        return this.zzb.zza();
    }
}
