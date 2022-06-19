package com.google.firebase.installations.remote;

import com.google.firebase.installations.Utils;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/RequestLimiter.class */
public class RequestLimiter {
    private static final long MAXIMUM_BACKOFF_DURATION_FOR_CONFIGURATION_ERRORS = TimeUnit.HOURS.toMillis(24);
    private static final long MAXIMUM_BACKOFF_DURATION_FOR_SERVER_ERRORS = TimeUnit.MINUTES.toMillis(30);
    private int attemptCount;
    private long nextRequestTime;
    private final Utils utils;

    public RequestLimiter() {
        this.utils = Utils.getInstance();
    }

    RequestLimiter(Utils utils) {
        this.utils = utils;
    }

    private long getBackoffDuration(int i) {
        synchronized (this) {
            if (!isRetryableError(i)) {
                return MAXIMUM_BACKOFF_DURATION_FOR_CONFIGURATION_ERRORS;
            }
            return (long) Math.min(Math.pow(2.0d, this.attemptCount) + this.utils.getRandomDelayForSyncPrevention(), MAXIMUM_BACKOFF_DURATION_FOR_SERVER_ERRORS);
        }
    }

    private static boolean isRetryableError(int i) {
        return i == 429 || (i >= 500 && i < 600);
    }

    private static boolean isSuccessfulOrRequiresNewFidCreation(int i) {
        return (i >= 200 && i < 300) || i == 401 || i == 404;
    }

    private void resetBackoffStrategy() {
        synchronized (this) {
            this.attemptCount = 0;
        }
    }

    public boolean isRequestAllowed() {
        boolean z;
        synchronized (this) {
            if (this.attemptCount != 0) {
                if (this.utils.currentTimeInMillis() <= this.nextRequestTime) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    public void setNextRequestTime(int i) {
        synchronized (this) {
            if (isSuccessfulOrRequiresNewFidCreation(i)) {
                resetBackoffStrategy();
                return;
            }
            this.attemptCount++;
            this.nextRequestTime = this.utils.currentTimeInMillis() + getBackoffDuration(i);
        }
    }
}
