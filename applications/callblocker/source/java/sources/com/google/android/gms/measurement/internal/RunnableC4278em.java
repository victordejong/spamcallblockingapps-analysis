package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.em */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/em.class */
final class RunnableC4278em implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ boolean f18784a;

    /* renamed from: b */
    private final /* synthetic */ C4275ej f18785b;

    public RunnableC4278em(C4275ej c4275ej, boolean z) {
        this.f18785b = c4275ej;
        this.f18784a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4415jo c4415jo;
        c4415jo = this.f18785b.f18746b;
        c4415jo.m4217a(this.f18784a);
    }
}
