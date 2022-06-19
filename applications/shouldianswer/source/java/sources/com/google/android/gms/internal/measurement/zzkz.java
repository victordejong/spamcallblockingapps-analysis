package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkz.class */
public final class zzkz implements zzcz<zzlc> {
    private static zzkz zza = new zzkz();
    private final zzcz<zzlc> zzb;

    public zzkz() {
        this(zzdc.zza(new zzlb()));
    }

    private zzkz(zzcz<zzlc> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzlc) zza.zza()).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzlc zza() {
        return this.zzb.zza();
    }
}
