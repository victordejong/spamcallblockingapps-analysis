package com.amazonaws.retry;

import com.amazonaws.AmazonClientException;
/* loaded from: classes-dex2jar.jar:com/amazonaws/retry/RetryPolicy.class */
public final class RetryPolicy {

    /* renamed from: a */
    public final RetryCondition f12283a;

    /* renamed from: b */
    public final BackoffStrategy f12284b;

    /* renamed from: c */
    public final int f12285c;

    /* renamed from: d */
    public final boolean f12286d;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/retry/RetryPolicy$BackoffStrategy.class */
    public interface BackoffStrategy {

        /* renamed from: a */
        public static final BackoffStrategy f12287a = new BackoffStrategy() { // from class: com.amazonaws.retry.RetryPolicy.BackoffStrategy.1
            @Override // com.amazonaws.retry.RetryPolicy.BackoffStrategy
            /* renamed from: a */
            public final long mo38494a(int i) {
                return 0L;
            }
        };

        /* renamed from: a */
        long mo38494a(int i);
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/retry/RetryPolicy$RetryCondition.class */
    public interface RetryCondition {

        /* renamed from: a */
        public static final RetryCondition f12288a = new RetryCondition() { // from class: com.amazonaws.retry.RetryPolicy.RetryCondition.1
            @Override // com.amazonaws.retry.RetryPolicy.RetryCondition
            /* renamed from: a */
            public final boolean mo38438a(AmazonClientException amazonClientException, int i) {
                return false;
            }
        };

        /* renamed from: a */
        boolean mo38438a(AmazonClientException amazonClientException, int i);
    }

    public RetryPolicy(RetryCondition retryCondition, BackoffStrategy backoffStrategy, int i, boolean z) {
        RetryCondition retryCondition2 = retryCondition == null ? PredefinedRetryPolicies.f12278d : retryCondition;
        BackoffStrategy backoffStrategy2 = backoffStrategy == null ? PredefinedRetryPolicies.f12279e : backoffStrategy;
        if (i >= 0) {
            this.f12283a = retryCondition2;
            this.f12284b = backoffStrategy2;
            this.f12285c = i;
            this.f12286d = z;
            return;
        }
        throw new IllegalArgumentException("Please provide a non-negative value for maxErrorRetry.");
    }
}
