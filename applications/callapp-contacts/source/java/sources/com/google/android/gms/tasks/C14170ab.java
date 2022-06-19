package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.ab */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/ab.class */
final class C14170ab<TResult, TContinuationResult> implements AbstractC14171ac, AbstractC14180c, AbstractC14182e, AbstractC14183f<TContinuationResult> {

    /* renamed from: a */
    private final Executor f52125a;

    /* renamed from: b */
    private final AbstractC14184g<TResult, TContinuationResult> f52126b;

    /* renamed from: c */
    private final C14176ah<TContinuationResult> f52127c;

    public C14170ab(Executor executor, AbstractC14184g<TResult, TContinuationResult> abstractC14184g, C14176ah<TContinuationResult> c14176ah) {
        this.f52125a = executor;
        this.f52126b = abstractC14184g;
        this.f52127c = c14176ah;
    }

    @Override // com.google.android.gms.tasks.AbstractC14180c
    /* renamed from: a */
    public final void mo8074a() {
        this.f52127c.m11496f();
    }

    @Override // com.google.android.gms.tasks.AbstractC14171ac
    /* renamed from: a */
    public final void mo11453a(AbstractC14185h<TResult> abstractC14185h) {
        this.f52125a.execute(new RunnableC14169aa(this, abstractC14185h));
    }

    @Override // com.google.android.gms.tasks.AbstractC14182e
    public final void onFailure(Exception exc) {
        this.f52127c.m11500a(exc);
    }

    @Override // com.google.android.gms.tasks.AbstractC14183f
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f52127c.m11499a((C14176ah<TContinuationResult>) tcontinuationresult);
    }
}
