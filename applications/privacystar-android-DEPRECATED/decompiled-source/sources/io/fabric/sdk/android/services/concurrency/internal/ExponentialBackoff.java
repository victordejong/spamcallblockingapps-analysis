package io.fabric.sdk.android.services.concurrency.internal;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/concurrency/internal/ExponentialBackoff.class */
public class ExponentialBackoff implements Backoff {
    private static final int DEFAULT_POWER = 2;
    private final long baseTimeMillis;
    private final int power;

    public ExponentialBackoff(long j) {
        this(j, 2);
    }

    public ExponentialBackoff(long j, int i) {
        this.baseTimeMillis = j;
        this.power = i;
    }

    @Override // io.fabric.sdk.android.services.concurrency.internal.Backoff
    public long getDelayMillis(int i) {
        return (long) (this.baseTimeMillis * Math.pow(this.power, i));
    }
}
