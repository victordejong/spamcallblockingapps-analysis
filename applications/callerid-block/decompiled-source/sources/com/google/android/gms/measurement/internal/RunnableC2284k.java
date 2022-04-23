package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/k.class */
final class RunnableC2284k implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AbstractC2308o5 f10254b;

    /* renamed from: c */
    final /* synthetic */ AbstractC2288l f10255c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2284k(AbstractC2288l lVar, AbstractC2308o5 o5Var) {
        this.f10255c = lVar;
        this.f10254b = o5Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10254b.m3862a();
        if (C2287ka.m3885a()) {
            this.f10254b.m3860c().p(this);
            return;
        }
        boolean c = this.f10255c.m3882c();
        this.f10255c.f10266c = 0L;
        if (c) {
            this.f10255c.m3884a();
        }
    }
}
