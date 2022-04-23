package com.amazonaws.services.s3.internal.crypto;

import com.amazonaws.services.s3.internal.crypto.MultipartUploadContext;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.PutObjectResult;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/S3CryptoModule.class */
public abstract class S3CryptoModule<T extends MultipartUploadContext> {
    public abstract CompleteMultipartUploadResult a(CompleteMultipartUploadRequest completeMultipartUploadRequest);

    public abstract InitiateMultipartUploadResult a(InitiateMultipartUploadRequest initiateMultipartUploadRequest);

    public abstract PutObjectResult a(PutObjectRequest putObjectRequest);

    public abstract S3Object a(GetObjectRequest getObjectRequest);

    public abstract UploadPartResult a(UploadPartRequest uploadPartRequest);

    public abstract void a(AbortMultipartUploadRequest abortMultipartUploadRequest);
}
