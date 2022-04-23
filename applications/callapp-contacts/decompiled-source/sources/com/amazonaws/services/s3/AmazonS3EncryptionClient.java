package com.amazonaws.services.s3;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.internal.StaticCredentialsProvider;
import com.amazonaws.metrics.RequestMetricCollector;
import com.amazonaws.regions.Region;
import com.amazonaws.services.kms.AWSKMSClient;
import com.amazonaws.services.s3.internal.S3Direct;
import com.amazonaws.services.s3.internal.crypto.CryptoModuleDispatcher;
import com.amazonaws.services.s3.internal.crypto.S3CryptoModule;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.s3.model.CryptoConfiguration;
import com.amazonaws.services.s3.model.EncryptedInitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.EncryptionMaterials;
import com.amazonaws.services.s3.model.EncryptionMaterialsProvider;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.PutObjectResult;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.StaticEncryptionMaterialsProvider;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;
import com.amazonaws.util.VersionInfoUtils;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/AmazonS3EncryptionClient.class */
public class AmazonS3EncryptionClient extends AmazonS3Client implements AmazonS3Encryption {
    public static final String i = AmazonS3EncryptionClient.class.getName() + "/" + VersionInfoUtils.a();
    private final S3CryptoModule<?> j;
    private final AWSKMSClient k;
    private final boolean l;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/AmazonS3EncryptionClient$S3DirectImpl.class */
    final class S3DirectImpl extends S3Direct {
        private S3DirectImpl() {
        }

        @Override // com.amazonaws.services.s3.internal.S3Direct
        public final CompleteMultipartUploadResult a(CompleteMultipartUploadRequest completeMultipartUploadRequest) {
            return AmazonS3EncryptionClient.super.a(completeMultipartUploadRequest);
        }

        @Override // com.amazonaws.services.s3.internal.S3Direct
        public final InitiateMultipartUploadResult a(InitiateMultipartUploadRequest initiateMultipartUploadRequest) {
            return AmazonS3EncryptionClient.super.a(initiateMultipartUploadRequest);
        }

        @Override // com.amazonaws.services.s3.internal.S3Direct
        public final PutObjectResult a(PutObjectRequest putObjectRequest) {
            return AmazonS3EncryptionClient.super.a(putObjectRequest);
        }

        @Override // com.amazonaws.services.s3.internal.S3Direct
        public final S3Object a(GetObjectRequest getObjectRequest) {
            return AmazonS3EncryptionClient.super.a(getObjectRequest);
        }

        @Override // com.amazonaws.services.s3.internal.S3Direct, com.amazonaws.services.s3.internal.S3DirectSpi
        public final UploadPartResult a(UploadPartRequest uploadPartRequest) throws AmazonClientException, AmazonServiceException {
            return AmazonS3EncryptionClient.super.a(uploadPartRequest);
        }

        @Override // com.amazonaws.services.s3.internal.S3Direct
        public final void a(AbortMultipartUploadRequest abortMultipartUploadRequest) {
            AmazonS3EncryptionClient.super.a(abortMultipartUploadRequest);
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
        a(encryptionMaterialsProvider, "EncryptionMaterialsProvider parameter must not be null.");
        a(cryptoConfiguration, "CryptoConfiguration parameter must not be null.");
        boolean z = aWSKMSClient == null;
        this.l = z;
        if (z) {
            AWSKMSClient aWSKMSClient2 = new AWSKMSClient(aWSCredentialsProvider, clientConfiguration, requestMetricCollector);
            Region awsKmsRegion = cryptoConfiguration.getAwsKmsRegion();
            aWSKMSClient = aWSKMSClient2;
            if (awsKmsRegion != null) {
                aWSKMSClient2.a(awsKmsRegion);
                aWSKMSClient = aWSKMSClient2;
            }
        }
        this.k = aWSKMSClient;
        this.j = new CryptoModuleDispatcher(aWSKMSClient, new S3DirectImpl(), aWSCredentialsProvider, encryptionMaterialsProvider, cryptoConfiguration);
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

    private static void a(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    @Override // com.amazonaws.services.s3.AmazonS3Client, com.amazonaws.services.s3.AmazonS3
    public final CompleteMultipartUploadResult a(CompleteMultipartUploadRequest completeMultipartUploadRequest) {
        return this.j.a(completeMultipartUploadRequest);
    }

    @Override // com.amazonaws.services.s3.AmazonS3Client, com.amazonaws.services.s3.AmazonS3
    public final InitiateMultipartUploadResult a(InitiateMultipartUploadRequest initiateMultipartUploadRequest) {
        return initiateMultipartUploadRequest instanceof EncryptedInitiateMultipartUploadRequest ? ((EncryptedInitiateMultipartUploadRequest) initiateMultipartUploadRequest).isCreateEncryptionMaterial() : true ? this.j.a(initiateMultipartUploadRequest) : super.a(initiateMultipartUploadRequest);
    }

    @Override // com.amazonaws.services.s3.AmazonS3Client, com.amazonaws.services.s3.AmazonS3
    public final PutObjectResult a(PutObjectRequest putObjectRequest) {
        return this.j.a(putObjectRequest.clone());
    }

    @Override // com.amazonaws.services.s3.AmazonS3Client, com.amazonaws.services.s3.AmazonS3
    public final S3Object a(GetObjectRequest getObjectRequest) {
        return this.j.a(getObjectRequest);
    }

    @Override // com.amazonaws.services.s3.AmazonS3Client, com.amazonaws.services.s3.AmazonS3, com.amazonaws.services.s3.internal.S3DirectSpi
    public final UploadPartResult a(UploadPartRequest uploadPartRequest) throws AmazonClientException, AmazonServiceException {
        return this.j.a(uploadPartRequest);
    }

    @Override // com.amazonaws.services.s3.AmazonS3Client, com.amazonaws.services.s3.AmazonS3
    public final void a(AbortMultipartUploadRequest abortMultipartUploadRequest) {
        this.j.a(abortMultipartUploadRequest);
    }
}
