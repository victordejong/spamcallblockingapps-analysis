package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjo.class */
public final class zzjo implements Runnable {
    public final /* synthetic */ zzkn zza;
    public final /* synthetic */ Runnable zzb;

    public zzjo(zzjq zzjqVar, zzkn zzknVar, Runnable runnable) {
        this.zza = zzknVar;
        this.zzb = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzG();
        this.zza.zzF(this.zzb);
        this.zza.zzB();
    }
}
