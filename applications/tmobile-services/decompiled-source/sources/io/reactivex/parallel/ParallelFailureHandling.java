package io.reactivex.parallel;

import io.reactivex.functions.BiFunction;
/* loaded from: classes2-dex2jar.jar:io/reactivex/parallel/ParallelFailureHandling.class */
public enum ParallelFailureHandling implements BiFunction<Long, Throwable, ParallelFailureHandling> {
    STOP,
    ERROR,
    SKIP,
    RETRY;

    public ParallelFailureHandling apply(Long l, Throwable th) {
        return this;
    }
}
