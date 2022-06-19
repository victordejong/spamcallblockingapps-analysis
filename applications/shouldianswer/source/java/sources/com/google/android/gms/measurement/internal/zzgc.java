package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgc.class */
public final class zzgc implements Runnable {
    private final /* synthetic */ zzhc zza;
    private final /* synthetic */ zzga zzb;

    public zzgc(zzga zzgaVar, zzhc zzhcVar) {
        this.zzb = zzgaVar;
        this.zza = zzhcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zza(this.zza);
        this.zzb.zza();
    }
}
