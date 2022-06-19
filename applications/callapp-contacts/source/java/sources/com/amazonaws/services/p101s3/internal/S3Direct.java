package com.amazonaws.services.p101s3.internal;

import com.amazonaws.services.p101s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.p101s3.model.GetObjectRequest;
import com.amazonaws.services.p101s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.p101s3.model.PutObjectRequest;
import com.amazonaws.services.p101s3.model.PutObjectResult;
import com.amazonaws.services.p101s3.model.S3Object;
import com.amazonaws.services.p101s3.model.UploadPartRequest;
import com.amazonaws.services.p101s3.model.UploadPartResult;
/* renamed from: com.amazonaws.services.s3.internal.S3Direct */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3Direct.class */
public abstract class S3Direct implements S3DirectSpi {
    /* renamed from: a */
    public abstract CompleteMultipartUploadResult mo38423a(CompleteMultipartUploadRequest completeMultipartUploadRequest);

    /* renamed from: a */
    public abstract InitiateMultipartUploadResult mo38421a(InitiateMultipartUploadRequest initiateMultipartUploadRequest);

    /* renamed from: a */
    public abstract PutObjectResult mo38420a(PutObjectRequest putObjectRequest);

    /* renamed from: a */
    public abstract S3Object mo38422a(GetObjectRequest getObjectRequest);

    @Override // com.amazonaws.services.p101s3.internal.S3DirectSpi
    /* renamed from: a */
    public abstract UploadPartResult mo38419a(UploadPartRequest uploadPartRequest);

    /* renamed from: a */
    public abstract void mo38424a(AbortMultipartUploadRequest abortMultipartUploadRequest);
}
