package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.d8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/d8.class */
final class RunnableC2243d8 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AbstractC2251f3 f10153b;

    /* renamed from: c */
    final /* synthetic */ j8 f10154c;

    RunnableC2243d8(j8 j8Var, AbstractC2251f3 abstractC2251f3) {
        this.f10154c = j8Var;
        this.f10153b = abstractC2251f3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f10154c) {
            j8.g(this.f10154c, false);
            if (!this.f10154c.c.H()) {
                ((m5) this.f10154c.c).a.t().w().m3876a("Connected to service");
                this.f10154c.c.q(this.f10153b);
            }
        }
    }
}
