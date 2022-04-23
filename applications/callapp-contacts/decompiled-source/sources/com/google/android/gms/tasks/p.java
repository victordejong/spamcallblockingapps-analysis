package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/p.class */
final class p<TResult, TContinuationResult> implements ac<TResult> {

    /* renamed from: a  reason: collision with root package name */
    final b<TResult, TContinuationResult> f30024a;

    /* renamed from: b  reason: collision with root package name */
    final ah<TContinuationResult> f30025b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f30026c;

    public p(Executor executor, b<TResult, TContinuationResult> bVar, ah<TContinuationResult> ahVar) {
        this.f30026c = executor;
        this.f30024a = bVar;
        this.f30025b = ahVar;
    }

    @Override // com.google.android.gms.tasks.ac
    public final void a(h<TResult> hVar) {
        this.f30026c.execute(new o(this, hVar));
    }
}
