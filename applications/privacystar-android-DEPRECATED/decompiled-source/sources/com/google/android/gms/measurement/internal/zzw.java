package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzw.class */
public final class zzw implements Runnable {
    private final /* synthetic */ zzcq zzahx;
    private final /* synthetic */ zzv zzahy;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzw(zzv zzvVar, zzcq zzcqVar) {
        this.zzahy = zzvVar;
        this.zzahx = zzcqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzahx.zzgr();
        if (zzk.isMainThread()) {
            this.zzahx.zzgn().zzc(this);
            return;
        }
        boolean zzej = this.zzahy.zzej();
        this.zzahy.zzyp = 0L;
        if (zzej) {
            this.zzahy.run();
        }
    }
}
