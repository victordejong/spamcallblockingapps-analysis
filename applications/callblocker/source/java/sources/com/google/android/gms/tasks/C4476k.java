package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.k */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/k.class */
final class C4476k<TResult, TContinuationResult> implements AbstractC4490y<TResult> {

    /* renamed from: a */
    private final Executor f19513a;

    /* renamed from: b */
    private final AbstractC4459a<TResult, TContinuationResult> f19514b;

    /* renamed from: c */
    private final C4461ab<TContinuationResult> f19515c;

    public C4476k(Executor executor, AbstractC4459a<TResult, TContinuationResult> abstractC4459a, C4461ab<TContinuationResult> c4461ab) {
        this.f19513a = executor;
        this.f19514b = abstractC4459a;
        this.f19515c = c4461ab;
    }

    @Override // com.google.android.gms.tasks.AbstractC4490y
    /* renamed from: a */
    public final void mo3860a() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.tasks.AbstractC4490y
    /* renamed from: a */
    public final void mo3859a(AbstractC4469g<TResult> abstractC4469g) {
        this.f19513a.execute(new RunnableC4477l(this, abstractC4469g));
    }
}
