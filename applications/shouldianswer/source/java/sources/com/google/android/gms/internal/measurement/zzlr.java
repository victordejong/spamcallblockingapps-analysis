package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzlr.class */
public final class zzlr implements zzcz<zzlu> {
    private static zzlr zza = new zzlr();
    private final zzcz<zzlu> zzb;

    public zzlr() {
        this(zzdc.zza(new zzlt()));
    }

    private zzlr(zzcz<zzlu> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzlu) zza.zza()).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzlu zza() {
        return this.zzb.zza();
    }
}
