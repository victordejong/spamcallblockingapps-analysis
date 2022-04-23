package com.apptentive.android.sdk.network;

import java.util.Random;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/network/HttpRequestRetryPolicyDefault.class */
public class HttpRequestRetryPolicyDefault implements HttpRequestRetryPolicy {
    public static final int DEFAULT_RETRY_COUNT = 5;
    public static final long DEFAULT_RETRY_TIMEOUT_MILLIS = 5000;
    private static final long MAX_RETRY_CAP = 600000;
    private static final Random RANDOM = new Random();
    public static final int RETRY_COUNT_INFINITE = -1;
    private int maxRetryCount = 5;
    private long retryTimeoutMillis = DEFAULT_RETRY_TIMEOUT_MILLIS;

    @Override // com.apptentive.android.sdk.network.HttpRequestRetryPolicy
    public long getRetryTimeoutMillis(int i) {
        return (long) ((Math.min((long) MAX_RETRY_CAP, (long) (this.retryTimeoutMillis * Math.pow(2.0d, i - 1))) / 2) * (RANDOM.nextDouble() + 1.0d));
    }

    public void setMaxRetryCount(int i) {
        this.maxRetryCount = i;
    }

    public void setRetryTimeoutMillis(long j) {
        this.retryTimeoutMillis = j;
    }

    @Override // com.apptentive.android.sdk.network.HttpRequestRetryPolicy
    public boolean shouldRetryRequest(int i, int i2) {
        boolean z = false;
        if (i >= 400 && i < 500) {
            return false;
        }
        if (this.maxRetryCount == -1) {
            return true;
        }
        if (i2 <= this.maxRetryCount) {
            z = true;
        }
        return z;
    }
}
