package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.tasks.p */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/p.class */
public final class C14193p<TResult, TContinuationResult> implements AbstractC14171ac<TResult> {

    /* renamed from: a */
    final AbstractC14179b<TResult, TContinuationResult> f52156a;

    /* renamed from: b */
    final C14176ah<TContinuationResult> f52157b;

    /* renamed from: c */
    private final Executor f52158c;

    public C14193p(Executor executor, AbstractC14179b<TResult, TContinuationResult> abstractC14179b, C14176ah<TContinuationResult> c14176ah) {
        this.f52158c = executor;
        this.f52156a = abstractC14179b;
        this.f52157b = c14176ah;
    }

    @Override // com.google.android.gms.tasks.AbstractC14171ac
    /* renamed from: a */
    public final void mo11453a(AbstractC14185h<TResult> abstractC14185h) {
        this.f52158c.execute(new RunnableC14192o(this, abstractC14185h));
    }
}
