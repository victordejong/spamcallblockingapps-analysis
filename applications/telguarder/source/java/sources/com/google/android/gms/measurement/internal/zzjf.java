package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzjf.class */
public final class zzjf implements Runnable {
    final /* synthetic */ zzkd zza;
    final /* synthetic */ Runnable zzb;

    public zzjf(zzjh zzjhVar, zzkd zzkdVar, Runnable runnable) {
        this.zza = zzkdVar;
        this.zzb = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzK();
        this.zza.zzJ(this.zzb);
        this.zza.zzF();
    }
}
