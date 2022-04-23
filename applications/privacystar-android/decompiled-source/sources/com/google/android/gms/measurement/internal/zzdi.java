package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzdi.class */
public final class zzdi implements Runnable {
    private final /* synthetic */ boolean zzaes;
    private final /* synthetic */ zzcs zzarc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdi(zzcs zzcsVar, boolean z) {
        this.zzarc = zzcsVar;
        this.zzaes = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzarc.zzk(this.zzaes);
    }
}
