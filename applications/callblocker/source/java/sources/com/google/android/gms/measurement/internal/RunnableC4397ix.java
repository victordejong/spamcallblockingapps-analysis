package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.ix */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ix.class */
public final class RunnableC4397ix implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C4415jo f19195a;

    /* renamed from: b */
    private final /* synthetic */ Runnable f19196b;

    public RunnableC4397ix(C4392is c4392is, C4415jo c4415jo, Runnable runnable) {
        this.f19195a = c4415jo;
        this.f19196b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19195a.m4194m();
        this.f19195a.m4222a(this.f19196b);
        this.f19195a.m4195l();
    }
}
