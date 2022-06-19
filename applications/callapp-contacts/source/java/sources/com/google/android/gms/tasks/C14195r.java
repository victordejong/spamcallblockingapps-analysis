package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.r */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/r.class */
final class C14195r<TResult, TContinuationResult> implements AbstractC14171ac, AbstractC14180c, AbstractC14182e, AbstractC14183f<TContinuationResult> {

    /* renamed from: a */
    private final Executor f52161a;

    /* renamed from: b */
    private final AbstractC14179b<TResult, AbstractC14185h<TContinuationResult>> f52162b;

    /* renamed from: c */
    private final C14176ah<TContinuationResult> f52163c;

    public C14195r(Executor executor, AbstractC14179b<TResult, AbstractC14185h<TContinuationResult>> abstractC14179b, C14176ah<TContinuationResult> c14176ah) {
        this.f52161a = executor;
        this.f52162b = abstractC14179b;
        this.f52163c = c14176ah;
    }

    @Override // com.google.android.gms.tasks.AbstractC14180c
    /* renamed from: a */
    public final void mo8074a() {
        this.f52163c.m11496f();
    }

    @Override // com.google.android.gms.tasks.AbstractC14171ac
    /* renamed from: a */
    public final void mo11453a(AbstractC14185h<TResult> abstractC14185h) {
        this.f52161a.execute(new RunnableC14194q(this, abstractC14185h));
    }

    @Override // com.google.android.gms.tasks.AbstractC14182e
    public final void onFailure(Exception exc) {
        this.f52163c.m11500a(exc);
    }

    @Override // com.google.android.gms.tasks.AbstractC14183f
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f52163c.m11499a((C14176ah<TContinuationResult>) tcontinuationresult);
    }
}
