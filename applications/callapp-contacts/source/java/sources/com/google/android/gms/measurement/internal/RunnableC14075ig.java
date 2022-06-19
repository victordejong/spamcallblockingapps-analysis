package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.ig */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ig.class */
final class RunnableC14075ig implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC13938df f51882a;

    /* renamed from: b */
    final /* synthetic */ ServiceConnectionC14078ij f51883b;

    public RunnableC14075ig(ServiceConnectionC14078ij serviceConnectionC14078ij, AbstractC13938df abstractC13938df) {
        this.f51883b = serviceConnectionC14078ij;
        this.f51882a = abstractC13938df;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f51883b) {
            this.f51883b.f51888c = false;
            if (!this.f51883b.f51887b.m11740e()) {
                this.f51883b.f51887b.f51637t.mo11661c().f51402j.m12092a("Connected to remote service");
                this.f51883b.f51887b.m11753a(this.f51882a);
            }
        }
    }
}
