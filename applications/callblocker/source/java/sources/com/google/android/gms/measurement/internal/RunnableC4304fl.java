package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.fl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fl.class */
final class RunnableC4304fl implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C4442kn f18929a;

    /* renamed from: b */
    private final /* synthetic */ BinderC4302fj f18930b;

    public RunnableC4304fl(BinderC4302fj binderC4302fj, C4442kn c4442kn) {
        this.f18930b = binderC4302fj;
        this.f18929a = c4442kn;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4415jo c4415jo;
        C4415jo c4415jo2;
        C4415jo c4415jo3;
        c4415jo = this.f18930b.f18922a;
        c4415jo.m4194m();
        if (this.f18929a.f19356c.m4148a() == null) {
            c4415jo3 = this.f18930b.f18922a;
            c4415jo3.m4210b(this.f18929a);
            return;
        }
        c4415jo2 = this.f18930b.f18922a;
        c4415jo2.m4226a(this.f18929a);
    }
}
