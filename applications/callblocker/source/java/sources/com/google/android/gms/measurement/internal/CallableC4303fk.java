package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.fk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fk.class */
final class CallableC4303fk implements Callable<List<C4425jx>> {

    /* renamed from: a */
    private final /* synthetic */ C4430kb f18925a;

    /* renamed from: b */
    private final /* synthetic */ String f18926b;

    /* renamed from: c */
    private final /* synthetic */ String f18927c;

    /* renamed from: d */
    private final /* synthetic */ BinderC4302fj f18928d;

    public CallableC4303fk(BinderC4302fj binderC4302fj, C4430kb c4430kb, String str, String str2) {
        this.f18928d = binderC4302fj;
        this.f18925a = c4430kb;
        this.f18926b = str;
        this.f18927c = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<C4425jx> call() {
        C4415jo c4415jo;
        C4415jo c4415jo2;
        c4415jo = this.f18928d.f18922a;
        c4415jo.m4194m();
        c4415jo2 = this.f18928d.f18922a;
        return c4415jo2.m4203e().m4745a(this.f18925a.f19301a, this.f18926b, this.f18927c);
    }
}
