package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.a0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/a0.class */
final class C7955a0<TResult, TContinuationResult> implements AbstractC7962e<TContinuationResult>, AbstractC7960d, AbstractC7956b, AbstractC7957b0 {

    /* renamed from: a */
    private final Executor f35936a;

    /* renamed from: b */
    private final AbstractC7964f<TResult, TContinuationResult> f35937b;

    /* renamed from: c */
    private final C7965f0<TContinuationResult> f35938c;

    public C7955a0(Executor executor, AbstractC7964f<TResult, TContinuationResult> abstractC7964f, C7965f0<TContinuationResult> c7965f0) {
        this.f35936a = executor;
        this.f35937b = abstractC7964f;
        this.f35938c = c7965f0;
    }

    @Override // com.google.android.gms.tasks.AbstractC7960d
    /* renamed from: a */
    public final void mo5788a(Exception exc) {
        this.f35938c.m5831v(exc);
    }

    @Override // com.google.android.gms.tasks.AbstractC7957b0
    /* renamed from: b */
    public final void mo5777b(AbstractC7966g<TResult> abstractC7966g) {
        this.f35936a.execute(new RunnableC7986z(this, abstractC7966g));
    }

    @Override // com.google.android.gms.tasks.AbstractC7956b
    /* renamed from: c */
    public final void mo5787c() {
        this.f35938c.m5829x();
    }

    @Override // com.google.android.gms.tasks.AbstractC7962e
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f35938c.m5833t(tcontinuationresult);
    }
}
