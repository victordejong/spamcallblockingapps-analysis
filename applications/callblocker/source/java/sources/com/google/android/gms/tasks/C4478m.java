package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/m.class */
final class C4478m<TResult, TContinuationResult> implements AbstractC4464b, AbstractC4466d, AbstractC4467e<TContinuationResult>, AbstractC4490y<TResult> {

    /* renamed from: a */
    private final Executor f19518a;

    /* renamed from: b */
    private final AbstractC4459a<TResult, AbstractC4469g<TContinuationResult>> f19519b;

    /* renamed from: c */
    private final C4461ab<TContinuationResult> f19520c;

    public C4478m(Executor executor, AbstractC4459a<TResult, AbstractC4469g<TContinuationResult>> abstractC4459a, C4461ab<TContinuationResult> c4461ab) {
        this.f19518a = executor;
        this.f19519b = abstractC4459a;
        this.f19520c = c4461ab;
    }

    @Override // com.google.android.gms.tasks.AbstractC4490y
    /* renamed from: a */
    public final void mo3860a() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.tasks.AbstractC4490y
    /* renamed from: a */
    public final void mo3859a(AbstractC4469g<TResult> abstractC4469g) {
        this.f19518a.execute(new RunnableC4479n(this, abstractC4469g));
    }

    @Override // com.google.android.gms.tasks.AbstractC4466d
    /* renamed from: a */
    public final void mo3862a(Exception exc) {
        this.f19520c.m3917a(exc);
    }

    @Override // com.google.android.gms.tasks.AbstractC4467e
    /* renamed from: a */
    public final void mo1147a(TContinuationResult tcontinuationresult) {
        this.f19520c.m3916a((C4461ab<TContinuationResult>) tcontinuationresult);
    }

    @Override // com.google.android.gms.tasks.AbstractC4464b
    /* renamed from: y_ */
    public final void mo3861y_() {
        this.f19520c.m3913f();
    }
}
