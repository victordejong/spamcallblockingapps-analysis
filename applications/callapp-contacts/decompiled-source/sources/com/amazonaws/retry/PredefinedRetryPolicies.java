package com.amazonaws.retry;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.retry.RetryPolicy;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Random;
/* loaded from: classes-dex2jar.jar:com/amazonaws/retry/PredefinedRetryPolicies.class */
public class PredefinedRetryPolicies {

    /* renamed from: a  reason: collision with root package name */
    public static final RetryPolicy f6763a = new RetryPolicy(RetryPolicy.RetryCondition.f6775a, RetryPolicy.BackoffStrategy.f6774a, 0, false);

    /* renamed from: b  reason: collision with root package name */
    public static final RetryPolicy f6764b;

    /* renamed from: c  reason: collision with root package name */
    public static final RetryPolicy f6765c;

    /* renamed from: d  reason: collision with root package name */
    public static final RetryPolicy.RetryCondition f6766d;
    public static final RetryPolicy.BackoffStrategy e;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy.class */
    static final class SDKDefaultBackoffStrategy implements RetryPolicy.BackoffStrategy {

        /* renamed from: b  reason: collision with root package name */
        private final Random f6767b;

        /* renamed from: c  reason: collision with root package name */
        private final int f6768c;

        /* renamed from: d  reason: collision with root package name */
        private final int f6769d;

        private SDKDefaultBackoffStrategy(int i, int i2) {
            this.f6767b = new Random();
            this.f6768c = i;
            this.f6769d = i2;
        }

        @Override // com.amazonaws.retry.RetryPolicy.BackoffStrategy
        public final long a(int i) {
            if (i <= 0) {
                return 0L;
            }
            return this.f6767b.nextInt(Math.min(this.f6769d, (1 << i) * this.f6768c));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition.class */
    public static class SDKDefaultRetryCondition implements RetryPolicy.RetryCondition {
        @Override // com.amazonaws.retry.RetryPolicy.RetryCondition
        public final boolean a(AmazonClientException amazonClientException, int i) {
            if ((amazonClientException.getCause() instanceof IOException) && !(amazonClientException.getCause() instanceof InterruptedIOException)) {
                return true;
            }
            if (!(amazonClientException instanceof AmazonServiceException)) {
                return false;
            }
            AmazonServiceException amazonServiceException = (AmazonServiceException) amazonClientException;
            int statusCode = amazonServiceException.getStatusCode();
            return statusCode == 500 || statusCode == 503 || statusCode == 502 || statusCode == 504 || RetryUtils.a(amazonServiceException) || RetryUtils.b(amazonServiceException);
        }
    }

    static {
        SDKDefaultRetryCondition sDKDefaultRetryCondition = new SDKDefaultRetryCondition();
        f6766d = sDKDefaultRetryCondition;
        SDKDefaultBackoffStrategy sDKDefaultBackoffStrategy = new SDKDefaultBackoffStrategy(100, 20000);
        e = sDKDefaultBackoffStrategy;
        f6764b = new RetryPolicy(sDKDefaultRetryCondition, sDKDefaultBackoffStrategy, 3, true);
        f6765c = new RetryPolicy(sDKDefaultRetryCondition, sDKDefaultBackoffStrategy, 10, true);
    }
}
