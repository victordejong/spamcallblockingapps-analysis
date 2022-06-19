package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjm.class */
public final class zzjm implements Runnable {
    private final /* synthetic */ zzke zza;
    private final /* synthetic */ Runnable zzb;

    public zzjm(zzjh zzjhVar, zzke zzkeVar, Runnable runnable) {
        this.zza = zzkeVar;
        this.zzb = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzo();
        this.zza.zza(this.zzb);
        this.zza.zzl();
    }
}
