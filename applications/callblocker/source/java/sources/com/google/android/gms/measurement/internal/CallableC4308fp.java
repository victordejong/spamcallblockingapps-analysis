package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.fp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fp.class */
final class CallableC4308fp implements Callable<List<C4442kn>> {

    /* renamed from: a */
    private final /* synthetic */ String f18941a;

    /* renamed from: b */
    private final /* synthetic */ String f18942b;

    /* renamed from: c */
    private final /* synthetic */ String f18943c;

    /* renamed from: d */
    private final /* synthetic */ BinderC4302fj f18944d;

    public CallableC4308fp(BinderC4302fj binderC4302fj, String str, String str2, String str3) {
        this.f18944d = binderC4302fj;
        this.f18941a = str;
        this.f18942b = str2;
        this.f18943c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<C4442kn> call() {
        C4415jo c4415jo;
        C4415jo c4415jo2;
        c4415jo = this.f18944d.f18922a;
        c4415jo.m4194m();
        c4415jo2 = this.f18944d.f18922a;
        return c4415jo2.m4203e().m4737b(this.f18941a, this.f18942b, this.f18943c);
    }
}
