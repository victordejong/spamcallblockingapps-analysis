package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhu.class */
public final class zzhu implements Runnable {
    private final /* synthetic */ boolean zza;
    private final /* synthetic */ zzhb zzb;

    public zzhu(zzhb zzhbVar, boolean z) {
        this.zzb = zzhbVar;
        this.zza = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzd(this.zza);
    }
}
