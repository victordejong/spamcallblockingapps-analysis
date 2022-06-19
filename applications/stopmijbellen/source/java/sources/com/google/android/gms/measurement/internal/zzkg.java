package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkg.class */
public final class zzkg implements Runnable {
    public final /* synthetic */ zzko zza;
    public final /* synthetic */ zzkn zzb;

    public zzkg(zzkn zzknVar, zzko zzkoVar) {
        this.zzb = zzknVar;
        this.zza = zzkoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkn.zzW(this.zzb, this.zza);
        this.zzb.zzc();
    }
}
