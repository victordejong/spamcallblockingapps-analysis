package com.amazonaws.retry;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonWebServiceRequest;
/* loaded from: classes-dex2jar.jar:com/amazonaws/retry/RetryPolicy.class */
public final class RetryPolicy {
    public final BackoffStrategy backoffStrategy;
    public final boolean honorMaxErrorRetryInClientConfig;
    public final int maxErrorRetry;
    public final RetryCondition retryCondition;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/retry/RetryPolicy$BackoffStrategy.class */
    public interface BackoffStrategy {
        public static final BackoffStrategy NO_DELAY = new BackoffStrategy() { // from class: com.amazonaws.retry.RetryPolicy.BackoffStrategy.1
            @Override // com.amazonaws.retry.RetryPolicy.BackoffStrategy
            public long delayBeforeNextRetry(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i) {
                return 0L;
            }
        };

        long delayBeforeNextRetry(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i);
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/retry/RetryPolicy$RetryCondition.class */
    public interface RetryCondition {
        public static final RetryCondition NO_RETRY_CONDITION = new RetryCondition() { // from class: com.amazonaws.retry.RetryPolicy.RetryCondition.1
            @Override // com.amazonaws.retry.RetryPolicy.RetryCondition
            public boolean shouldRetry(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i) {
                return false;
            }
        };

        boolean shouldRetry(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i);
    }

    public RetryPolicy(RetryCondition retryCondition, BackoffStrategy backoffStrategy, int i, boolean z) {
        RetryCondition retryCondition2 = retryCondition == null ? PredefinedRetryPolicies.DEFAULT_RETRY_CONDITION : retryCondition;
        BackoffStrategy backoffStrategy2 = backoffStrategy == null ? PredefinedRetryPolicies.DEFAULT_BACKOFF_STRATEGY : backoffStrategy;
        if (i >= 0) {
            this.retryCondition = retryCondition2;
            this.backoffStrategy = backoffStrategy2;
            this.maxErrorRetry = i;
            this.honorMaxErrorRetryInClientConfig = z;
            return;
        }
        throw new IllegalArgumentException("Please provide a non-negative value for maxErrorRetry.");
    }

    public BackoffStrategy getBackoffStrategy() {
        return this.backoffStrategy;
    }

    public int getMaxErrorRetry() {
        return this.maxErrorRetry;
    }

    public RetryCondition getRetryCondition() {
        return this.retryCondition;
    }

    public boolean isMaxErrorRetryInClientConfigHonored() {
        return this.honorMaxErrorRetryInClientConfig;
    }
}
