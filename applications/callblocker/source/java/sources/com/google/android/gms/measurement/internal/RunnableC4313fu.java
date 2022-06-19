package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.fu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fu.class */
final class RunnableC4313fu implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C4430kb f18957a;

    /* renamed from: b */
    private final /* synthetic */ BinderC4302fj f18958b;

    public RunnableC4313fu(BinderC4302fj binderC4302fj, C4430kb c4430kb) {
        this.f18958b = binderC4302fj;
        this.f18957a = c4430kb;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4415jo c4415jo;
        C4415jo c4415jo2;
        c4415jo = this.f18958b.f18922a;
        c4415jo.m4194m();
        c4415jo2 = this.f18958b.f18922a;
        c4415jo2.m4211b(this.f18957a);
    }
}
