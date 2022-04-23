package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzdk.class */
public final class zzdk implements Runnable {
    private final /* synthetic */ zzcs zzarc;
    private final /* synthetic */ long zzark;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdk(zzcs zzcsVar, long j) {
        this.zzarc = zzcsVar;
        this.zzark = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzarc.zzgp().zzanp.set(this.zzark);
        this.zzarc.zzgo().zzjk().zzg("Minimum session duration set", Long.valueOf(this.zzark));
    }
}
