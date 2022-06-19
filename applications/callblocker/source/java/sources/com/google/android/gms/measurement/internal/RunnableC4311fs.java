package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.fs */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fs.class */
final class RunnableC4311fs implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C4423jv f18951a;

    /* renamed from: b */
    private final /* synthetic */ C4430kb f18952b;

    /* renamed from: c */
    private final /* synthetic */ BinderC4302fj f18953c;

    public RunnableC4311fs(BinderC4302fj binderC4302fj, C4423jv c4423jv, C4430kb c4430kb) {
        this.f18953c = binderC4302fj;
        this.f18951a = c4423jv;
        this.f18952b = c4430kb;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4415jo c4415jo;
        C4415jo c4415jo2;
        C4415jo c4415jo3;
        c4415jo = this.f18953c.f18922a;
        c4415jo.m4194m();
        if (this.f18951a.m4148a() == null) {
            c4415jo3 = this.f18953c.f18922a;
            c4415jo3.m4212b(this.f18951a, this.f18952b);
            return;
        }
        c4415jo2 = this.f18953c.f18922a;
        c4415jo2.m4229a(this.f18951a, this.f18952b);
    }
}
