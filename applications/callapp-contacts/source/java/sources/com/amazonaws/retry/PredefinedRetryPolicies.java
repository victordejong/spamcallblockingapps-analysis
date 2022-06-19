package com.amazonaws.retry;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.retry.RetryPolicy;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Random;
/* loaded from: classes-dex2jar.jar:com/amazonaws/retry/PredefinedRetryPolicies.class */
public class PredefinedRetryPolicies {

    /* renamed from: a */
    public static final RetryPolicy f12275a = new RetryPolicy(RetryPolicy.RetryCondition.f12288a, RetryPolicy.BackoffStrategy.f12287a, 0, false);

    /* renamed from: b */
    public static final RetryPolicy f12276b;

    /* renamed from: c */
    public static final RetryPolicy f12277c;

    /* renamed from: d */
    public static final RetryPolicy.RetryCondition f12278d;

    /* renamed from: e */
    public static final RetryPolicy.BackoffStrategy f12279e;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy.class */
    static final class SDKDefaultBackoffStrategy implements RetryPolicy.BackoffStrategy {

        /* renamed from: b */
        private final Random f12280b;

        /* renamed from: c */
        private final int f12281c;

        /* renamed from: d */
        private final int f12282d;

        private SDKDefaultBackoffStrategy(int i, int i2) {
            this.f12280b = new Random();
            this.f12281c = i;
            this.f12282d = i2;
        }

        @Override // com.amazonaws.retry.RetryPolicy.BackoffStrategy
        /* renamed from: a */
        public final long mo38494a(int i) {
            if (i <= 0) {
                return 0L;
            }
            return this.f12280b.nextInt(Math.min(this.f12282d, (1 << i) * this.f12281c));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition.class */
    public static class SDKDefaultRetryCondition implements RetryPolicy.RetryCondition {
        @Override // com.amazonaws.retry.RetryPolicy.RetryCondition
        /* renamed from: a */
        public final boolean mo38438a(AmazonClientException amazonClientException, int i) {
            if (!(amazonClientException.getCause() instanceof IOException) || (amazonClientException.getCause() instanceof InterruptedIOException)) {
                if (!(amazonClientException instanceof AmazonServiceException)) {
                    return false;
                }
                AmazonServiceException amazonServiceException = (AmazonServiceException) amazonClientException;
                int statusCode = amazonServiceException.getStatusCode();
                return statusCode == 500 || statusCode == 503 || statusCode == 502 || statusCode == 504 || RetryUtils.m38493a(amazonServiceException) || RetryUtils.m38491b(amazonServiceException);
            }
            return true;
        }
    }

    static {
        SDKDefaultRetryCondition sDKDefaultRetryCondition = new SDKDefaultRetryCondition();
        f12278d = sDKDefaultRetryCondition;
        SDKDefaultBackoffStrategy sDKDefaultBackoffStrategy = new SDKDefaultBackoffStrategy(100, 20000);
        f12279e = sDKDefaultBackoffStrategy;
        f12276b = new RetryPolicy(sDKDefaultRetryCondition, sDKDefaultBackoffStrategy, 3, true);
        f12277c = new RetryPolicy(sDKDefaultRetryCondition, sDKDefaultBackoffStrategy, 10, true);
    }
}
