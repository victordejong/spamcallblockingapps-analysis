package com.amazonaws.services.p101s3;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.internal.StaticCredentialsProvider;
import com.amazonaws.metrics.RequestMetricCollector;
import com.amazonaws.regions.Region;
import com.amazonaws.services.kms.AWSKMSClient;
import com.amazonaws.services.p101s3.internal.S3Direct;
import com.amazonaws.services.p101s3.internal.crypto.CryptoModuleDispatcher;
import com.amazonaws.services.p101s3.internal.crypto.S3CryptoModule;
import com.amazonaws.services.p101s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.p101s3.model.CryptoConfiguration;
import com.amazonaws.services.p101s3.model.EncryptedInitiateMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.EncryptionMaterials;
import com.amazonaws.services.p101s3.model.EncryptionMaterialsProvider;
import com.amazonaws.services.p101s3.model.GetObjectRequest;
import com.amazonaws.services.p101s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.p101s3.model.PutObjectRequest;
import com.amazonaws.services.p101s3.model.PutObjectResult;
import com.amazonaws.services.p101s3.model.S3Object;
import com.amazonaws.services.p101s3.model.StaticEncryptionMaterialsProvider;
import com.amazonaws.services.p101s3.model.UploadPartRequest;
import com.amazonaws.services.p101s3.model.UploadPartResult;
import com.amazonaws.util.VersionInfoUtils;
@Deprecated
/* renamed from: com.amazonaws.services.s3.AmazonS3EncryptionClient */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/AmazonS3EncryptionClient.class */
public class AmazonS3EncryptionClient extends AmazonS3Client implements AmazonS3Encryption {

    /* renamed from: i */
    public static final String f12302i = AmazonS3EncryptionClient.class.getName() + "/" + VersionInfoUtils.m38212a();

    /* renamed from: j */
    private final S3CryptoModule<?> f12303j;

    /* renamed from: k */
    private final AWSKMSClient f12304k;

    /* renamed from: l */
    private final boolean f12305l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.amazonaws.services.s3.AmazonS3EncryptionClient$S3DirectImpl */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl.class */
    public final class S3DirectImpl extends S3Direct {
        private S3DirectImpl() {
            AmazonS3EncryptionClient.this = r4;
        }

        @Override // com.amazonaws.services.p101s3.internal.S3Direct
        /* renamed from: a */
        public final CompleteMultipartUploadResult mo38423a(CompleteMultipartUploadRequest completeMultipartUploadRequest) {
            return AmazonS3EncryptionClient.super.mo38448a(completeMultipartUploadRequest);
        }

        @Override // com.amazonaws.services.p101s3.internal.S3Direct
        /* renamed from: a */
        public final InitiateMultipartUploadResult mo38421a(InitiateMultipartUploadRequest initiateMultipartUploadRequest) {
            return AmazonS3EncryptionClient.super.mo38446a(initiateMultipartUploadRequest);
        }

        @Override // com.amazonaws.services.p101s3.internal.S3Direct
        /* renamed from: a */
        public final PutObjectResult mo38420a(PutObjectRequest putObjectRequest) {
            return AmazonS3EncryptionClient.super.mo38445a(putObjectRequest);
        }

        @Override // com.amazonaws.services.p101s3.internal.S3Direct
        /* renamed from: a */
        public final S3Object mo38422a(GetObjectRequest getObjectRequest) {
            return AmazonS3EncryptionClient.super.mo38447a(getObjectRequest);
        }

        @Override // com.amazonaws.services.p101s3.internal.S3Direct, com.amazonaws.services.p101s3.internal.S3DirectSpi
        /* renamed from: a */
        public final UploadPartResult mo38419a(UploadPartRequest uploadPartRequest) throws AmazonClientException, AmazonServiceException {
            return AmazonS3EncryptionClient.super.mo38419a(uploadPartRequest);
        }

        @Override // com.amazonaws.services.p101s3.internal.S3Direct
        /* renamed from: a */
        public final void mo38424a(AbortMultipartUploadRequest abortMultipartUploadRequest) {
            AmazonS3EncryptionClient.super.mo38449a(abortMultipartUploadRequest);
        }
    }

    public AmazonS3EncryptionClient(AWSCredentials aWSCredentials, EncryptionMaterials encryptionMaterials) {
        this(aWSCredentials, new StaticEncryptionMaterialsProvider(encryptionMaterials));
    }

    public AmazonS3EncryptionClient(AWSCredentials aWSCredentials, EncryptionMaterials encryptionMaterials, ClientConfiguration clientConfiguration, CryptoConfiguration cryptoConfiguration) {
        this(aWSCredentials, new StaticEncryptionMaterialsProvider(encryptionMaterials), clientConfiguration, cryptoConfiguration);
    }

    public AmazonS3EncryptionClient(AWSCredentials aWSCredentials, EncryptionMaterials encryptionMaterials, CryptoConfiguration cryptoConfiguration) {
        this(aWSCredentials, new StaticEncryptionMaterialsProvider(encryptionMaterials), cryptoConfiguration);
    }

    public AmazonS3EncryptionClient(AWSCredentials aWSCredentials, EncryptionMaterialsProvider encryptionMaterialsProvider) {
        this(aWSCredentials, encryptionMaterialsProvider, new ClientConfiguration(), new CryptoConfiguration());
    }

    public AmazonS3EncryptionClient(AWSCredentials aWSCredentials, EncryptionMaterialsProvider encryptionMaterialsProvider, ClientConfiguration clientConfiguration, CryptoConfiguration cryptoConfiguration) {
        this(new StaticCredentialsProvider(aWSCredentials), encryptionMaterialsProvider, clientConfiguration, cryptoConfiguration);
    }

    public AmazonS3EncryptionClient(AWSCredentials aWSCredentials, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        this(aWSCredentials, encryptionMaterialsProvider, new ClientConfiguration(), cryptoConfiguration);
    }

    public AmazonS3EncryptionClient(AWSCredentialsProvider aWSCredentialsProvider, EncryptionMaterialsProvider encryptionMaterialsProvider) {
        this(aWSCredentialsProvider, encryptionMaterialsProvider, new ClientConfiguration(), new CryptoConfiguration());
    }

    public AmazonS3EncryptionClient(AWSCredentialsProvider aWSCredentialsProvider, EncryptionMaterialsProvider encryptionMaterialsProvider, ClientConfiguration clientConfiguration, CryptoConfiguration cryptoConfiguration) {
        this(aWSCredentialsProvider, encryptionMaterialsProvider, clientConfiguration, cryptoConfiguration, null);
    }

    public AmazonS3EncryptionClient(AWSCredentialsProvider aWSCredentialsProvider, EncryptionMaterialsProvider encryptionMaterialsProvider, ClientConfiguration clientConfiguration, CryptoConfiguration cryptoConfiguration, RequestMetricCollector requestMetricCollector) {
        this(null, aWSCredentialsProvider, encryptionMaterialsProvider, clientConfiguration, cryptoConfiguration, requestMetricCollector);
    }

    public AmazonS3EncryptionClient(AWSCredentialsProvider aWSCredentialsProvider, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        this(aWSCredentialsProvider, encryptionMaterialsProvider, new ClientConfiguration(), cryptoConfiguration);
    }

    public AmazonS3EncryptionClient(AWSKMSClient aWSKMSClient, AWSCredentialsProvider aWSCredentialsProvider, EncryptionMaterialsProvider encryptionMaterialsProvider, ClientConfiguration clientConfiguration, CryptoConfiguration cryptoConfiguration, RequestMetricCollector requestMetricCollector) {
        super(aWSCredentialsProvider, clientConfiguration, requestMetricCollector);
        m38444a(encryptionMaterialsProvider, "EncryptionMaterialsProvider parameter must not be null.");
        m38444a(cryptoConfiguration, "CryptoConfiguration parameter must not be null.");
        boolean z = aWSKMSClient == null;
        this.f12305l = z;
        if (z) {
            AWSKMSClient aWSKMSClient2 = new AWSKMSClient(aWSCredentialsProvider, clientConfiguration, requestMetricCollector);
            Region awsKmsRegion = cryptoConfiguration.getAwsKmsRegion();
            aWSKMSClient = aWSKMSClient2;
            if (awsKmsRegion != null) {
                aWSKMSClient2.mo38472a(awsKmsRegion);
                aWSKMSClient = aWSKMSClient2;
            }
        }
        this.f12304k = aWSKMSClient;
        this.f12303j = new CryptoModuleDispatcher(aWSKMSClient, new S3DirectImpl(), aWSCredentialsProvider, encryptionMaterialsProvider, cryptoConfiguration);
    }

    public AmazonS3EncryptionClient(EncryptionMaterials encryptionMaterials) {
        this(new StaticEncryptionMaterialsProvider(encryptionMaterials));
    }

    public AmazonS3EncryptionClient(EncryptionMaterials encryptionMaterials, CryptoConfiguration cryptoConfiguration) {
        this(new StaticEncryptionMaterialsProvider(encryptionMaterials), cryptoConfiguration);
    }

    public AmazonS3EncryptionClient(EncryptionMaterialsProvider encryptionMaterialsProvider) {
        this((AWSCredentialsProvider) null, encryptionMaterialsProvider, new ClientConfiguration(), new CryptoConfiguration());
    }

    public AmazonS3EncryptionClient(EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        this((AWSCredentialsProvider) null, encryptionMaterialsProvider, new ClientConfiguration(), cryptoConfiguration);
    }

    /* renamed from: a */
    private static void m38444a(Object obj, String str) {
        if (obj != null) {
            return;
        }
        throw new IllegalArgumentException(str);
    }

    @Override // com.amazonaws.services.p101s3.AmazonS3Client, com.amazonaws.services.p101s3.AmazonS3
    /* renamed from: a */
    public final CompleteMultipartUploadResult mo38448a(CompleteMultipartUploadRequest completeMultipartUploadRequest) {
        return this.f12303j.mo38328a(completeMultipartUploadRequest);
    }

    @Override // com.amazonaws.services.p101s3.AmazonS3Client, com.amazonaws.services.p101s3.AmazonS3
    /* renamed from: a */
    public final InitiateMultipartUploadResult mo38446a(InitiateMultipartUploadRequest initiateMultipartUploadRequest) {
        return initiateMultipartUploadRequest instanceof EncryptedInitiateMultipartUploadRequest ? ((EncryptedInitiateMultipartUploadRequest) initiateMultipartUploadRequest).isCreateEncryptionMaterial() : true ? this.f12303j.mo38323a(initiateMultipartUploadRequest) : super.mo38446a(initiateMultipartUploadRequest);
    }

    @Override // com.amazonaws.services.p101s3.AmazonS3Client, com.amazonaws.services.p101s3.AmazonS3
    /* renamed from: a */
    public final PutObjectResult mo38445a(PutObjectRequest putObjectRequest) {
        return this.f12303j.mo38321a(putObjectRequest.clone());
    }

    @Override // com.amazonaws.services.p101s3.AmazonS3Client, com.amazonaws.services.p101s3.AmazonS3
    /* renamed from: a */
    public final S3Object mo38447a(GetObjectRequest getObjectRequest) {
        return this.f12303j.mo38311a(getObjectRequest);
    }

    @Override // com.amazonaws.services.p101s3.AmazonS3Client, com.amazonaws.services.p101s3.AmazonS3, com.amazonaws.services.p101s3.internal.S3DirectSpi
    /* renamed from: a */
    public final UploadPartResult mo38419a(UploadPartRequest uploadPartRequest) throws AmazonClientException, AmazonServiceException {
        return this.f12303j.mo38319a(uploadPartRequest);
    }

    @Override // com.amazonaws.services.p101s3.AmazonS3Client, com.amazonaws.services.p101s3.AmazonS3
    /* renamed from: a */
    public final void mo38449a(AbortMultipartUploadRequest abortMultipartUploadRequest) {
        this.f12303j.mo38332a(abortMultipartUploadRequest);
    }
}
