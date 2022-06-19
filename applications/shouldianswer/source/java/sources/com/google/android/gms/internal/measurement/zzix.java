package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzix.class */
public final class zzix implements zzcz<zzja> {
    private static zzix zza = new zzix();
    private final zzcz<zzja> zzb;

    public zzix() {
        this(zzdc.zza(new zziz()));
    }

    private zzix(zzcz<zzja> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzja) zza.zza()).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzja zza() {
        return this.zzb.zza();
    }
}
