package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmv.class */
public final class zzmv implements zzcz<zzmy> {
    private static zzmv zza = new zzmv();
    private final zzcz<zzmy> zzb;

    public zzmv() {
        this(zzdc.zza(new zzmx()));
    }

    private zzmv(zzcz<zzmy> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzmy) zza.zza()).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzmy zza() {
        return this.zzb.zza();
    }
}
