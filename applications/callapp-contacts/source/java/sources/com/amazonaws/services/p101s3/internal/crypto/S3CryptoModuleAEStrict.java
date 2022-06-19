package com.amazonaws.services.p101s3.internal.crypto;

import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.services.kms.AWSKMSClient;
import com.amazonaws.services.p101s3.internal.S3Direct;
import com.amazonaws.services.p101s3.model.CryptoConfiguration;
import com.amazonaws.services.p101s3.model.CryptoMode;
import com.amazonaws.services.p101s3.model.EncryptionMaterialsProvider;
@Deprecated
/* renamed from: com.amazonaws.services.s3.internal.crypto.S3CryptoModuleAEStrict */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/S3CryptoModuleAEStrict.class */
class S3CryptoModuleAEStrict extends S3CryptoModuleAE {
    public S3CryptoModuleAEStrict(AWSKMSClient aWSKMSClient, S3Direct s3Direct, AWSCredentialsProvider aWSCredentialsProvider, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        super(aWSKMSClient, s3Direct, aWSCredentialsProvider, encryptionMaterialsProvider, cryptoConfiguration);
        if (cryptoConfiguration.getCryptoMode() == CryptoMode.StrictAuthenticatedEncryption) {
            return;
        }
        throw new IllegalArgumentException();
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModuleBase
    /* renamed from: a */
    public final void mo38333a(ContentCryptoMaterial contentCryptoMaterial, S3ObjectWrapper s3ObjectWrapper) {
        if (ContentCryptoScheme.f12406b.equals(contentCryptoMaterial.f12401a.f12390c)) {
            return;
        }
        throw new SecurityException("S3 object [bucket: " + s3ObjectWrapper.f12445a.getBucketName() + ", key: " + s3ObjectWrapper.f12445a.getKey() + "] not encrypted using authenticated encryption");
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModuleAE
    /* renamed from: a */
    protected final boolean mo38336a() {
        return true;
    }
}
