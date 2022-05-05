package io.fabric.sdk.android.services.concurrency.internal;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/concurrency/internal/RetryPolicy.class */
public interface RetryPolicy {
    boolean shouldRetry(int i, Throwable th);
}
