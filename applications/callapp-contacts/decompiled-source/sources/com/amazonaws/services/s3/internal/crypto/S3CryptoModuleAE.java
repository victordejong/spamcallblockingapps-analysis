package com.amazonaws.services.s3.internal.crypto;

import com.amazonaws.AmazonClientException;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.DefaultAWSCredentialsProviderChain;
import com.amazonaws.internal.SdkFilterInputStream;
import com.amazonaws.services.kms.AWSKMSClient;
import com.amazonaws.services.s3.internal.S3Direct;
import com.amazonaws.services.s3.model.CryptoConfiguration;
import com.amazonaws.services.s3.model.CryptoMode;
import com.amazonaws.services.s3.model.EncryptedGetObjectRequest;
import com.amazonaws.services.s3.model.EncryptionMaterialsProvider;
import com.amazonaws.services.s3.model.ExtraMaterialsDescription;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.S3ObjectId;
import com.amazonaws.services.s3.model.S3ObjectInputStream;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.util.IOUtils;
import com.amazonaws.util.json.JsonUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE.class */
class S3CryptoModuleAE extends S3CryptoModuleBase<MultipartUploadCryptoContext> {
    static {
        CryptoRuntime.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public S3CryptoModuleAE(AWSKMSClient aWSKMSClient, S3Direct s3Direct, AWSCredentialsProvider aWSCredentialsProvider, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        super(aWSKMSClient, s3Direct, aWSCredentialsProvider, encryptionMaterialsProvider, cryptoConfiguration);
        CryptoMode cryptoMode = cryptoConfiguration.getCryptoMode();
        if (cryptoMode != CryptoMode.StrictAuthenticatedEncryption && cryptoMode != CryptoMode.AuthenticatedEncryption) {
            throw new IllegalArgumentException();
        }
    }

    S3CryptoModuleAE(AWSKMSClient aWSKMSClient, S3Direct s3Direct, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        this(aWSKMSClient, s3Direct, new DefaultAWSCredentialsProviderChain(), encryptionMaterialsProvider, cryptoConfiguration);
    }

    S3CryptoModuleAE(S3Direct s3Direct, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        this(null, s3Direct, new DefaultAWSCredentialsProviderChain(), encryptionMaterialsProvider, cryptoConfiguration);
    }

    private static S3ObjectWrapper a(S3ObjectWrapper s3ObjectWrapper, ContentCryptoMaterial contentCryptoMaterial) {
        s3ObjectWrapper.a(new S3ObjectInputStream(new CipherLiteInputStream(s3ObjectWrapper.f6876a.getObjectContent(), contentCryptoMaterial.f6850a, 2048)));
        return s3ObjectWrapper;
    }

    private S3ObjectWrapper a(S3ObjectWrapper s3ObjectWrapper, long[] jArr, Map<String, String> map) {
        if (jArr == null) {
            return s3ObjectWrapper;
        }
        long instanceLength = (s3ObjectWrapper.f6876a.getObjectMetadata().getInstanceLength() - ((map != null ? ContentCryptoScheme.a(map.get("x-amz-cek-alg")) : ContentCryptoScheme.a(s3ObjectWrapper.f6876a.getObjectMetadata().getUserMetadata().get("x-amz-cek-alg"))).f() / 8)) - 1;
        if (jArr[1] > instanceLength) {
            jArr[1] = instanceLength;
            if (jArr[0] > jArr[1]) {
                IOUtils.closeQuietly(s3ObjectWrapper.f6876a.getObjectContent(), this.f6868b);
                s3ObjectWrapper.f6876a.setObjectContent(new ByteArrayInputStream(new byte[0]));
                return s3ObjectWrapper;
            }
        }
        if (jArr[0] > jArr[1]) {
            return s3ObjectWrapper;
        }
        try {
            s3ObjectWrapper.a(new S3ObjectInputStream(new AdjustedRangeInputStream(s3ObjectWrapper.f6876a.getObjectContent(), jArr[0], jArr[1])));
            return s3ObjectWrapper;
        } catch (IOException e) {
            throw new AmazonClientException("Error adjusting output to desired byte range: " + e.getMessage());
        }
    }

    private S3Object a(GetObjectRequest getObjectRequest, long[] jArr, long[] jArr2, S3ObjectWrapper s3ObjectWrapper, S3ObjectWrapper s3ObjectWrapper2) {
        ExtraMaterialsDescription extraMaterialsDescription = ExtraMaterialsDescription.NONE;
        boolean a2 = a();
        boolean z = a2;
        if (getObjectRequest instanceof EncryptedGetObjectRequest) {
            EncryptedGetObjectRequest encryptedGetObjectRequest = (EncryptedGetObjectRequest) getObjectRequest;
            ExtraMaterialsDescription extraMaterialDescription = encryptedGetObjectRequest.getExtraMaterialDescription();
            extraMaterialsDescription = extraMaterialDescription;
            z = a2;
            if (!a2) {
                z = encryptedGetObjectRequest.isKeyWrapExpected();
                extraMaterialsDescription = extraMaterialDescription;
            }
        }
        Map<String, String> unmodifiableMap = Collections.unmodifiableMap(JsonUtils.jsonToMap(s3ObjectWrapper2.b()));
        ContentCryptoMaterial a3 = ContentCryptoMaterial.a(unmodifiableMap, this.f6867a, this.e.getCryptoProvider(), jArr2, extraMaterialsDescription, z, this.h);
        a(a3, s3ObjectWrapper);
        return a(a(s3ObjectWrapper, a3), jArr, unmodifiableMap).f6876a;
    }

    private S3Object a(GetObjectRequest getObjectRequest, long[] jArr, long[] jArr2, S3Object s3Object) {
        S3ObjectWrapper s3ObjectWrapper = new S3ObjectWrapper(s3Object, getObjectRequest.getS3ObjectId());
        Map<String, String> userMetadata = s3ObjectWrapper.f6876a.getObjectMetadata().getUserMetadata();
        if (userMetadata != null && userMetadata.containsKey("x-amz-iv") && (userMetadata.containsKey("x-amz-key-v2") || userMetadata.containsKey("x-amz-key"))) {
            ExtraMaterialsDescription extraMaterialsDescription = ExtraMaterialsDescription.NONE;
            boolean a2 = a();
            boolean z = a2;
            if (getObjectRequest instanceof EncryptedGetObjectRequest) {
                EncryptedGetObjectRequest encryptedGetObjectRequest = (EncryptedGetObjectRequest) getObjectRequest;
                ExtraMaterialsDescription extraMaterialDescription = encryptedGetObjectRequest.getExtraMaterialDescription();
                extraMaterialsDescription = extraMaterialDescription;
                z = a2;
                if (!a2) {
                    z = encryptedGetObjectRequest.isKeyWrapExpected();
                    extraMaterialsDescription = extraMaterialDescription;
                }
            }
            ContentCryptoMaterial a3 = ContentCryptoMaterial.a(s3ObjectWrapper.f6876a.getObjectMetadata(), this.f6867a, this.e.getCryptoProvider(), jArr2, extraMaterialsDescription, z, this.h);
            a(a3, s3ObjectWrapper);
            return a(a(s3ObjectWrapper, a3), jArr, (Map<String, String>) null).f6876a;
        }
        S3ObjectWrapper a4 = a(getObjectRequest.getS3ObjectId(), (String) null);
        if (a4 != null) {
            try {
                if (a4.a()) {
                    return a(getObjectRequest, jArr, jArr2, s3ObjectWrapper, a4);
                }
            } finally {
                IOUtils.closeQuietly(a4, this.f6868b);
            }
        }
        if (a() || !this.e.isIgnoreMissingInstructionFile()) {
            IOUtils.closeQuietly(s3ObjectWrapper, this.f6868b);
            throw new SecurityException("Instruction file not found for S3 object with bucket name: " + s3Object.getBucketName() + ", key: " + s3Object.getKey());
        }
        this.f6868b.d(String.format("Unable to detect encryption information for object '%s' in bucket '%s'. Returning object without decryption.", s3Object.getKey(), s3Object.getBucketName()));
        return a(s3ObjectWrapper, jArr, (Map<String, String>) null).f6876a;
    }

    private S3Object a(GetObjectRequest getObjectRequest, long[] jArr, long[] jArr2, S3Object s3Object, String str) {
        S3ObjectId s3ObjectId = getObjectRequest.getS3ObjectId();
        S3ObjectWrapper a2 = a(s3ObjectId, str);
        if (a2 != null) {
            try {
                if (a2.a()) {
                    return a(getObjectRequest, jArr, jArr2, new S3ObjectWrapper(s3Object, s3ObjectId), a2);
                }
                throw new AmazonClientException("Invalid Instruction file with suffix " + str + " detected for " + s3Object);
            } finally {
                IOUtils.closeQuietly(a2, this.f6868b);
            }
        } else {
            throw new AmazonClientException("Instruction file with suffix " + str + " is not found for " + s3Object);
        }
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModuleBase
    protected final long a(long j) {
        return j + (this.f6870d.f() / 8);
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModuleBase
    final SdkFilterInputStream a(CipherLiteInputStream cipherLiteInputStream, long j) {
        return cipherLiteInputStream;
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModuleBase
    final CipherLite a(MultipartUploadCryptoContext multipartUploadCryptoContext) {
        return multipartUploadCryptoContext.f.f6850a;
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModuleBase
    final MultipartUploadCryptoContext a(InitiateMultipartUploadRequest initiateMultipartUploadRequest, ContentCryptoMaterial contentCryptoMaterial) {
        return new MultipartUploadCryptoContext(initiateMultipartUploadRequest.getBucketName(), initiateMultipartUploadRequest.getKey(), contentCryptoMaterial);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModule
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.amazonaws.services.s3.model.S3Object a(com.amazonaws.services.s3.model.GetObjectRequest r10) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.services.s3.internal.crypto.S3CryptoModuleAE.a(com.amazonaws.services.s3.model.GetObjectRequest):com.amazonaws.services.s3.model.S3Object");
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModuleBase
    final void a(MultipartUploadCryptoContext multipartUploadCryptoContext, SdkFilterInputStream sdkFilterInputStream) {
    }

    protected boolean a() {
        return false;
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModuleBase
    final long b(UploadPartRequest uploadPartRequest) {
        return uploadPartRequest.getPartSize() + (this.f6870d.f() / 8);
    }
}
