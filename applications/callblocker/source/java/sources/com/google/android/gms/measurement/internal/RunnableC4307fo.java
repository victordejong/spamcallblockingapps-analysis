package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.fo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fo.class */
final class RunnableC4307fo implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C4430kb f18939a;

    /* renamed from: b */
    private final /* synthetic */ BinderC4302fj f18940b;

    public RunnableC4307fo(BinderC4302fj binderC4302fj, C4430kb c4430kb) {
        this.f18940b = binderC4302fj;
        this.f18939a = c4430kb;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4415jo c4415jo;
        C4415jo c4415jo2;
        c4415jo = this.f18940b.f18922a;
        c4415jo.m4194m();
        c4415jo2 = this.f18940b.f18922a;
        c4415jo2.m4228a(this.f18939a);
    }
}
