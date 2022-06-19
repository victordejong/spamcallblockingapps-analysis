package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.v3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/v3.class */
final class RunnableC2351v3 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ boolean f10436b;

    /* renamed from: c */
    final /* synthetic */ C2356w3 f10437c;

    public RunnableC2351v3(C2356w3 c2356w3, boolean z) {
        this.f10437c = c2356w3;
        this.f10436b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        o9 o9Var;
        o9Var = this.f10437c.f10453a;
        o9Var.B(this.f10436b);
    }
}
