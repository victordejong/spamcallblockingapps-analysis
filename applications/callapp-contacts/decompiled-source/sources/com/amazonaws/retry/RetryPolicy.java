package com.amazonaws.retry;

import com.amazonaws.AmazonClientException;
/* loaded from: classes-dex2jar.jar:com/amazonaws/retry/RetryPolicy.class */
public final class RetryPolicy {

    /* renamed from: a  reason: collision with root package name */
    public final RetryCondition f6770a;

    /* renamed from: b  reason: collision with root package name */
    public final BackoffStrategy f6771b;

    /* renamed from: c  reason: collision with root package name */
    public final int f6772c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f6773d;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/retry/RetryPolicy$BackoffStrategy.class */
    public interface BackoffStrategy {

        /* renamed from: a  reason: collision with root package name */
        public static final BackoffStrategy f6774a = new BackoffStrategy() { // from class: com.amazonaws.retry.RetryPolicy.BackoffStrategy.1
            @Override // com.amazonaws.retry.RetryPolicy.BackoffStrategy
            public final long a(int i) {
                return 0L;
            }
        };

        long a(int i);
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/retry/RetryPolicy$RetryCondition.class */
    public interface RetryCondition {

        /* renamed from: a  reason: collision with root package name */
        public static final RetryCondition f6775a = new RetryCondition() { // from class: com.amazonaws.retry.RetryPolicy.RetryCondition.1
            @Override // com.amazonaws.retry.RetryPolicy.RetryCondition
            public final boolean a(AmazonClientException amazonClientException, int i) {
                return false;
            }
        };

        boolean a(AmazonClientException amazonClientException, int i);
    }

    public RetryPolicy(RetryCondition retryCondition, BackoffStrategy backoffStrategy, int i, boolean z) {
        RetryCondition retryCondition2 = retryCondition == null ? PredefinedRetryPolicies.f6766d : retryCondition;
        BackoffStrategy backoffStrategy2 = backoffStrategy == null ? PredefinedRetryPolicies.e : backoffStrategy;
        if (i >= 0) {
            this.f6770a = retryCondition2;
            this.f6771b = backoffStrategy2;
            this.f6772c = i;
            this.f6773d = z;
            return;
        }
        throw new IllegalArgumentException("Please provide a non-negative value for maxErrorRetry.");
    }
}
