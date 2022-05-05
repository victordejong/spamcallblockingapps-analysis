package io.fabric.sdk.android.services.concurrency.internal;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/concurrency/internal/RetryState.class */
public class RetryState {
    private final Backoff backoff;
    private final int retryCount;
    private final RetryPolicy retryPolicy;

    public RetryState(int i, Backoff backoff, RetryPolicy retryPolicy) {
        this.retryCount = i;
        this.backoff = backoff;
        this.retryPolicy = retryPolicy;
    }

    public RetryState(Backoff backoff, RetryPolicy retryPolicy) {
        this(0, backoff, retryPolicy);
    }

    public Backoff getBackoff() {
        return this.backoff;
    }

    public int getRetryCount() {
        return this.retryCount;
    }

    public long getRetryDelay() {
        return this.backoff.getDelayMillis(this.retryCount);
    }

    public RetryPolicy getRetryPolicy() {
        return this.retryPolicy;
    }

    public RetryState initialRetryState() {
        return new RetryState(this.backoff, this.retryPolicy);
    }

    public RetryState nextRetryState() {
        return new RetryState(this.retryCount + 1, this.backoff, this.retryPolicy);
    }
}
