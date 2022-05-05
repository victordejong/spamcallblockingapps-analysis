package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzcw.class */
public final class zzcw implements Runnable {
    private final /* synthetic */ zzcs zzarc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcw(zzcs zzcsVar) {
        this.zzarc = zzcsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzarc.zzadj.zzj(true);
    }
}
