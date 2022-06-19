package com.amazonaws.services.p101s3.internal.crypto;

import com.amazonaws.services.p101s3.internal.crypto.MultipartUploadContext;
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
@Deprecated
/* renamed from: com.amazonaws.services.s3.internal.crypto.S3CryptoModule */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/S3CryptoModule.class */
public abstract class S3CryptoModule<T extends MultipartUploadContext> {
    /* renamed from: a */
    public abstract CompleteMultipartUploadResult mo38328a(CompleteMultipartUploadRequest completeMultipartUploadRequest);

    /* renamed from: a */
    public abstract InitiateMultipartUploadResult mo38323a(InitiateMultipartUploadRequest initiateMultipartUploadRequest);

    /* renamed from: a */
    public abstract PutObjectResult mo38321a(PutObjectRequest putObjectRequest);

    /* renamed from: a */
    public abstract S3Object mo38311a(GetObjectRequest getObjectRequest);

    /* renamed from: a */
    public abstract UploadPartResult mo38319a(UploadPartRequest uploadPartRequest);

    /* renamed from: a */
    public abstract void mo38332a(AbortMultipartUploadRequest abortMultipartUploadRequest);
}
