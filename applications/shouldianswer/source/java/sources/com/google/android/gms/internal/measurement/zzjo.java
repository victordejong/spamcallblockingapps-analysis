package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjo.class */
public final class zzjo implements zzcz<zzjn> {
    private static zzjo zza = new zzjo();
    private final zzcz<zzjn> zzb;

    public zzjo() {
        this(zzdc.zza(new zzjq()));
    }

    private zzjo(zzcz<zzjn> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzjn) zza.zza()).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzjn zza() {
        return this.zzb.zza();
    }
}
