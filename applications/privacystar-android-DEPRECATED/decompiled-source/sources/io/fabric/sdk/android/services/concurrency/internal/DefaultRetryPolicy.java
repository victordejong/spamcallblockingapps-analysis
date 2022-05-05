package io.fabric.sdk.android.services.concurrency.internal;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/concurrency/internal/DefaultRetryPolicy.class */
public class DefaultRetryPolicy implements RetryPolicy {
    private final int maxRetries;

    public DefaultRetryPolicy() {
        this(1);
    }

    public DefaultRetryPolicy(int i) {
        this.maxRetries = i;
    }

    @Override // io.fabric.sdk.android.services.concurrency.internal.RetryPolicy
    public boolean shouldRetry(int i, Throwable th) {
        return i < this.maxRetries;
    }
}
