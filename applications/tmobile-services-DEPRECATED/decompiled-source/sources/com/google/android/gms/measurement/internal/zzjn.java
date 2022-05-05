package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjn.class */
final class zzjn implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzej f9609f;

    /* renamed from: g */
    private final /* synthetic */ zzji f9610g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjn(zzji zzjiVar, zzej zzejVar) {
        this.f9610g = zzjiVar;
        this.f9609f = zzejVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f9610g) {
            this.f9610g.f9594a = false;
            if (!this.f9610g.f9596c.m11188V()) {
                this.f9610g.f9596c.mo11081c().m11553K().m11540a("Connected to remote service");
                this.f9610g.f9596c.m11200J(this.f9609f);
            }
        }
    }
}
