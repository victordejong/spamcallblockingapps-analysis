package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.fw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fw.class */
final class RunnableC4315fw implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C4442kn f18961a;

    /* renamed from: b */
    private final /* synthetic */ C4430kb f18962b;

    /* renamed from: c */
    private final /* synthetic */ BinderC4302fj f18963c;

    public RunnableC4315fw(BinderC4302fj binderC4302fj, C4442kn c4442kn, C4430kb c4430kb) {
        this.f18963c = binderC4302fj;
        this.f18961a = c4442kn;
        this.f18962b = c4430kb;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4415jo c4415jo;
        C4415jo c4415jo2;
        C4415jo c4415jo3;
        c4415jo = this.f18963c.f18922a;
        c4415jo.m4194m();
        if (this.f18961a.f19356c.m4148a() == null) {
            c4415jo3 = this.f18963c.f18922a;
            c4415jo3.m4209b(this.f18961a, this.f18962b);
            return;
        }
        c4415jo2 = this.f18963c.f18922a;
        c4415jo2.m4225a(this.f18961a, this.f18962b);
    }
}
