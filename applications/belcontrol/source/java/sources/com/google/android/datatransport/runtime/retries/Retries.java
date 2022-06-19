package com.google.android.datatransport.runtime.retries;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/retries/Retries.class */
public final class Retries {
    private Retries() {
    }

    public static <TInput, TResult, TException extends Throwable> TResult retry(int i, TInput tinput, Function<TInput, TResult, TException> function, RetryStrategy<TInput, TResult> retryStrategy) {
        TResult apply;
        int i2;
        int i3 = i;
        TInput tinput2 = tinput;
        if (i < 1) {
            return function.apply(tinput);
        }
        do {
            apply = function.apply(tinput2);
            tinput2 = retryStrategy.shouldRetry(tinput2, apply);
            if (tinput2 == null) {
                break;
            }
            i2 = i3 - 1;
            i3 = i2;
        } while (i2 >= 1);
        return apply;
    }
}
