package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkg.class */
public final class zzkg implements zzcz<zzkf> {
    private static zzkg zza = new zzkg();
    private final zzcz<zzkf> zzb;

    public zzkg() {
        this(zzdc.zza(new zzki()));
    }

    private zzkg(zzcz<zzkf> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzkf) zza.zza()).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzkf zza() {
        return this.zzb.zza();
    }
}
