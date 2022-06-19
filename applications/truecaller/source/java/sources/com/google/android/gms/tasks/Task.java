package com.google.android.gms.tasks;

import android.app.Activity;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/tasks/Task.class */
public abstract class Task<TResult> {
    /* renamed from: a */
    public Task<TResult> m38537a(OnCanceledListener onCanceledListener) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented.");
    }

    /* renamed from: b */
    public Task<TResult> m38536b(Executor executor, OnCanceledListener onCanceledListener) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    /* renamed from: c */
    public Task<TResult> m38535c(OnCompleteListener<TResult> onCompleteListener) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    /* renamed from: d */
    public Task<TResult> m38534d(Executor executor, OnCompleteListener<TResult> onCompleteListener) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    /* renamed from: e */
    public abstract Task<TResult> m38533e(OnFailureListener onFailureListener);

    /* renamed from: f */
    public abstract Task<TResult> m38532f(Executor executor, OnFailureListener onFailureListener);

    /* renamed from: g */
    public abstract Task<TResult> m38531g(Activity activity, OnSuccessListener<? super TResult> onSuccessListener);

    /* renamed from: h */
    public abstract Task<TResult> m38530h(OnSuccessListener<? super TResult> onSuccessListener);

    /* renamed from: i */
    public abstract Task<TResult> m38529i(Executor executor, OnSuccessListener<? super TResult> onSuccessListener);

    /* renamed from: j */
    public <TContinuationResult> Task<TContinuationResult> m38528j(Continuation<TResult, TContinuationResult> continuation) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    /* renamed from: k */
    public <TContinuationResult> Task<TContinuationResult> m38527k(Executor executor, Continuation<TResult, TContinuationResult> continuation) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    /* renamed from: l */
    public <TContinuationResult> Task<TContinuationResult> m38526l(Continuation<TResult, Task<TContinuationResult>> continuation) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    /* renamed from: m */
    public <TContinuationResult> Task<TContinuationResult> m38525m(Executor executor, Continuation<TResult, Task<TContinuationResult>> continuation) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    /* renamed from: n */
    public abstract Exception m38524n();

    /* renamed from: o */
    public abstract TResult m38523o();

    /* renamed from: p */
    public abstract <X extends Throwable> TResult m38522p(Class<X> cls) throws Throwable;

    /* renamed from: q */
    public abstract boolean m38521q();

    /* renamed from: r */
    public abstract boolean m38520r();

    /* renamed from: s */
    public abstract boolean m38519s();

    /* renamed from: t */
    public <TContinuationResult> Task<TContinuationResult> m38518t(SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    /* renamed from: u */
    public <TContinuationResult> Task<TContinuationResult> m38517u(Executor executor, SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }
}
