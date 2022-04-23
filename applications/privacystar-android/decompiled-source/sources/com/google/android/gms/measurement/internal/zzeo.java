package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzeo.class */
final class zzeo implements Runnable {
    private final /* synthetic */ Runnable zzacf;
    private final /* synthetic */ zzfa zzasv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeo(zzel zzelVar, zzfa zzfaVar, Runnable runnable) {
        this.zzasv = zzfaVar;
        this.zzacf = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzasv.zzly();
        this.zzasv.zzg(this.zzacf);
        this.zzasv.zzlt();
    }
}
