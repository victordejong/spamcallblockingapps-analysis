package com.amazonaws.services.p017s3;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.services.p017s3.internal.crypto.S3CryptoModule;
import com.amazonaws.services.p017s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.p017s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.p017s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.p017s3.model.GetObjectRequest;
import com.amazonaws.services.p017s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.p017s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.p017s3.model.PutObjectRequest;
import com.amazonaws.services.p017s3.model.PutObjectResult;
import com.amazonaws.services.p017s3.model.S3Object;
import com.amazonaws.services.p017s3.model.UploadPartRequest;
import com.amazonaws.services.p017s3.model.UploadPartResult;
import com.amazonaws.util.VersionInfoUtils;
/* renamed from: com.amazonaws.services.s3.AmazonS3EncryptionClient */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/AmazonS3EncryptionClient.class */
public class AmazonS3EncryptionClient extends AmazonS3Client {
    public final S3CryptoModule<?> crypto;

    static {
        String str = AmazonS3EncryptionClient.class.getName() + "/" + VersionInfoUtils.getVersion();
    }

    @Override // com.amazonaws.services.p017s3.AmazonS3Client, com.amazonaws.services.p017s3.AmazonS3
    public void abortMultipartUpload(AbortMultipartUploadRequest abortMultipartUploadRequest) {
        this.crypto.abortMultipartUploadSecurely(abortMultipartUploadRequest);
    }

    @Override // com.amazonaws.services.p017s3.AmazonS3Client, com.amazonaws.services.p017s3.AmazonS3
    public CompleteMultipartUploadResult completeMultipartUpload(CompleteMultipartUploadRequest completeMultipartUploadRequest) {
        return this.crypto.completeMultipartUploadSecurely(completeMultipartUploadRequest);
    }

    @Override // com.amazonaws.services.p017s3.AmazonS3Client, com.amazonaws.services.p017s3.AmazonS3
    public S3Object getObject(GetObjectRequest getObjectRequest) {
        return this.crypto.getObjectSecurely(getObjectRequest);
    }

    @Override // com.amazonaws.services.p017s3.AmazonS3Client, com.amazonaws.services.p017s3.AmazonS3
    public InitiateMultipartUploadResult initiateMultipartUpload(InitiateMultipartUploadRequest initiateMultipartUploadRequest) {
        return this.crypto.initiateMultipartUploadSecurely(initiateMultipartUploadRequest);
    }

    @Override // com.amazonaws.services.p017s3.AmazonS3Client, com.amazonaws.services.p017s3.AmazonS3
    public PutObjectResult putObject(PutObjectRequest putObjectRequest) {
        return this.crypto.putObjectSecurely(putObjectRequest);
    }

    @Override // com.amazonaws.services.p017s3.AmazonS3Client, com.amazonaws.services.p017s3.AmazonS3
    public UploadPartResult uploadPart(UploadPartRequest uploadPartRequest) throws AmazonClientException, AmazonServiceException {
        return this.crypto.uploadPartSecurely(uploadPartRequest);
    }
}
