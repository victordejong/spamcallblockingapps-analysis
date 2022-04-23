package com.amazonaws.services.s3.internal.crypto;

import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.services.kms.AWSKMSClient;
import com.amazonaws.services.s3.internal.S3Direct;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.s3.model.CryptoConfiguration;
import com.amazonaws.services.s3.model.CryptoMode;
import com.amazonaws.services.s3.model.EncryptionMaterialsProvider;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.PutObjectResult;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher.class */
public class CryptoModuleDispatcher extends S3CryptoModule<MultipartUploadContext> {

    /* renamed from: a  reason: collision with root package name */
    private final CryptoMode f6857a;

    /* renamed from: b  reason: collision with root package name */
    private final S3CryptoModuleEO f6858b;

    /* renamed from: c  reason: collision with root package name */
    private final S3CryptoModuleAE f6859c;

    /* renamed from: com.amazonaws.services.s3.internal.crypto.CryptoModuleDispatcher$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/CryptoModuleDispatcher$1.class */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6860a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[CryptoMode.values().length];
            f6860a = iArr;
            try {
                iArr[CryptoMode.StrictAuthenticatedEncryption.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6860a[CryptoMode.AuthenticatedEncryption.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6860a[CryptoMode.EncryptionOnly.ordinal()] = 3;
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
        this.f6857a = cryptoMode;
        int i = AnonymousClass1.f6860a[cryptoMode.ordinal()];
        if (i == 1) {
            this.f6859c = new S3CryptoModuleAEStrict(aWSKMSClient, s3Direct, aWSCredentialsProvider, encryptionMaterialsProvider, readOnly);
            this.f6858b = null;
        } else if (i == 2) {
            this.f6859c = new S3CryptoModuleAE(aWSKMSClient, s3Direct, aWSCredentialsProvider, encryptionMaterialsProvider, readOnly);
            this.f6858b = null;
        } else if (i == 3) {
            this.f6858b = new S3CryptoModuleEO(aWSKMSClient, s3Direct, aWSCredentialsProvider, encryptionMaterialsProvider, readOnly);
            CryptoConfiguration clone2 = readOnly.clone();
            try {
                clone2.setCryptoMode(CryptoMode.AuthenticatedEncryption);
            } catch (UnsupportedOperationException e) {
            }
            this.f6859c = new S3CryptoModuleAE(aWSKMSClient, s3Direct, aWSCredentialsProvider, encryptionMaterialsProvider, clone2.readOnly());
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModule
    public final CompleteMultipartUploadResult a(CompleteMultipartUploadRequest completeMultipartUploadRequest) {
        return this.f6857a == CryptoMode.EncryptionOnly ? this.f6858b.a(completeMultipartUploadRequest) : this.f6859c.a(completeMultipartUploadRequest);
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModule
    public final InitiateMultipartUploadResult a(InitiateMultipartUploadRequest initiateMultipartUploadRequest) {
        return this.f6857a == CryptoMode.EncryptionOnly ? this.f6858b.a(initiateMultipartUploadRequest) : this.f6859c.a(initiateMultipartUploadRequest);
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModule
    public final PutObjectResult a(PutObjectRequest putObjectRequest) {
        return this.f6857a == CryptoMode.EncryptionOnly ? this.f6858b.a(putObjectRequest) : this.f6859c.a(putObjectRequest);
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModule
    public final S3Object a(GetObjectRequest getObjectRequest) {
        return this.f6859c.a(getObjectRequest);
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModule
    public final UploadPartResult a(UploadPartRequest uploadPartRequest) {
        return this.f6857a == CryptoMode.EncryptionOnly ? this.f6858b.a(uploadPartRequest) : this.f6859c.a(uploadPartRequest);
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModule
    public final void a(AbortMultipartUploadRequest abortMultipartUploadRequest) {
        if (this.f6857a == CryptoMode.EncryptionOnly) {
            this.f6858b.a(abortMultipartUploadRequest);
        } else {
            this.f6859c.a(abortMultipartUploadRequest);
        }
    }
}
