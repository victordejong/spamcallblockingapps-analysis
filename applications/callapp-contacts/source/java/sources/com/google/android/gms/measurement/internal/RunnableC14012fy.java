package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.fy */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fy.class */
final class RunnableC14012fy implements Runnable {

    /* renamed from: a */
    final /* synthetic */ boolean f51662a;

    /* renamed from: b */
    final /* synthetic */ C14036gv f51663b;

    public RunnableC14012fy(C14036gv c14036gv, boolean z) {
        this.f51663b = c14036gv;
        this.f51662a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean m11979r = this.f51663b.f51637t.m11979r();
        boolean m11980q = this.f51663b.f51637t.m11980q();
        this.f51663b.f51637t.f51535m = Boolean.valueOf(this.f51662a);
        if (m11980q == this.f51662a) {
            this.f51663b.f51637t.mo11661c().f51403k.m12091a("Default data collection state already set to", Boolean.valueOf(this.f51662a));
        }
        if (this.f51663b.f51637t.m11979r() == m11979r || this.f51663b.f51637t.m11979r() != this.f51663b.f51637t.m11980q()) {
            this.f51663b.f51637t.mo11661c().f51400h.m12090a("Default data collection is different than actual status", Boolean.valueOf(this.f51662a), Boolean.valueOf(m11979r));
        }
        this.f51663b.m11841o();
    }
}
