package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.g8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/g8.class */
final class RunnableC2264g8 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AbstractC2251f3 f10214b;

    /* renamed from: c */
    final /* synthetic */ j8 f10215c;

    RunnableC2264g8(j8 j8Var, AbstractC2251f3 f3Var) {
        this.f10215c = j8Var;
        this.f10214b = f3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f10215c) {
            j8.g(this.f10215c, false);
            if (!this.f10215c.c.H()) {
                ((m5) this.f10215c.c).a.t().u().m3876a("Connected to remote service");
                this.f10215c.c.q(this.f10214b);
            }
        }
    }
}
