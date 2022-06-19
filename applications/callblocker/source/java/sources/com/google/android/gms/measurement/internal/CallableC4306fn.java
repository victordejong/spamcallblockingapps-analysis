package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.fn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fn.class */
final class CallableC4306fn implements Callable<List<C4425jx>> {

    /* renamed from: a */
    private final /* synthetic */ String f18935a;

    /* renamed from: b */
    private final /* synthetic */ String f18936b;

    /* renamed from: c */
    private final /* synthetic */ String f18937c;

    /* renamed from: d */
    private final /* synthetic */ BinderC4302fj f18938d;

    public CallableC4306fn(BinderC4302fj binderC4302fj, String str, String str2, String str3) {
        this.f18938d = binderC4302fj;
        this.f18935a = str;
        this.f18936b = str2;
        this.f18937c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<C4425jx> call() {
        C4415jo c4415jo;
        C4415jo c4415jo2;
        c4415jo = this.f18938d.f18922a;
        c4415jo.m4194m();
        c4415jo2 = this.f18938d.f18922a;
        return c4415jo2.m4203e().m4745a(this.f18935a, this.f18936b, this.f18937c);
    }
}
