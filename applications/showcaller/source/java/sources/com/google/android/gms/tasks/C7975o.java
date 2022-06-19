package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.o */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/o.class */
final class C7975o<TResult, TContinuationResult> implements AbstractC7957b0<TResult> {

    /* renamed from: a */
    private final Executor f35965a;

    /* renamed from: b */
    private final AbstractC7954a<TResult, TContinuationResult> f35966b;

    /* renamed from: c */
    private final C7965f0<TContinuationResult> f35967c;

    public C7975o(Executor executor, AbstractC7954a<TResult, TContinuationResult> abstractC7954a, C7965f0<TContinuationResult> c7965f0) {
        this.f35965a = executor;
        this.f35966b = abstractC7954a;
        this.f35967c = c7965f0;
    }

    @Override // com.google.android.gms.tasks.AbstractC7957b0
    /* renamed from: b */
    public final void mo5777b(AbstractC7966g<TResult> abstractC7966g) {
        this.f35965a.execute(new RunnableC7974n(this, abstractC7966g));
    }
}
