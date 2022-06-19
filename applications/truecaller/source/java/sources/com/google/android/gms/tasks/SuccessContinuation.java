package com.google.android.gms.tasks;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/tasks/SuccessContinuation.class */
public interface SuccessContinuation<TResult, TContinuationResult> {
    Task<TContinuationResult> then(TResult tresult) throws Exception;
}
