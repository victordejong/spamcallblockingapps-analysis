package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.fq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fq.class */
final class RunnableC4309fq implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C4450r f18945a;

    /* renamed from: b */
    private final /* synthetic */ String f18946b;

    /* renamed from: c */
    private final /* synthetic */ BinderC4302fj f18947c;

    public RunnableC4309fq(BinderC4302fj binderC4302fj, C4450r c4450r, String str) {
        this.f18947c = binderC4302fj;
        this.f18945a = c4450r;
        this.f18946b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4415jo c4415jo;
        C4415jo c4415jo2;
        c4415jo = this.f18947c.f18922a;
        c4415jo.m4194m();
        c4415jo2 = this.f18947c.f18922a;
        c4415jo2.m4223a(this.f18945a, this.f18946b);
    }
}
