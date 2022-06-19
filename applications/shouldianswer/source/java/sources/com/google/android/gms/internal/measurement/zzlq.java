package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzlq.class */
public final class zzlq implements zzcz<zzlp> {
    private static zzlq zza = new zzlq();
    private final zzcz<zzlp> zzb;

    public zzlq() {
        this(zzdc.zza(new zzls()));
    }

    private zzlq(zzcz<zzlp> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzlp) zza.zza()).zza();
    }

    public static boolean zzc() {
        return ((zzlp) zza.zza()).zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzlp zza() {
        return this.zzb.zza();
    }
}
