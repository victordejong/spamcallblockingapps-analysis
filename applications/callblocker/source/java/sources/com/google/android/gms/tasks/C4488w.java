package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.w */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/w.class */
final class C4488w<TResult, TContinuationResult> implements AbstractC4464b, AbstractC4466d, AbstractC4467e<TContinuationResult>, AbstractC4490y<TResult> {

    /* renamed from: a */
    private final Executor f19542a;

    /* renamed from: b */
    private final AbstractC4468f<TResult, TContinuationResult> f19543b;

    /* renamed from: c */
    private final C4461ab<TContinuationResult> f19544c;

    public C4488w(Executor executor, AbstractC4468f<TResult, TContinuationResult> abstractC4468f, C4461ab<TContinuationResult> c4461ab) {
        this.f19542a = executor;
        this.f19543b = abstractC4468f;
        this.f19544c = c4461ab;
    }

    @Override // com.google.android.gms.tasks.AbstractC4490y
    /* renamed from: a */
    public final void mo3860a() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.tasks.AbstractC4490y
    /* renamed from: a */
    public final void mo3859a(AbstractC4469g<TResult> abstractC4469g) {
        this.f19542a.execute(new RunnableC4489x(this, abstractC4469g));
    }

    @Override // com.google.android.gms.tasks.AbstractC4466d
    /* renamed from: a */
    public final void mo3862a(Exception exc) {
        this.f19544c.m3917a(exc);
    }

    @Override // com.google.android.gms.tasks.AbstractC4467e
    /* renamed from: a */
    public final void mo1147a(TContinuationResult tcontinuationresult) {
        this.f19544c.m3916a((C4461ab<TContinuationResult>) tcontinuationresult);
    }

    @Override // com.google.android.gms.tasks.AbstractC4464b
    /* renamed from: y_ */
    public final void mo3861y_() {
        this.f19544c.m3913f();
    }
}
