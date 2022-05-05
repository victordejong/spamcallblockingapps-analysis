package com.apptentive.android.sdk.network;

import java.util.Random;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/network/HttpRequestRetryPolicyDefault.class */
public class HttpRequestRetryPolicyDefault implements HttpRequestRetryPolicy {
    private static final Random RANDOM = new Random();
    private int maxRetryCount = 5;
    private long retryTimeoutMillis = 5000;

    @Override // com.apptentive.android.sdk.network.HttpRequestRetryPolicy
    public long getRetryTimeoutMillis(int i) {
        return (long) ((Math.min(600000L, (long) (this.retryTimeoutMillis * Math.pow(2.0d, i - 1))) / 2) * (RANDOM.nextDouble() + 1.0d));
    }

    @Override // com.apptentive.android.sdk.network.HttpRequestRetryPolicy
    public boolean shouldRetryRequest(int i, int i2) {
        boolean z = false;
        if (i >= 400 && i < 500) {
            return false;
        }
        int i3 = this.maxRetryCount;
        if (i3 == -1) {
            return true;
        }
        if (i2 <= i3) {
            z = true;
        }
        return z;
    }
}
