package com.amazonaws.services.p101s3.internal.crypto;

import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.DefaultAWSCredentialsProviderChain;
import com.amazonaws.internal.SdkFilterInputStream;
import com.amazonaws.services.kms.AWSKMSClient;
import com.amazonaws.services.p101s3.internal.S3Direct;
import com.amazonaws.services.p101s3.model.CryptoConfiguration;
import com.amazonaws.services.p101s3.model.CryptoMode;
import com.amazonaws.services.p101s3.model.EncryptionMaterialsProvider;
import com.amazonaws.services.p101s3.model.GetObjectRequest;
import com.amazonaws.services.p101s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.S3Object;
import com.amazonaws.services.p101s3.model.UploadPartRequest;
@Deprecated
/* renamed from: com.amazonaws.services.s3.internal.crypto.S3CryptoModuleEO */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO.class */
class S3CryptoModuleEO extends S3CryptoModuleBase<MultipartUploadCbcContext> {
    public S3CryptoModuleEO(AWSKMSClient aWSKMSClient, S3Direct s3Direct, AWSCredentialsProvider aWSCredentialsProvider, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        super(aWSKMSClient, s3Direct, aWSCredentialsProvider, encryptionMaterialsProvider, cryptoConfiguration);
        if (cryptoConfiguration.getCryptoMode() == CryptoMode.EncryptionOnly) {
            return;
        }
        throw new IllegalArgumentException();
    }

    S3CryptoModuleEO(AWSKMSClient aWSKMSClient, S3Direct s3Direct, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        this(aWSKMSClient, s3Direct, new DefaultAWSCredentialsProviderChain(), encryptionMaterialsProvider, cryptoConfiguration);
    }

    S3CryptoModuleEO(S3Direct s3Direct, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        this(null, s3Direct, new DefaultAWSCredentialsProviderChain(), encryptionMaterialsProvider, cryptoConfiguration);
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModuleBase
    /* renamed from: a */
    protected final long mo38315a(long j) {
        long mo38361d = this.f12435d.mo38361d();
        return j + (mo38361d - (j % mo38361d));
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModuleBase
    /* renamed from: a */
    final /* synthetic */ SdkFilterInputStream mo38314a(CipherLiteInputStream cipherLiteInputStream, long j) {
        return new ByteRangeCapturingInputStream(cipherLiteInputStream, j - this.f12435d.mo38361d(), j);
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModuleBase
    /* renamed from: a */
    final /* synthetic */ CipherLite mo38313a(MultipartUploadCbcContext multipartUploadCbcContext) {
        MultipartUploadCbcContext multipartUploadCbcContext2 = multipartUploadCbcContext;
        CipherLite cipherLite = multipartUploadCbcContext2.f12428f.f12401a;
        return cipherLite.f12390c.m38367a(cipherLite.f12391d, multipartUploadCbcContext2.f12423a, cipherLite.f12392e, cipherLite.f12389b.getProvider());
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModuleBase
    /* renamed from: a */
    final /* synthetic */ MultipartUploadCbcContext mo38310a(InitiateMultipartUploadRequest initiateMultipartUploadRequest, ContentCryptoMaterial contentCryptoMaterial) {
        MultipartUploadCbcContext multipartUploadCbcContext = new MultipartUploadCbcContext(initiateMultipartUploadRequest.getBucketName(), initiateMultipartUploadRequest.getKey(), contentCryptoMaterial);
        multipartUploadCbcContext.f12423a = contentCryptoMaterial.f12401a.f12389b.getIV();
        return multipartUploadCbcContext;
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModule
    /* renamed from: a */
    public final S3Object mo38311a(GetObjectRequest getObjectRequest) {
        throw new IllegalStateException();
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModuleBase
    /* renamed from: a */
    final /* bridge */ /* synthetic */ void mo38312a(MultipartUploadCbcContext multipartUploadCbcContext, SdkFilterInputStream sdkFilterInputStream) {
        multipartUploadCbcContext.f12423a = ((ByteRangeCapturingInputStream) sdkFilterInputStream).f12381a;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModuleBase
    /* renamed from: b */
    final long mo38309b(UploadPartRequest uploadPartRequest) {
        char c;
        if (uploadPartRequest.getFile() != null) {
            c = uploadPartRequest.getPartSize() > 0 ? uploadPartRequest.getPartSize() : uploadPartRequest.getFile().length();
        } else if (uploadPartRequest.getInputStream() == null) {
            return -1L;
        } else {
            c = uploadPartRequest.getPartSize();
        }
        long mo38361d = this.f12435d.mo38361d();
        return c + (mo38361d - (c % mo38361d));
    }
}
