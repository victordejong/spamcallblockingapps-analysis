package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzek.class */
final class zzek implements Runnable {
    private final /* synthetic */ zzef zzasp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzek(zzef zzefVar) {
        this.zzasp = zzefVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzasp.zzasg.zzasa = null;
        this.zzasp.zzasg.zzlf();
    }
}
