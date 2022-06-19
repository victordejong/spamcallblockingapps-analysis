package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/k.class */
final class RunnableC2284k implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AbstractC2308o5 f10254b;

    /* renamed from: c */
    final /* synthetic */ AbstractC2288l f10255c;

    public RunnableC2284k(AbstractC2288l abstractC2288l, AbstractC2308o5 abstractC2308o5) {
        this.f10255c = abstractC2288l;
        this.f10254b = abstractC2308o5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10254b.m3862a();
        if (C2287ka.m3885a()) {
            this.f10254b.m3860c().p(this);
            return;
        }
        boolean m3882c = this.f10255c.m3882c();
        this.f10255c.f10266c = 0L;
        if (!m3882c) {
            return;
        }
        this.f10255c.m3884a();
    }
}
