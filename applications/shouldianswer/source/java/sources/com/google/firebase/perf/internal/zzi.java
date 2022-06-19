package com.google.firebase.perf.internal;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/zzi.class */
public final class zzi implements Runnable {
    private final /* synthetic */ zzf zzcf;
    private final /* synthetic */ boolean zzcw;

    public zzi(zzf zzfVar, boolean z) {
        this.zzcf = zzfVar;
        this.zzcw = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzcf.zzc(this.zzcw);
    }
}
