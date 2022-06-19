package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzlf.class */
public final class zzlf implements zzcz<zzli> {
    private static zzlf zza = new zzlf();
    private final zzcz<zzli> zzb;

    public zzlf() {
        this(zzdc.zza(new zzlh()));
    }

    private zzlf(zzcz<zzli> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzli) zza.zza()).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzli zza() {
        return this.zzb.zza();
    }
}
