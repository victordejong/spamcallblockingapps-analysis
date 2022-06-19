package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzlw.class */
public final class zzlw implements zzcz<zzlv> {
    private static zzlw zza = new zzlw();
    private final zzcz<zzlv> zzb;

    public zzlw() {
        this(zzdc.zza(new zzly()));
    }

    private zzlw(zzcz<zzlv> zzczVar) {
        this.zzb = zzdc.zza((zzcz) zzczVar);
    }

    public static boolean zzb() {
        return ((zzlv) zza.zza()).zza();
    }

    @Override // com.google.android.gms.internal.measurement.zzcz
    public final /* synthetic */ zzlv zza() {
        return this.zzb.zza();
    }
}
