package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.h9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/h9.class */
final class RunnableC2272h9 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ C2318p9 f10227b;

    /* renamed from: c */
    final /* synthetic */ o9 f10228c;

    RunnableC2272h9(o9 o9Var, C2318p9 c2318p9) {
        this.f10228c = o9Var;
        this.f10227b = c2318p9;
    }

    @Override // java.lang.Runnable
    public final void run() {
        o9.C(this.f10228c, this.f10227b);
        this.f10228c.S();
    }
}
