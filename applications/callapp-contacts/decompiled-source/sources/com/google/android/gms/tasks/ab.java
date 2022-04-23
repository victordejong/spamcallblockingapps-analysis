package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/ab.class */
final class ab<TResult, TContinuationResult> implements ac, c, e, f<TContinuationResult> {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f29999a;

    /* renamed from: b  reason: collision with root package name */
    private final g<TResult, TContinuationResult> f30000b;

    /* renamed from: c  reason: collision with root package name */
    private final ah<TContinuationResult> f30001c;

    public ab(Executor executor, g<TResult, TContinuationResult> gVar, ah<TContinuationResult> ahVar) {
        this.f29999a = executor;
        this.f30000b = gVar;
        this.f30001c = ahVar;
    }

    @Override // com.google.android.gms.tasks.c
    public final void a() {
        this.f30001c.f();
    }

    @Override // com.google.android.gms.tasks.ac
    public final void a(h<TResult> hVar) {
        this.f29999a.execute(new aa(this, hVar));
    }

    @Override // com.google.android.gms.tasks.e
    public final void onFailure(Exception exc) {
        this.f30001c.a(exc);
    }

    @Override // com.google.android.gms.tasks.f
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f30001c.a((ah<TContinuationResult>) tcontinuationresult);
    }
}
