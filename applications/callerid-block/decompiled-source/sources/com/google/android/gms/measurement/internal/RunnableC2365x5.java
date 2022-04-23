package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.x5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/x5.class */
final /* synthetic */ class RunnableC2365x5 implements Runnable {

    /* renamed from: b */
    private final v6 f10469b;

    RunnableC2365x5(v6 v6Var) {
        this.f10469b = v6Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        v6 v6Var = this.f10469b;
        v6Var.f();
        if (!((m5) v6Var).a.A().r.m3807a()) {
            long a = ((m5) v6Var).a.A().s.m4026a();
            ((m5) v6Var).a.A().s.m4025b(1 + a);
            ((m5) v6Var).a.z();
            if (a >= 5) {
                ((m5) v6Var).a.t().p().m3876a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                ((m5) v6Var).a.A().r.m3806b(true);
                return;
            }
            ((m5) v6Var).a.p();
            return;
        }
        ((m5) v6Var).a.t().u().m3876a("Deferred Deep Link already retrieved. Not fetching again.");
    }
}
