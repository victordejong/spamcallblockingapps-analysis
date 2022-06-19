package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.o8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/o8.class */
public final class RunnableC2311o8 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ o9 f10344b;

    /* renamed from: c */
    final /* synthetic */ Runnable f10345c;

    public RunnableC2311o8(C2325q8 c2325q8, o9 o9Var, Runnable runnable) {
        this.f10344b = o9Var;
        this.f10345c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10344b.k();
        this.f10344b.j(this.f10345c);
        this.f10344b.f();
    }
}
