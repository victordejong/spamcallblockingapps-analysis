package com.crashlytics.android.answers;

import io.fabric.sdk.android.services.concurrency.p070a.C1532e;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/RetryManager.class */
class RetryManager {
    private static final long NANOSECONDS_IN_MS = 1000000;
    long lastRetry;
    private C1532e retryState;

    public RetryManager(C1532e c1532e) {
        if (c1532e != null) {
            this.retryState = c1532e;
            return;
        }
        throw new NullPointerException("retryState must not be null");
    }

    public boolean canRetry(long j) {
        return j - this.lastRetry >= this.retryState.m3364a() * NANOSECONDS_IN_MS;
    }

    public void recordRetry(long j) {
        this.lastRetry = j;
        this.retryState = this.retryState.m3363b();
    }

    public void reset() {
        this.lastRetry = 0L;
        this.retryState = this.retryState.m3362c();
    }
}
