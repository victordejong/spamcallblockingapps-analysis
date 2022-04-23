package com.amazonaws.services.s3.internal.crypto;

import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.services.kms.AWSKMSClient;
import com.amazonaws.services.s3.internal.S3Direct;
import com.amazonaws.services.s3.model.CryptoConfiguration;
import com.amazonaws.services.s3.model.CryptoMode;
import com.amazonaws.services.s3.model.EncryptionMaterialsProvider;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/S3CryptoModuleAEStrict.class */
class S3CryptoModuleAEStrict extends S3CryptoModuleAE {
    /* JADX INFO: Access modifiers changed from: package-private */
    public S3CryptoModuleAEStrict(AWSKMSClient aWSKMSClient, S3Direct s3Direct, AWSCredentialsProvider aWSCredentialsProvider, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        super(aWSKMSClient, s3Direct, aWSCredentialsProvider, encryptionMaterialsProvider, cryptoConfiguration);
        if (cryptoConfiguration.getCryptoMode() != CryptoMode.StrictAuthenticatedEncryption) {
            throw new IllegalArgumentException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModuleBase
    public final void a(ContentCryptoMaterial contentCryptoMaterial, S3ObjectWrapper s3ObjectWrapper) {
        if (!ContentCryptoScheme.f6855b.equals(contentCryptoMaterial.f6850a.f6844c)) {
            throw new SecurityException("S3 object [bucket: " + s3ObjectWrapper.f6876a.getBucketName() + ", key: " + s3ObjectWrapper.f6876a.getKey() + "] not encrypted using authenticated encryption");
        }
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModuleAE
    protected final boolean a() {
        return true;
    }
}
