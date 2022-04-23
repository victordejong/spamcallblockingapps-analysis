package com.amazonaws.services.s3.internal.crypto;

import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.DefaultAWSCredentialsProviderChain;
import com.amazonaws.internal.SdkFilterInputStream;
import com.amazonaws.services.kms.AWSKMSClient;
import com.amazonaws.services.s3.internal.S3Direct;
import com.amazonaws.services.s3.model.CryptoConfiguration;
import com.amazonaws.services.s3.model.CryptoMode;
import com.amazonaws.services.s3.model.EncryptionMaterialsProvider;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.UploadPartRequest;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO.class */
class S3CryptoModuleEO extends S3CryptoModuleBase<MultipartUploadCbcContext> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public S3CryptoModuleEO(AWSKMSClient aWSKMSClient, S3Direct s3Direct, AWSCredentialsProvider aWSCredentialsProvider, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        super(aWSKMSClient, s3Direct, aWSCredentialsProvider, encryptionMaterialsProvider, cryptoConfiguration);
        if (cryptoConfiguration.getCryptoMode() != CryptoMode.EncryptionOnly) {
            throw new IllegalArgumentException();
        }
    }

    S3CryptoModuleEO(AWSKMSClient aWSKMSClient, S3Direct s3Direct, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        this(aWSKMSClient, s3Direct, new DefaultAWSCredentialsProviderChain(), encryptionMaterialsProvider, cryptoConfiguration);
    }

    S3CryptoModuleEO(S3Direct s3Direct, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        this(null, s3Direct, new DefaultAWSCredentialsProviderChain(), encryptionMaterialsProvider, cryptoConfiguration);
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModuleBase
    protected final long a(long j) {
        long d2 = this.f6870d.d();
        return j + (d2 - (j % d2));
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModuleBase
    final /* synthetic */ SdkFilterInputStream a(CipherLiteInputStream cipherLiteInputStream, long j) {
        return new ByteRangeCapturingInputStream(cipherLiteInputStream, j - this.f6870d.d(), j);
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModuleBase
    final /* synthetic */ CipherLite a(MultipartUploadCbcContext multipartUploadCbcContext) {
        MultipartUploadCbcContext multipartUploadCbcContext2 = multipartUploadCbcContext;
        CipherLite cipherLite = multipartUploadCbcContext2.f.f6850a;
        return cipherLite.f6844c.a(cipherLite.f6845d, multipartUploadCbcContext2.f6862a, cipherLite.e, cipherLite.f6843b.getProvider());
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModuleBase
    final /* synthetic */ MultipartUploadCbcContext a(InitiateMultipartUploadRequest initiateMultipartUploadRequest, ContentCryptoMaterial contentCryptoMaterial) {
        MultipartUploadCbcContext multipartUploadCbcContext = new MultipartUploadCbcContext(initiateMultipartUploadRequest.getBucketName(), initiateMultipartUploadRequest.getKey(), contentCryptoMaterial);
        multipartUploadCbcContext.f6862a = contentCryptoMaterial.f6850a.f6843b.getIV();
        return multipartUploadCbcContext;
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModule
    public final S3Object a(GetObjectRequest getObjectRequest) {
        throw new IllegalStateException();
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModuleBase
    final /* bridge */ /* synthetic */ void a(MultipartUploadCbcContext multipartUploadCbcContext, SdkFilterInputStream sdkFilterInputStream) {
        multipartUploadCbcContext.f6862a = ((ByteRangeCapturingInputStream) sdkFilterInputStream).f6838a;
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModuleBase
    final long b(UploadPartRequest uploadPartRequest) {
        long j;
        if (uploadPartRequest.getFile() != null) {
            j = uploadPartRequest.getPartSize() > 0 ? uploadPartRequest.getPartSize() : uploadPartRequest.getFile().length();
        } else if (uploadPartRequest.getInputStream() == null) {
            return -1L;
        } else {
            j = uploadPartRequest.getPartSize();
        }
        long d2 = this.f6870d.d();
        return j + (d2 - (j % d2));
    }
}
