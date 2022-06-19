package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.ft */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ft.class */
final class CallableC4312ft implements Callable<byte[]> {

    /* renamed from: a */
    private final /* synthetic */ C4450r f18954a;

    /* renamed from: b */
    private final /* synthetic */ String f18955b;

    /* renamed from: c */
    private final /* synthetic */ BinderC4302fj f18956c;

    public CallableC4312ft(BinderC4302fj binderC4302fj, C4450r c4450r, String str) {
        this.f18956c = binderC4302fj;
        this.f18954a = c4450r;
        this.f18955b = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ byte[] call() {
        C4415jo c4415jo;
        C4415jo c4415jo2;
        c4415jo = this.f18956c.f18922a;
        c4415jo.m4194m();
        c4415jo2 = this.f18956c.f18922a;
        return c4415jo2.m4200g().m4368a(this.f18954a, this.f18955b);
    }
}
