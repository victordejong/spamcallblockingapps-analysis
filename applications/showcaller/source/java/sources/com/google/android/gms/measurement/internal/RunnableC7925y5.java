package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.y5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/y5.class */
final class RunnableC7925y5 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ boolean f35820d;

    /* renamed from: e */
    final /* synthetic */ C7893v6 f35821e;

    public RunnableC7925y5(C7893v6 c7893v6, boolean z) {
        this.f35821e = c7893v6;
        this.f35820d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean m6022i = this.f35821e.f35460a.m6022i();
        boolean m6023h = this.f35821e.f35460a.m6023h();
        this.f35821e.f35460a.m6024g(this.f35820d);
        if (m6023h == this.f35820d) {
            this.f35821e.f35460a.mo6047C().m6187u().m6215b("Default data collection state already set to", Boolean.valueOf(this.f35820d));
        }
        if (this.f35821e.f35460a.m6022i() == m6022i || this.f35821e.f35460a.m6022i() != this.f35821e.f35460a.m6023h()) {
            this.f35821e.f35460a.mo6047C().m6190r().m6214c("Default data collection is different than actual status", Boolean.valueOf(this.f35820d), Boolean.valueOf(m6022i));
        }
        this.f35821e.m5928M();
    }
}
