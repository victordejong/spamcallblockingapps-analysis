package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.q */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/q.class */
final class C7977q<TResult, TContinuationResult> implements AbstractC7962e<TContinuationResult>, AbstractC7960d, AbstractC7956b, AbstractC7957b0 {

    /* renamed from: a */
    private final Executor f35970a;

    /* renamed from: b */
    private final AbstractC7954a<TResult, AbstractC7966g<TContinuationResult>> f35971b;

    /* renamed from: c */
    private final C7965f0<TContinuationResult> f35972c;

    public C7977q(Executor executor, AbstractC7954a<TResult, AbstractC7966g<TContinuationResult>> abstractC7954a, C7965f0<TContinuationResult> c7965f0) {
        this.f35970a = executor;
        this.f35971b = abstractC7954a;
        this.f35972c = c7965f0;
    }

    @Override // com.google.android.gms.tasks.AbstractC7960d
    /* renamed from: a */
    public final void mo5788a(Exception exc) {
        this.f35972c.m5831v(exc);
    }

    @Override // com.google.android.gms.tasks.AbstractC7957b0
    /* renamed from: b */
    public final void mo5777b(AbstractC7966g<TResult> abstractC7966g) {
        this.f35970a.execute(new RunnableC7976p(this, abstractC7966g));
    }

    @Override // com.google.android.gms.tasks.AbstractC7956b
    /* renamed from: c */
    public final void mo5787c() {
        this.f35972c.m5829x();
    }

    @Override // com.google.android.gms.tasks.AbstractC7962e
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f35972c.m5833t(tcontinuationresult);
    }
}
