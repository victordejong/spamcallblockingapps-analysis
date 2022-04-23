package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/r.class */
final class r<TResult, TContinuationResult> implements ac, c, e, f<TContinuationResult> {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f30029a;

    /* renamed from: b  reason: collision with root package name */
    private final b<TResult, h<TContinuationResult>> f30030b;

    /* renamed from: c  reason: collision with root package name */
    private final ah<TContinuationResult> f30031c;

    public r(Executor executor, b<TResult, h<TContinuationResult>> bVar, ah<TContinuationResult> ahVar) {
        this.f30029a = executor;
        this.f30030b = bVar;
        this.f30031c = ahVar;
    }

    @Override // com.google.android.gms.tasks.c
    public final void a() {
        this.f30031c.f();
    }

    @Override // com.google.android.gms.tasks.ac
    public final void a(h<TResult> hVar) {
        this.f30029a.execute(new q(this, hVar));
    }

    @Override // com.google.android.gms.tasks.e
    public final void onFailure(Exception exc) {
        this.f30031c.a(exc);
    }

    @Override // com.google.android.gms.tasks.f
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f30031c.a((ah<TContinuationResult>) tcontinuationresult);
    }
}
