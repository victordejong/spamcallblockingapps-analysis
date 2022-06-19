package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.id */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/id.class */
final class RunnableC14072id implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC13938df f51873a;

    /* renamed from: b */
    final /* synthetic */ ServiceConnectionC14078ij f51874b;

    public RunnableC14072id(ServiceConnectionC14078ij serviceConnectionC14078ij, AbstractC13938df abstractC13938df) {
        this.f51874b = serviceConnectionC14078ij;
        this.f51873a = abstractC13938df;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f51874b) {
            this.f51874b.f51888c = false;
            if (!this.f51874b.f51887b.m11740e()) {
                this.f51874b.f51887b.f51637t.mo11661c().f51403k.m12092a("Connected to service");
                this.f51874b.f51887b.m11753a(this.f51873a);
            }
        }
    }
}
