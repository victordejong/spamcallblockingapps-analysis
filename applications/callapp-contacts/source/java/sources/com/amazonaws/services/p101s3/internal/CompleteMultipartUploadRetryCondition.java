package com.amazonaws.services.p101s3.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.services.p101s3.model.AmazonS3Exception;
/* renamed from: com.amazonaws.services.s3.internal.CompleteMultipartUploadRetryCondition */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition.class */
public class CompleteMultipartUploadRetryCondition implements RetryPolicy.RetryCondition {

    /* renamed from: b */
    private final int f12322b;

    public CompleteMultipartUploadRetryCondition() {
        this(3);
    }

    CompleteMultipartUploadRetryCondition(int i) {
        this.f12322b = i;
    }

    /* renamed from: a */
    private static boolean m38437a(AmazonS3Exception amazonS3Exception) {
        return (amazonS3Exception == null || amazonS3Exception.getErrorCode() == null || amazonS3Exception.getErrorMessage() == null || !amazonS3Exception.getErrorCode().contains("InternalError") || !amazonS3Exception.getErrorMessage().contains("Please try again.")) ? false : true;
    }

    @Override // com.amazonaws.retry.RetryPolicy.RetryCondition
    /* renamed from: a */
    public final boolean mo38438a(AmazonClientException amazonClientException, int i) {
        return (amazonClientException instanceof AmazonS3Exception) && m38437a((AmazonS3Exception) amazonClientException) && i < this.f12322b;
    }
}
