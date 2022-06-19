package com.google.android.gms.tasks;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/tasks/Continuation.class */
public interface Continuation<TResult, TContinuationResult> {
    TContinuationResult then(Task<TResult> task) throws Exception;
}
