package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zziw.class */
public final class zziw implements zzcz<zziv> {
    private static zziw zza = new zziw();
    private final zzcz<zziv> zzb;

    public zziw() {
        this(zzdc.zza(new zziy()));
    }

    private zziw(zzcz<zziv> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zziv) zza.zza()).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zziv zza() {
        return this.zzb.zza();
    }
}
