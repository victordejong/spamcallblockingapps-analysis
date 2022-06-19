package com.amazonaws.services.p101s3.internal.crypto;

import com.amazonaws.AmazonClientException;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.DefaultAWSCredentialsProviderChain;
import com.amazonaws.internal.SdkFilterInputStream;
import com.amazonaws.services.kms.AWSKMSClient;
import com.amazonaws.services.p101s3.AmazonS3EncryptionClient;
import com.amazonaws.services.p101s3.internal.S3Direct;
import com.amazonaws.services.p101s3.model.CryptoConfiguration;
import com.amazonaws.services.p101s3.model.CryptoMode;
import com.amazonaws.services.p101s3.model.EncryptedGetObjectRequest;
import com.amazonaws.services.p101s3.model.EncryptionMaterialsProvider;
import com.amazonaws.services.p101s3.model.ExtraMaterialsDescription;
import com.amazonaws.services.p101s3.model.GetObjectRequest;
import com.amazonaws.services.p101s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.S3Object;
import com.amazonaws.services.p101s3.model.S3ObjectId;
import com.amazonaws.services.p101s3.model.S3ObjectInputStream;
import com.amazonaws.services.p101s3.model.UploadPartRequest;
import com.amazonaws.util.IOUtils;
import com.amazonaws.util.json.JsonUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
@Deprecated
/* renamed from: com.amazonaws.services.s3.internal.crypto.S3CryptoModuleAE */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE.class */
class S3CryptoModuleAE extends S3CryptoModuleBase<MultipartUploadCryptoContext> {
    static {
        CryptoRuntime.m38354b();
    }

    public S3CryptoModuleAE(AWSKMSClient aWSKMSClient, S3Direct s3Direct, AWSCredentialsProvider aWSCredentialsProvider, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        super(aWSKMSClient, s3Direct, aWSCredentialsProvider, encryptionMaterialsProvider, cryptoConfiguration);
        CryptoMode cryptoMode = cryptoConfiguration.getCryptoMode();
        if (cryptoMode == CryptoMode.StrictAuthenticatedEncryption || cryptoMode == CryptoMode.AuthenticatedEncryption) {
            return;
        }
        throw new IllegalArgumentException();
    }

    S3CryptoModuleAE(AWSKMSClient aWSKMSClient, S3Direct s3Direct, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        this(aWSKMSClient, s3Direct, new DefaultAWSCredentialsProviderChain(), encryptionMaterialsProvider, cryptoConfiguration);
    }

    S3CryptoModuleAE(S3Direct s3Direct, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        this(null, s3Direct, new DefaultAWSCredentialsProviderChain(), encryptionMaterialsProvider, cryptoConfiguration);
    }

    /* renamed from: a */
    private static S3ObjectWrapper m38341a(S3ObjectWrapper s3ObjectWrapper, ContentCryptoMaterial contentCryptoMaterial) {
        s3ObjectWrapper.m38303a(new S3ObjectInputStream(new CipherLiteInputStream(s3ObjectWrapper.f12445a.getObjectContent(), contentCryptoMaterial.f12401a, 2048)));
        return s3ObjectWrapper;
    }

    /* renamed from: a */
    private S3ObjectWrapper m38340a(S3ObjectWrapper s3ObjectWrapper, long[] jArr, Map<String, String> map) {
        if (jArr == null) {
            return s3ObjectWrapper;
        }
        long instanceLength = (s3ObjectWrapper.f12445a.getObjectMetadata().getInstanceLength() - ((map != null ? ContentCryptoScheme.m38370a(map.get("x-amz-cek-alg")) : ContentCryptoScheme.m38370a(s3ObjectWrapper.f12445a.getObjectMetadata().getUserMetadata().get("x-amz-cek-alg"))).mo38359f() / 8)) - 1;
        if (jArr[1] > instanceLength) {
            jArr[1] = instanceLength;
            if (jArr[0] > jArr[1]) {
                IOUtils.closeQuietly(s3ObjectWrapper.f12445a.getObjectContent(), this.f12433b);
                s3ObjectWrapper.f12445a.setObjectContent(new ByteArrayInputStream(new byte[0]));
                return s3ObjectWrapper;
            }
        }
        if (jArr[0] > jArr[1]) {
            return s3ObjectWrapper;
        }
        try {
            s3ObjectWrapper.m38303a(new S3ObjectInputStream(new AdjustedRangeInputStream(s3ObjectWrapper.f12445a.getObjectContent(), jArr[0], jArr[1])));
            return s3ObjectWrapper;
        } catch (IOException e) {
            throw new AmazonClientException("Error adjusting output to desired byte range: " + e.getMessage());
        }
    }

    /* renamed from: a */
    private S3Object m38339a(GetObjectRequest getObjectRequest, long[] jArr, long[] jArr2, S3ObjectWrapper s3ObjectWrapper, S3ObjectWrapper s3ObjectWrapper2) {
        ExtraMaterialsDescription extraMaterialsDescription = ExtraMaterialsDescription.NONE;
        boolean mo38336a = mo38336a();
        boolean z = mo38336a;
        if (getObjectRequest instanceof EncryptedGetObjectRequest) {
            EncryptedGetObjectRequest encryptedGetObjectRequest = (EncryptedGetObjectRequest) getObjectRequest;
            ExtraMaterialsDescription extraMaterialDescription = encryptedGetObjectRequest.getExtraMaterialDescription();
            extraMaterialsDescription = extraMaterialDescription;
            z = mo38336a;
            if (!mo38336a) {
                z = encryptedGetObjectRequest.isKeyWrapExpected();
                extraMaterialsDescription = extraMaterialDescription;
            }
        }
        Map<String, String> unmodifiableMap = Collections.unmodifiableMap(JsonUtils.jsonToMap(s3ObjectWrapper2.m38301b()));
        ContentCryptoMaterial m38378a = ContentCryptoMaterial.m38378a(unmodifiableMap, this.f12432a, this.f12436e.getCryptoProvider(), jArr2, extraMaterialsDescription, z, this.f12439h);
        mo38333a(m38378a, s3ObjectWrapper);
        return m38340a(m38341a(s3ObjectWrapper, m38378a), jArr, unmodifiableMap).f12445a;
    }

    /* renamed from: a */
    private S3Object m38338a(GetObjectRequest getObjectRequest, long[] jArr, long[] jArr2, S3Object s3Object) {
        S3ObjectWrapper s3ObjectWrapper = new S3ObjectWrapper(s3Object, getObjectRequest.getS3ObjectId());
        Map<String, String> userMetadata = s3ObjectWrapper.f12445a.getObjectMetadata().getUserMetadata();
        if (userMetadata != null && userMetadata.containsKey("x-amz-iv") && (userMetadata.containsKey("x-amz-key-v2") || userMetadata.containsKey("x-amz-key"))) {
            ExtraMaterialsDescription extraMaterialsDescription = ExtraMaterialsDescription.NONE;
            boolean mo38336a = mo38336a();
            boolean z = mo38336a;
            if (getObjectRequest instanceof EncryptedGetObjectRequest) {
                EncryptedGetObjectRequest encryptedGetObjectRequest = (EncryptedGetObjectRequest) getObjectRequest;
                ExtraMaterialsDescription extraMaterialDescription = encryptedGetObjectRequest.getExtraMaterialDescription();
                extraMaterialsDescription = extraMaterialDescription;
                z = mo38336a;
                if (!mo38336a) {
                    z = encryptedGetObjectRequest.isKeyWrapExpected();
                    extraMaterialsDescription = extraMaterialDescription;
                }
            }
            ContentCryptoMaterial m38380a = ContentCryptoMaterial.m38380a(s3ObjectWrapper.f12445a.getObjectMetadata(), this.f12432a, this.f12436e.getCryptoProvider(), jArr2, extraMaterialsDescription, z, this.f12439h);
            mo38333a(m38380a, s3ObjectWrapper);
            return m38340a(m38341a(s3ObjectWrapper, m38380a), jArr, (Map<String, String>) null).f12445a;
        }
        S3ObjectWrapper a = m38320a(getObjectRequest.getS3ObjectId(), (String) null);
        if (a != null) {
            try {
                if (a.m38304a()) {
                    return m38339a(getObjectRequest, jArr, jArr2, s3ObjectWrapper, a);
                }
            } finally {
                IOUtils.closeQuietly(a, this.f12433b);
            }
        }
        if (!mo38336a() && this.f12436e.isIgnoreMissingInstructionFile()) {
            this.f12433b.mo38587d(String.format("Unable to detect encryption information for object '%s' in bucket '%s'. Returning object without decryption.", s3Object.getKey(), s3Object.getBucketName()));
            return m38340a(s3ObjectWrapper, jArr, (Map<String, String>) null).f12445a;
        }
        IOUtils.closeQuietly(s3ObjectWrapper, this.f12433b);
        throw new SecurityException("Instruction file not found for S3 object with bucket name: " + s3Object.getBucketName() + ", key: " + s3Object.getKey());
    }

    /* renamed from: a */
    private S3Object m38337a(GetObjectRequest getObjectRequest, long[] jArr, long[] jArr2, S3Object s3Object, String str) {
        S3ObjectId s3ObjectId = getObjectRequest.getS3ObjectId();
        S3ObjectWrapper a = m38320a(s3ObjectId, str);
        if (a == null) {
            throw new AmazonClientException("Instruction file with suffix " + str + " is not found for " + s3Object);
        }
        try {
            if (a.m38304a()) {
                return m38339a(getObjectRequest, jArr, jArr2, new S3ObjectWrapper(s3Object, s3ObjectId), a);
            }
            throw new AmazonClientException("Invalid Instruction file with suffix " + str + " detected for " + s3Object);
        } finally {
            IOUtils.closeQuietly(a, this.f12433b);
        }
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModuleBase
    /* renamed from: a */
    protected final long mo38315a(long j) {
        return j + (this.f12435d.mo38359f() / 8);
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModuleBase
    /* renamed from: a */
    final SdkFilterInputStream mo38314a(CipherLiteInputStream cipherLiteInputStream, long j) {
        return cipherLiteInputStream;
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModuleBase
    /* renamed from: a */
    final CipherLite mo38313a(MultipartUploadCryptoContext multipartUploadCryptoContext) {
        return multipartUploadCryptoContext.f12428f.f12401a;
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModuleBase
    /* renamed from: a */
    final MultipartUploadCryptoContext mo38310a(InitiateMultipartUploadRequest initiateMultipartUploadRequest, ContentCryptoMaterial contentCryptoMaterial) {
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
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v7 */
    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModule
    /* renamed from: a */
    public final S3Object mo38311a(GetObjectRequest getObjectRequest) {
        long[] jArr;
        m38334a(getObjectRequest, AmazonS3EncryptionClient.f12302i);
        long[] range = getObjectRequest.getRange();
        if (!mo38336a() || (range == null && getObjectRequest.getPartNumber() == null)) {
            String str = null;
            if (range == null || range[0] > range[1]) {
                jArr = null;
            } else {
                jArr = new long[2];
                long j = range[0];
                ?? r0 = (j - (j % 16)) - 16;
                ?? r14 = r0;
                if (r0 < 0) {
                    r14 = false;
                }
                jArr[0] = r14 == true ? 1 : 0;
                long j2 = range[1];
                ?? r02 = j2 + (16 - (j2 % 16)) + 16;
                ?? r142 = r02;
                if (r02 < 0) {
                    r142 = true;
                }
                jArr[1] = r142 == true ? 1 : 0;
            }
            if (jArr != null) {
                getObjectRequest.setRange(jArr[0], jArr[1]);
            }
            S3Object mo38422a = this.f12438g.mo38422a(getObjectRequest);
            if (mo38422a == null) {
                return null;
            }
            if (getObjectRequest instanceof EncryptedGetObjectRequest) {
                str = ((EncryptedGetObjectRequest) getObjectRequest).getInstructionFileSuffix();
            }
            if (str != null) {
                try {
                    if (!str.trim().isEmpty()) {
                        return m38337a(getObjectRequest, range, jArr, mo38422a, str);
                    }
                } catch (Error e) {
                    IOUtils.closeQuietly(mo38422a, this.f12433b);
                    throw e;
                } catch (RuntimeException e2) {
                    IOUtils.closeQuietly(mo38422a, this.f12433b);
                    throw e2;
                }
            }
            return m38338a(getObjectRequest, range, jArr, mo38422a);
        }
        throw new SecurityException("Range get and getting a part are not allowed in strict crypto mode");
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModuleBase
    /* renamed from: a */
    final void mo38312a(MultipartUploadCryptoContext multipartUploadCryptoContext, SdkFilterInputStream sdkFilterInputStream) {
    }

    /* renamed from: a */
    protected boolean mo38336a() {
        return false;
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModuleBase
    /* renamed from: b */
    final long mo38309b(UploadPartRequest uploadPartRequest) {
        return uploadPartRequest.getPartSize() + (this.f12435d.mo38359f() / 8);
    }
}
