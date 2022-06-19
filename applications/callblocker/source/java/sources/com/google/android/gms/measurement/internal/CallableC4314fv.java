package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.fv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fv.class */
final class CallableC4314fv implements Callable<List<C4425jx>> {

    /* renamed from: a */
    private final /* synthetic */ C4430kb f18959a;

    /* renamed from: b */
    private final /* synthetic */ BinderC4302fj f18960b;

    public CallableC4314fv(BinderC4302fj binderC4302fj, C4430kb c4430kb) {
        this.f18960b = binderC4302fj;
        this.f18959a = c4430kb;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<C4425jx> call() {
        C4415jo c4415jo;
        C4415jo c4415jo2;
        c4415jo = this.f18960b.f18922a;
        c4415jo.m4194m();
        c4415jo2 = this.f18960b.f18922a;
        return c4415jo2.m4203e().m4752a(this.f18959a.f19301a);
    }
}
