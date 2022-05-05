package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/Task.class */
public abstract class Task<TResult> {
    @NonNull
    /* renamed from: a */
    public Task<TResult> mo10795a(@NonNull Executor executor, @NonNull OnCanceledListener onCanceledListener) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    @NonNull
    /* renamed from: b */
    public Task<TResult> mo10794b(@NonNull OnCompleteListener<TResult> onCompleteListener) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    @NonNull
    /* renamed from: c */
    public Task<TResult> mo10793c(@NonNull Executor executor, @NonNull OnCompleteListener<TResult> onCompleteListener) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    @NonNull
    /* renamed from: d */
    public abstract Task<TResult> mo10792d(@NonNull Executor executor, @NonNull OnFailureListener onFailureListener);

    @NonNull
    /* renamed from: e */
    public abstract Task<TResult> mo10791e(@NonNull Executor executor, @NonNull OnSuccessListener<? super TResult> onSuccessListener);

    @NonNull
    /* renamed from: f */
    public <TContinuationResult> Task<TContinuationResult> mo10790f(@NonNull Continuation<TResult, TContinuationResult> continuation) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    @NonNull
    /* renamed from: g */
    public <TContinuationResult> Task<TContinuationResult> mo10789g(@NonNull Executor executor, @NonNull Continuation<TResult, TContinuationResult> continuation) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    @NonNull
    /* renamed from: h */
    public <TContinuationResult> Task<TContinuationResult> mo10788h(@NonNull Executor executor, @NonNull Continuation<TResult, Task<TContinuationResult>> continuation) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    @Nullable
    /* renamed from: i */
    public abstract Exception mo10787i();

    @Nullable
    /* renamed from: j */
    public abstract TResult mo10786j();

    @Nullable
    /* renamed from: k */
    public abstract <X extends Throwable> TResult mo10785k(@NonNull Class<X> cls) throws Throwable;

    /* renamed from: l */
    public abstract boolean mo10784l();

    /* renamed from: m */
    public abstract boolean mo10783m();

    /* renamed from: n */
    public abstract boolean mo10782n();

    @NonNull
    /* renamed from: o */
    public <TContinuationResult> Task<TContinuationResult> mo10781o(@NonNull SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }

    @NonNull
    /* renamed from: p */
    public <TContinuationResult> Task<TContinuationResult> mo10780p(@NonNull Executor executor, @NonNull SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }
}
