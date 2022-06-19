package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.fr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fr.class */
final class RunnableC4310fr implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C4450r f18948a;

    /* renamed from: b */
    private final /* synthetic */ C4430kb f18949b;

    /* renamed from: c */
    private final /* synthetic */ BinderC4302fj f18950c;

    public RunnableC4310fr(BinderC4302fj binderC4302fj, C4450r c4450r, C4430kb c4430kb) {
        this.f18950c = binderC4302fj;
        this.f18948a = c4450r;
        this.f18949b = c4430kb;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4415jo c4415jo;
        C4415jo c4415jo2;
        C4450r m4448b = this.f18950c.m4448b(this.f18948a, this.f18949b);
        c4415jo = this.f18950c.f18922a;
        c4415jo.m4194m();
        c4415jo2 = this.f18950c.f18922a;
        c4415jo2.m4224a(m4448b, this.f18949b);
    }
}
