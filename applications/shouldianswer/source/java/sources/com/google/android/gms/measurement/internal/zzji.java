package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzji.class */
final class zzji implements Runnable {
    private final /* synthetic */ zzjb zza;

    public zzji(zzjb zzjbVar) {
        this.zza = zzjbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zza.zzb = null;
        this.zza.zza.zzal();
    }
}
