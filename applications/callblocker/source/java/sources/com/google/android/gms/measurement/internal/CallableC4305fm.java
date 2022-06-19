package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.fm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fm.class */
final class CallableC4305fm implements Callable<List<C4442kn>> {

    /* renamed from: a */
    private final /* synthetic */ C4430kb f18931a;

    /* renamed from: b */
    private final /* synthetic */ String f18932b;

    /* renamed from: c */
    private final /* synthetic */ String f18933c;

    /* renamed from: d */
    private final /* synthetic */ BinderC4302fj f18934d;

    public CallableC4305fm(BinderC4302fj binderC4302fj, C4430kb c4430kb, String str, String str2) {
        this.f18934d = binderC4302fj;
        this.f18931a = c4430kb;
        this.f18932b = str;
        this.f18933c = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<C4442kn> call() {
        C4415jo c4415jo;
        C4415jo c4415jo2;
        c4415jo = this.f18934d.f18922a;
        c4415jo.m4194m();
        c4415jo2 = this.f18934d.f18922a;
        return c4415jo2.m4203e().m4737b(this.f18931a.f19301a, this.f18932b, this.f18933c);
    }
}
