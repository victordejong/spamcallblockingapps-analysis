package com.google.android.datatransport.runtime.retries;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/retries/RetryStrategy.class */
public interface RetryStrategy<TInput, TResult> {
    TInput shouldRetry(TInput tinput, TResult tresult);
}
