package com.amazonaws.services.p101s3.internal.crypto;

import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.services.kms.AWSKMSClient;
import com.amazonaws.services.p101s3.internal.S3Direct;
import com.amazonaws.services.p101s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.p101s3.model.CryptoConfiguration;
import com.amazonaws.services.p101s3.model.CryptoMode;
import com.amazonaws.services.p101s3.model.EncryptionMaterialsProvider;
import com.amazonaws.services.p101s3.model.GetObjectRequest;
import com.amazonaws.services.p101s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.p101s3.model.PutObjectRequest;
import com.amazonaws.services.p101s3.model.PutObjectResult;
import com.amazonaws.services.p101s3.model.S3Object;
import com.amazonaws.services.p101s3.model.UploadPartRequest;
import com.amazonaws.services.p101s3.model.UploadPartResult;
@Deprecated
/* renamed from: com.amazonaws.services.s3.internal.crypto.CryptoModuleDispatcher */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher.class */
public class CryptoModuleDispatcher extends S3CryptoModule<MultipartUploadContext> {

    /* renamed from: a */
    private final CryptoMode f12408a;

    /* renamed from: b */
    private final S3CryptoModuleEO f12409b;

    /* renamed from: c */
    private final S3CryptoModuleAE f12410c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.amazonaws.services.s3.internal.crypto.CryptoModuleDispatcher$1 */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher$1.class */
    public static /* synthetic */ class C33021 {

        /* renamed from: a */
        static final /* synthetic */ int[] f12411a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[CryptoMode.values().length];
            f12411a = iArr;
            try {
                iArr[CryptoMode.StrictAuthenticatedEncryption.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12411a[CryptoMode.AuthenticatedEncryption.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f12411a[CryptoMode.EncryptionOnly.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public CryptoModuleDispatcher(AWSKMSClient aWSKMSClient, S3Direct s3Direct, AWSCredentialsProvider aWSCredentialsProvider, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        CryptoConfiguration clone = cryptoConfiguration.clone();
        if (clone.getCryptoMode() == null) {
            clone.setCryptoMode(CryptoMode.EncryptionOnly);
        }
        CryptoConfiguration readOnly = clone.readOnly();
        CryptoMode cryptoMode = readOnly.getCryptoMode();
        this.f12408a = cryptoMode;
        int i = C33021.f12411a[cryptoMode.ordinal()];
        if (i == 1) {
            this.f12410c = new S3CryptoModuleAEStrict(aWSKMSClient, s3Direct, aWSCredentialsProvider, encryptionMaterialsProvider, readOnly);
            this.f12409b = null;
        } else if (i == 2) {
            this.f12410c = new S3CryptoModuleAE(aWSKMSClient, s3Direct, aWSCredentialsProvider, encryptionMaterialsProvider, readOnly);
            this.f12409b = null;
        } else if (i != 3) {
            throw new IllegalStateException();
        } else {
            this.f12409b = new S3CryptoModuleEO(aWSKMSClient, s3Direct, aWSCredentialsProvider, encryptionMaterialsProvider, readOnly);
            CryptoConfiguration clone2 = readOnly.clone();
            try {
                clone2.setCryptoMode(CryptoMode.AuthenticatedEncryption);
            } catch (UnsupportedOperationException e) {
            }
            this.f12410c = new S3CryptoModuleAE(aWSKMSClient, s3Direct, aWSCredentialsProvider, encryptionMaterialsProvider, clone2.readOnly());
        }
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModule
    /* renamed from: a */
    public final CompleteMultipartUploadResult mo38328a(CompleteMultipartUploadRequest completeMultipartUploadRequest) {
        return this.f12408a == CryptoMode.EncryptionOnly ? this.f12409b.mo38328a(completeMultipartUploadRequest) : this.f12410c.mo38328a(completeMultipartUploadRequest);
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModule
    /* renamed from: a */
    public final InitiateMultipartUploadResult mo38323a(InitiateMultipartUploadRequest initiateMultipartUploadRequest) {
        return this.f12408a == CryptoMode.EncryptionOnly ? this.f12409b.mo38323a(initiateMultipartUploadRequest) : this.f12410c.mo38323a(initiateMultipartUploadRequest);
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModule
    /* renamed from: a */
    public final PutObjectResult mo38321a(PutObjectRequest putObjectRequest) {
        return this.f12408a == CryptoMode.EncryptionOnly ? this.f12409b.mo38321a(putObjectRequest) : this.f12410c.mo38321a(putObjectRequest);
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModule
    /* renamed from: a */
    public final S3Object mo38311a(GetObjectRequest getObjectRequest) {
        return this.f12410c.mo38311a(getObjectRequest);
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModule
    /* renamed from: a */
    public final UploadPartResult mo38319a(UploadPartRequest uploadPartRequest) {
        return this.f12408a == CryptoMode.EncryptionOnly ? this.f12409b.mo38319a(uploadPartRequest) : this.f12410c.mo38319a(uploadPartRequest);
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModule
    /* renamed from: a */
    public final void mo38332a(AbortMultipartUploadRequest abortMultipartUploadRequest) {
        if (this.f12408a == CryptoMode.EncryptionOnly) {
            this.f12409b.mo38332a(abortMultipartUploadRequest);
        } else {
            this.f12410c.mo38332a(abortMultipartUploadRequest);
        }
    }
}
