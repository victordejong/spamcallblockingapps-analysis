package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.tasks.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/g.class */
public abstract class AbstractC2397g<TResult> {
    /* renamed from: a */
    public AbstractC2397g<TResult> m3786a(Executor executor, AbstractC2389b bVar) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    /* renamed from: b */
    public AbstractC2397g<TResult> m3785b(AbstractC2390c<TResult> cVar) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    /* renamed from: c */
    public AbstractC2397g<TResult> m3784c(Executor executor, AbstractC2390c<TResult> cVar) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    /* renamed from: d */
    public abstract AbstractC2397g<TResult> m3783d(Executor executor, AbstractC2392d dVar);

    /* renamed from: e */
    public abstract AbstractC2397g<TResult> m3782e(Executor executor, AbstractC2394e<? super TResult> eVar);

    /* renamed from: f */
    public <TContinuationResult> AbstractC2397g<TContinuationResult> m3781f(AbstractC2387a<TResult, TContinuationResult> aVar) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    /* renamed from: g */
    public <TContinuationResult> AbstractC2397g<TContinuationResult> m3780g(Executor executor, AbstractC2387a<TResult, TContinuationResult> aVar) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    /* renamed from: h */
    public <TContinuationResult> AbstractC2397g<TContinuationResult> m3779h(AbstractC2387a<TResult, AbstractC2397g<TContinuationResult>> aVar) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    /* renamed from: i */
    public <TContinuationResult> AbstractC2397g<TContinuationResult> m3778i(Executor executor, AbstractC2387a<TResult, AbstractC2397g<TContinuationResult>> aVar) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    /* renamed from: j */
    public abstract Exception m3777j();

    /* renamed from: k */
    public abstract TResult m3776k();

    /* renamed from: l */
    public abstract <X extends Throwable> TResult m3775l(Class<X> cls);

    /* renamed from: m */
    public abstract boolean m3774m();

    /* renamed from: n */
    public abstract boolean m3773n();

    /* renamed from: o */
    public abstract boolean m3772o();

    /* renamed from: p */
    public <TContinuationResult> AbstractC2397g<TContinuationResult> m3771p(AbstractC2395f<TResult, TContinuationResult> fVar) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    /* renamed from: q */
    public <TContinuationResult> AbstractC2397g<TContinuationResult> m3770q(Executor executor, AbstractC2395f<TResult, TContinuationResult> fVar) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }
}
