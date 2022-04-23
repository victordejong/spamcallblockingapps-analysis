package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzc.class */
public final class zzc implements Runnable {
    private final /* synthetic */ String zzaet;
    private final /* synthetic */ long zzaft;
    private final /* synthetic */ zza zzafu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzc(zza zzaVar, String str, long j) {
        this.zzafu = zzaVar;
        this.zzaet = str;
        this.zzaft = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzafu.zzb(this.zzaet, this.zzaft);
    }
}
