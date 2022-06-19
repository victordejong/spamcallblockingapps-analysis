package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjc.class */
public final class zzjc implements zzcz<zzjb> {
    private static zzjc zza = new zzjc();
    private final zzcz<zzjb> zzb;

    public zzjc() {
        this(zzdc.zza(new zzje()));
    }

    private zzjc(zzcz<zzjb> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzjb) zza.zza()).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzjb zza() {
        return this.zzb.zza();
    }
}
