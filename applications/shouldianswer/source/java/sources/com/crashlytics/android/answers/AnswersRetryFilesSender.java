package com.crashlytics.android.answers;

import io.fabric.sdk.android.services.concurrency.p070a.C1529b;
import io.fabric.sdk.android.services.concurrency.p070a.C1530c;
import io.fabric.sdk.android.services.concurrency.p070a.C1532e;
import io.fabric.sdk.android.services.p069c.AbstractC1513f;
import java.io.File;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/AnswersRetryFilesSender.class */
class AnswersRetryFilesSender implements AbstractC1513f {
    private static final int BACKOFF_MS = 1000;
    private static final int BACKOFF_POWER = 8;
    private static final double JITTER_PERCENT = 0.1d;
    private static final int MAX_RETRIES = 5;
    private final SessionAnalyticsFilesSender filesSender;
    private final RetryManager retryManager;

    AnswersRetryFilesSender(SessionAnalyticsFilesSender sessionAnalyticsFilesSender, RetryManager retryManager) {
        this.filesSender = sessionAnalyticsFilesSender;
        this.retryManager = retryManager;
    }

    public static AnswersRetryFilesSender build(SessionAnalyticsFilesSender sessionAnalyticsFilesSender) {
        return new AnswersRetryFilesSender(sessionAnalyticsFilesSender, new RetryManager(new C1532e(new RandomBackoff(new C1530c(1000L, 8), JITTER_PERCENT), new C1529b(5))));
    }

    @Override // io.fabric.sdk.android.services.p069c.AbstractC1513f
    public boolean send(List<File> list) {
        long nanoTime = System.nanoTime();
        if (this.retryManager.canRetry(nanoTime)) {
            if (this.filesSender.send(list)) {
                this.retryManager.reset();
                return true;
            }
            this.retryManager.recordRetry(nanoTime);
            return false;
        }
        return false;
    }
}
