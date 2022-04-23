package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.h7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/h7.class */
final class RunnableC2270h7 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ long f10224b;

    /* renamed from: c */
    final /* synthetic */ k7 f10225c;

    RunnableC2270h7(k7 k7Var, long j) {
        this.f10225c = k7Var;
        this.f10224b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((m5) this.f10225c).a.e().i(this.f10224b);
        this.f10225c.e = null;
    }
}
