package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjp.class */
public final class zzjp implements zzcz<zzjs> {
    private static zzjp zza = new zzjp();
    private final zzcz<zzjs> zzb;

    public zzjp() {
        this(zzdc.zza(new zzjr()));
    }

    private zzjp(zzcz<zzjs> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzjs) zza.zza()).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzjs zza() {
        return this.zzb.zza();
    }
}
