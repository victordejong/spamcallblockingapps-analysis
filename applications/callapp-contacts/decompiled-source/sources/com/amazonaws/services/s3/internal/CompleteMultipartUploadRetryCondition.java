package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.services.s3.model.AmazonS3Exception;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition.class */
public class CompleteMultipartUploadRetryCondition implements RetryPolicy.RetryCondition {

    /* renamed from: b  reason: collision with root package name */
    private final int f6789b;

    public CompleteMultipartUploadRetryCondition() {
        this(3);
    }

    CompleteMultipartUploadRetryCondition(int i) {
        this.f6789b = i;
    }

    private static boolean a(AmazonS3Exception amazonS3Exception) {
        return (amazonS3Exception == null || amazonS3Exception.getErrorCode() == null || amazonS3Exception.getErrorMessage() == null || !amazonS3Exception.getErrorCode().contains("InternalError") || !amazonS3Exception.getErrorMessage().contains("Please try again.")) ? false : true;
    }

    @Override // com.amazonaws.retry.RetryPolicy.RetryCondition
    public final boolean a(AmazonClientException amazonClientException, int i) {
        return (amazonClientException instanceof AmazonS3Exception) && a((AmazonS3Exception) amazonClientException) && i < this.f6789b;
    }
}
