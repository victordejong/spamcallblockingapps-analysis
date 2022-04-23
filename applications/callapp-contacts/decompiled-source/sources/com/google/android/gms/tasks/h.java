package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/h.class */
public abstract class h<TResult> {
    public <TContinuationResult> h<TContinuationResult> a(b<TResult, TContinuationResult> bVar) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    public h<TResult> a(d<TResult> dVar) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    public abstract h<TResult> a(e eVar);

    public abstract h<TResult> a(f<? super TResult> fVar);

    public <TContinuationResult> h<TContinuationResult> a(g<TResult, TContinuationResult> gVar) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    public <TContinuationResult> h<TContinuationResult> a(Executor executor, b<TResult, TContinuationResult> bVar) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    public h<TResult> a(Executor executor, c cVar) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    public h<TResult> a(Executor executor, d<TResult> dVar) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    public abstract h<TResult> a(Executor executor, e eVar);

    public abstract h<TResult> a(Executor executor, f<? super TResult> fVar);

    public <TContinuationResult> h<TContinuationResult> a(Executor executor, g<TResult, TContinuationResult> gVar) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    public abstract <X extends Throwable> TResult a(Class<X> cls) throws Throwable;

    public abstract boolean a();

    public <TContinuationResult> h<TContinuationResult> b(Executor executor, b<TResult, h<TContinuationResult>> bVar) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    public abstract boolean b();

    public abstract boolean c();

    public abstract TResult d();

    public abstract Exception e();
}
