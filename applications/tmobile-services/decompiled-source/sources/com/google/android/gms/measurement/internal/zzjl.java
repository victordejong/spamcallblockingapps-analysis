package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjl.class */
final class zzjl implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzej f9606f;

    /* renamed from: g */
    private final /* synthetic */ zzji f9607g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjl(zzji zzjiVar, zzej zzejVar) {
        this.f9607g = zzjiVar;
        this.f9606f = zzejVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f9607g) {
            this.f9607g.f9594a = false;
            if (!this.f9607g.f9596c.m11188V()) {
                this.f9607g.f9596c.mo11081c().m11552L().m11540a("Connected to service");
                this.f9607g.f9596c.m11200J(this.f9606f);
            }
        }
    }
}
