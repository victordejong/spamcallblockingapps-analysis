package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zznb.class */
public final class zznb implements zzcz<zzne> {
    private static zznb zza = new zznb();
    private final zzcz<zzne> zzb;

    public zznb() {
        this(zzdc.zza(new zznd()));
    }

    private zznb(zzcz<zzne> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzne) zza.zza()).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzne zza() {
        return this.zzb.zza();
    }
}
