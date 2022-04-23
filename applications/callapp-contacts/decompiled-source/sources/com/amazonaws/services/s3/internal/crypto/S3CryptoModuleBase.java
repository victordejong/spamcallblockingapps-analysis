package com.amazonaws.services.s3.internal.crypto;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.internal.ReleasableInputStream;
import com.amazonaws.internal.ResettableInputStream;
import com.amazonaws.internal.SdkFilterInputStream;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.kms.AWSKMSClient;
import com.amazonaws.services.kms.model.GenerateDataKeyRequest;
import com.amazonaws.services.kms.model.GenerateDataKeyResult;
import com.amazonaws.services.s3.AmazonS3EncryptionClient;
import com.amazonaws.services.s3.internal.InputSubstream;
import com.amazonaws.services.s3.internal.S3Direct;
import com.amazonaws.services.s3.internal.crypto.MultipartUploadCryptoContext;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.s3.model.AbstractPutObjectRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.s3.model.CryptoConfiguration;
import com.amazonaws.services.s3.model.CryptoStorageMode;
import com.amazonaws.services.s3.model.EncryptionMaterials;
import com.amazonaws.services.s3.model.EncryptionMaterialsFactory;
import com.amazonaws.services.s3.model.EncryptionMaterialsProvider;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.s3.model.InstructionFileId;
import com.amazonaws.services.s3.model.MaterialsDescriptionProvider;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.PutObjectResult;
import com.amazonaws.services.s3.model.S3DataSource;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.S3ObjectId;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;
import com.amazonaws.services.s3.util.Mimetypes;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.LengthCheckInputStream;
import com.amazonaws.util.StringUtils;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase.class */
public abstract class S3CryptoModuleBase<T extends MultipartUploadCryptoContext> extends S3CryptoModule<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final EncryptionMaterialsProvider f6867a;

    /* renamed from: b  reason: collision with root package name */
    protected final Log f6868b;

    /* renamed from: c  reason: collision with root package name */
    protected final S3CryptoScheme f6869c;

    /* renamed from: d  reason: collision with root package name */
    protected final ContentCryptoScheme f6870d;
    protected final CryptoConfiguration e;
    protected final Map<String, T> f;
    protected final S3Direct g;
    protected final AWSKMSClient h;

    /* JADX INFO: Access modifiers changed from: protected */
    public S3CryptoModuleBase(AWSKMSClient aWSKMSClient, S3Direct s3Direct, AWSCredentialsProvider aWSCredentialsProvider, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        this.f6868b = LogFactory.a(getClass());
        this.f = Collections.synchronizedMap(new HashMap());
        if (cryptoConfiguration.isReadOnly()) {
            this.f6867a = encryptionMaterialsProvider;
            this.g = s3Direct;
            this.e = cryptoConfiguration;
            S3CryptoScheme a2 = S3CryptoScheme.a(cryptoConfiguration.getCryptoMode());
            this.f6869c = a2;
            this.f6870d = a2.f6873b;
            this.h = aWSKMSClient;
            return;
        }
        throw new IllegalArgumentException("The crypto configuration parameter is required to be read-only");
    }

    protected S3CryptoModuleBase(S3Direct s3Direct, AWSCredentialsProvider aWSCredentialsProvider, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        this.f6868b = LogFactory.a(getClass());
        this.f = Collections.synchronizedMap(new HashMap());
        this.f6867a = encryptionMaterialsProvider;
        this.g = s3Direct;
        this.e = cryptoConfiguration;
        S3CryptoScheme a2 = S3CryptoScheme.a(cryptoConfiguration.getCryptoMode());
        this.f6869c = a2;
        this.f6870d = a2.f6873b;
        this.h = null;
    }

    private static long a(AbstractPutObjectRequest abstractPutObjectRequest, ObjectMetadata objectMetadata) {
        if (abstractPutObjectRequest.getFile() != null) {
            return abstractPutObjectRequest.getFile().length();
        }
        if (abstractPutObjectRequest.getInputStream() == null || objectMetadata.getRawMetadataValue("Content-Length") == null) {
            return -1L;
        }
        return objectMetadata.getContentLength();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <X extends AmazonWebServiceRequest> X a(X x, String str) {
        x.getRequestClientOptions().a(str);
        return x;
    }

    private CipherLiteInputStream a(AbstractPutObjectRequest abstractPutObjectRequest, ContentCryptoMaterial contentCryptoMaterial, long j) {
        File file = abstractPutObjectRequest.getFile();
        InputStream inputStream = abstractPutObjectRequest.getInputStream();
        InputStream inputStream2 = null;
        try {
            if (file != null) {
                inputStream2 = new ResettableInputStream(file);
            } else if (inputStream != null) {
                inputStream2 = ReleasableInputStream.a(inputStream);
            }
            InputStream inputStream3 = inputStream2;
            if (j > -1) {
                inputStream3 = new LengthCheckInputStream(inputStream2, j, false);
            }
            CipherLite cipherLite = contentCryptoMaterial.f6850a;
            return cipherLite.b() ? new CipherLiteInputStream(inputStream3, cipherLite, 2048) : new RenewableCipherLiteInputStream(inputStream3, cipherLite, 2048);
        } catch (Exception e) {
            S3DataSource.Utils.cleanupDataSource(abstractPutObjectRequest, file, inputStream, null, this.f6868b);
            throw new AmazonClientException("Unable to create cipher input stream", e);
        }
    }

    private CipherLiteInputStream a(UploadPartRequest uploadPartRequest, CipherLite cipherLite) {
        Exception e;
        InputStream inputStream;
        InputSubstream inputSubstream;
        File file = uploadPartRequest.getFile();
        InputStream inputStream2 = uploadPartRequest.getInputStream();
        try {
            if (file != null) {
                inputStream = new ResettableInputStream(file);
            } else if (inputStream2 != null) {
                inputStream = inputStream2;
            } else {
                throw new IllegalArgumentException("A File or InputStream must be specified when uploading part");
            }
            inputSubstream = new InputSubstream(inputStream, uploadPartRequest.getFileOffset(), uploadPartRequest.getPartSize(), uploadPartRequest.isLastPart());
        } catch (Exception e2) {
            e = e2;
        }
        try {
            return cipherLite.b() ? new CipherLiteInputStream(inputSubstream, cipherLite, 2048, true, uploadPartRequest.isLastPart()) : new RenewableCipherLiteInputStream(inputSubstream, cipherLite, 2048, true, uploadPartRequest.isLastPart());
        } catch (Exception e3) {
            e = e3;
            S3DataSource.Utils.cleanupDataSource(uploadPartRequest, file, inputStream2, inputSubstream, this.f6868b);
            throw new AmazonClientException("Unable to create cipher input stream", e);
        }
    }

    private ContentCryptoMaterial a(AmazonWebServiceRequest amazonWebServiceRequest) {
        EncryptionMaterials encryptionMaterials;
        if ((amazonWebServiceRequest instanceof EncryptionMaterialsFactory) && (encryptionMaterials = ((EncryptionMaterialsFactory) amazonWebServiceRequest).getEncryptionMaterials()) != null) {
            return a(encryptionMaterials, this.e.getCryptoProvider(), amazonWebServiceRequest);
        }
        if (amazonWebServiceRequest instanceof MaterialsDescriptionProvider) {
            Map<String, String> materialsDescription = ((MaterialsDescriptionProvider) amazonWebServiceRequest).getMaterialsDescription();
            ContentCryptoMaterial a2 = a(this.f6867a, materialsDescription, this.e.getCryptoProvider(), amazonWebServiceRequest);
            if (a2 != null) {
                return a2;
            }
            if (materialsDescription != null && !this.f6867a.getEncryptionMaterials().isKMSEnabled()) {
                throw new AmazonClientException("No material available from the encryption material provider for description ".concat(String.valueOf(materialsDescription)));
            }
        }
        return a(this.f6867a, this.e.getCryptoProvider(), amazonWebServiceRequest);
    }

    private ContentCryptoMaterial a(EncryptionMaterials encryptionMaterials, Provider provider, AmazonWebServiceRequest amazonWebServiceRequest) {
        byte[] bArr = new byte[this.f6870d.e()];
        S3CryptoScheme.a().nextBytes(bArr);
        if (!encryptionMaterials.isKMSEnabled()) {
            return ContentCryptoMaterial.a(a(encryptionMaterials, provider), bArr, encryptionMaterials, this.f6869c, provider, this.h, amazonWebServiceRequest);
        }
        Map<String, String> a2 = ContentCryptoMaterial.a(encryptionMaterials, amazonWebServiceRequest);
        GenerateDataKeyRequest withKeySpec = new GenerateDataKeyRequest().withEncryptionContext(a2).withKeyId(encryptionMaterials.getCustomerMasterKeyId()).withKeySpec(this.f6870d.h());
        withKeySpec.withGeneralProgressListener(amazonWebServiceRequest.getGeneralProgressListener()).withRequestMetricCollector(amazonWebServiceRequest.getRequestMetricCollector());
        GenerateDataKeyResult a3 = this.h.a(withKeySpec);
        return ContentCryptoMaterial.a(new SecretKeySpec(BinaryUtils.a(a3.getPlaintext()), this.f6870d.a()), bArr, this.f6870d, provider, new KMSSecuredCEK(BinaryUtils.a(a3.getCiphertextBlob()), a2));
    }

    private ContentCryptoMaterial a(EncryptionMaterialsProvider encryptionMaterialsProvider, Provider provider, AmazonWebServiceRequest amazonWebServiceRequest) {
        EncryptionMaterials encryptionMaterials = encryptionMaterialsProvider.getEncryptionMaterials();
        if (encryptionMaterials != null) {
            return a(encryptionMaterials, provider, amazonWebServiceRequest);
        }
        throw new AmazonClientException("No material available from the encryption material provider");
    }

    private ContentCryptoMaterial a(EncryptionMaterialsProvider encryptionMaterialsProvider, Map<String, String> map, Provider provider, AmazonWebServiceRequest amazonWebServiceRequest) {
        EncryptionMaterials encryptionMaterials = encryptionMaterialsProvider.getEncryptionMaterials(map);
        if (encryptionMaterials == null) {
            return null;
        }
        return a(encryptionMaterials, provider, amazonWebServiceRequest);
    }

    private <R extends AbstractPutObjectRequest> R a(R r, ContentCryptoMaterial contentCryptoMaterial) {
        ObjectMetadata metadata = r.getMetadata();
        ObjectMetadata objectMetadata = metadata;
        if (metadata == null) {
            objectMetadata = new ObjectMetadata();
        }
        if (objectMetadata.getContentMD5() != null) {
            objectMetadata.addUserMetadata("x-amz-unencrypted-content-md5", objectMetadata.getContentMD5());
        }
        objectMetadata.setContentMD5(null);
        long a2 = a(r, objectMetadata);
        if (a2 >= 0) {
            objectMetadata.addUserMetadata("x-amz-unencrypted-content-length", Long.toString(a2));
            objectMetadata.setContentLength(a(a2));
        }
        r.setMetadata(objectMetadata);
        r.setInputStream(a(r, contentCryptoMaterial, a2));
        r.setFile(null);
        return r;
    }

    private ObjectMetadata a(ObjectMetadata objectMetadata, File file, ContentCryptoMaterial contentCryptoMaterial) {
        ObjectMetadata objectMetadata2 = objectMetadata;
        if (objectMetadata == null) {
            objectMetadata2 = new ObjectMetadata();
        }
        if (file != null) {
            objectMetadata2.setContentType(Mimetypes.getInstance().getMimetype(file));
        }
        return contentCryptoMaterial.a(objectMetadata2, this.e.getCryptoMode());
    }

    private SecretKey a(EncryptionMaterials encryptionMaterials, Provider provider) {
        boolean z;
        String a2 = this.f6870d.a();
        try {
            KeyGenerator instance = provider == null ? KeyGenerator.getInstance(a2) : KeyGenerator.getInstance(a2, provider);
            instance.init(this.f6870d.c(), S3CryptoScheme.a());
            KeyPair keyPair = encryptionMaterials.getKeyPair();
            if (keyPair == null || this.f6869c.f6872a.a(keyPair.getPublic(), provider) != null) {
                z = false;
            } else {
                Provider provider2 = instance.getProvider();
                z = "BC".equals(provider2 == null ? null : provider2.getName());
            }
            SecretKey generateKey = instance.generateKey();
            if (z && generateKey.getEncoded()[0] == 0) {
                for (int i = 0; i < 9; i++) {
                    SecretKey generateKey2 = instance.generateKey();
                    if (generateKey2.getEncoded()[0] != 0) {
                        return generateKey2;
                    }
                }
                throw new AmazonClientException("Failed to generate secret key");
            }
            return generateKey;
        } catch (NoSuchAlgorithmException e) {
            throw new AmazonClientException("Unable to generate envelope symmetric key:" + e.getMessage(), e);
        }
    }

    private PutObjectResult b(PutObjectRequest putObjectRequest) {
        ContentCryptoMaterial a2 = a((AmazonWebServiceRequest) putObjectRequest);
        File file = putObjectRequest.getFile();
        InputStream inputStream = putObjectRequest.getInputStream();
        PutObjectRequest putObjectRequest2 = (PutObjectRequest) a((S3CryptoModuleBase<T>) putObjectRequest, a2);
        putObjectRequest.setMetadata(a(putObjectRequest.getMetadata(), putObjectRequest.getFile(), a2));
        try {
            return this.g.a(putObjectRequest2);
        } finally {
            S3DataSource.Utils.cleanupDataSource(putObjectRequest, file, inputStream, putObjectRequest2.getInputStream(), this.f6868b);
        }
    }

    /* JADX WARN: Finally extract failed */
    private PutObjectResult c(PutObjectRequest putObjectRequest) {
        File file = putObjectRequest.getFile();
        InputStream inputStream = putObjectRequest.getInputStream();
        PutObjectRequest withInputStream = putObjectRequest.clone().withFile((File) null).withInputStream((InputStream) null);
        withInputStream.setKey(withInputStream.getKey() + ".instruction");
        ContentCryptoMaterial a2 = a((AmazonWebServiceRequest) putObjectRequest);
        PutObjectRequest putObjectRequest2 = (PutObjectRequest) a((S3CryptoModuleBase<T>) putObjectRequest, a2);
        try {
            PutObjectResult a3 = this.g.a(putObjectRequest2);
            S3DataSource.Utils.cleanupDataSource(putObjectRequest, file, inputStream, putObjectRequest2.getInputStream(), this.f6868b);
            S3Direct s3Direct = this.g;
            byte[] bytes = a2.a(this.e.getCryptoMode()).getBytes(StringUtils.f6920a);
            ObjectMetadata metadata = withInputStream.getMetadata();
            ObjectMetadata objectMetadata = metadata;
            if (metadata == null) {
                objectMetadata = new ObjectMetadata();
                withInputStream.setMetadata(objectMetadata);
            }
            objectMetadata.setContentLength(bytes.length);
            objectMetadata.addUserMetadata("x-amz-crypto-instr-file", "");
            withInputStream.setMetadata(objectMetadata);
            withInputStream.setInputStream(new ByteArrayInputStream(bytes));
            s3Direct.a(withInputStream);
            return a3;
        } catch (Throwable th) {
            S3DataSource.Utils.cleanupDataSource(putObjectRequest, file, inputStream, putObjectRequest2.getInputStream(), this.f6868b);
            throw th;
        }
    }

    protected abstract long a(long j);

    abstract <I extends CipherLiteInputStream> SdkFilterInputStream a(I i, long j);

    abstract CipherLite a(T t);

    abstract T a(InitiateMultipartUploadRequest initiateMultipartUploadRequest, ContentCryptoMaterial contentCryptoMaterial);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final S3ObjectWrapper a(S3ObjectId s3ObjectId, String str) {
        try {
            S3Object a2 = this.g.a(new GetObjectRequest(s3ObjectId.instructionFileId(str)));
            if (a2 == null) {
                return null;
            }
            return new S3ObjectWrapper(a2, s3ObjectId);
        } catch (AmazonServiceException e) {
            if (!this.f6868b.a()) {
                return null;
            }
            Log log = this.f6868b;
            log.b("Unable to retrieve instruction file : " + e.getMessage());
            return null;
        }
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModule
    public final CompleteMultipartUploadResult a(CompleteMultipartUploadRequest completeMultipartUploadRequest) {
        a(completeMultipartUploadRequest, AmazonS3EncryptionClient.i);
        String uploadId = completeMultipartUploadRequest.getUploadId();
        T t = this.f.get(uploadId);
        if (t == null || t.f6865d) {
            CompleteMultipartUploadResult a2 = this.g.a(completeMultipartUploadRequest);
            if (t != null && this.e.getStorageMode() == CryptoStorageMode.InstructionFile) {
                S3Direct s3Direct = this.g;
                String str = t.f6863b;
                String str2 = t.f6864c;
                byte[] bytes = t.f.a(this.e.getCryptoMode()).getBytes(StringUtils.f6920a);
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
                ObjectMetadata objectMetadata = new ObjectMetadata();
                objectMetadata.setContentLength(bytes.length);
                objectMetadata.addUserMetadata("x-amz-crypto-instr-file", "");
                InstructionFileId instructionFileId = new S3ObjectId(str, str2).instructionFileId();
                s3Direct.a(new PutObjectRequest(instructionFileId.getBucket(), instructionFileId.getKey(), byteArrayInputStream, objectMetadata));
            }
            this.f.remove(uploadId);
            return a2;
        }
        throw new AmazonClientException("Unable to complete an encrypted multipart upload without being told which part was the last.  Without knowing which part was the last, the encrypted data in Amazon S3 is incomplete and corrupt.");
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModule
    public final InitiateMultipartUploadResult a(InitiateMultipartUploadRequest initiateMultipartUploadRequest) {
        a(initiateMultipartUploadRequest, AmazonS3EncryptionClient.i);
        ContentCryptoMaterial a2 = a((AmazonWebServiceRequest) initiateMultipartUploadRequest);
        Map<String, String> map = null;
        if (this.e.getStorageMode() == CryptoStorageMode.ObjectMetadata) {
            ObjectMetadata objectMetadata = initiateMultipartUploadRequest.getObjectMetadata();
            ObjectMetadata objectMetadata2 = objectMetadata;
            if (objectMetadata == null) {
                objectMetadata2 = new ObjectMetadata();
            }
            initiateMultipartUploadRequest.setObjectMetadata(a(objectMetadata2, (File) null, a2));
        }
        InitiateMultipartUploadResult a3 = this.g.a(initiateMultipartUploadRequest);
        T a4 = a(initiateMultipartUploadRequest, a2);
        if (initiateMultipartUploadRequest instanceof MaterialsDescriptionProvider) {
            Map<String, String> materialsDescription = ((MaterialsDescriptionProvider) initiateMultipartUploadRequest).getMaterialsDescription();
            if (materialsDescription != null) {
                map = Collections.unmodifiableMap(new HashMap(materialsDescription));
            }
            a4.e = map;
        }
        this.f.put(a3.getUploadId(), a4);
        return a3;
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModule
    public final PutObjectResult a(PutObjectRequest putObjectRequest) {
        a(putObjectRequest, AmazonS3EncryptionClient.i);
        return this.e.getStorageMode() == CryptoStorageMode.InstructionFile ? c(putObjectRequest) : b(putObjectRequest);
    }

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModule
    public final UploadPartResult a(UploadPartRequest uploadPartRequest) {
        Throwable th;
        CipherLiteInputStream a2;
        a(uploadPartRequest, AmazonS3EncryptionClient.i);
        int d2 = this.f6870d.d();
        boolean isLastPart = uploadPartRequest.isLastPart();
        String uploadId = uploadPartRequest.getUploadId();
        long partSize = uploadPartRequest.getPartSize();
        boolean z = 0 == partSize % ((long) d2);
        if (isLastPart || z) {
            T t = this.f.get(uploadId);
            if (t != null) {
                int partNumber = uploadPartRequest.getPartNumber();
                if (partNumber <= 0) {
                    throw new IllegalArgumentException("part number must be at least 1");
                } else if (!t.h) {
                    synchronized (t) {
                        if (partNumber - t.g <= 1) {
                            t.g = partNumber;
                            t.h = true;
                        } else {
                            throw new AmazonClientException("Parts are required to be uploaded in series (partNumber=" + t.g + ", nextPartNumber=" + partNumber + ")");
                        }
                    }
                    CipherLite a3 = a((S3CryptoModuleBase<T>) t);
                    File file = uploadPartRequest.getFile();
                    InputStream inputStream = uploadPartRequest.getInputStream();
                    CipherLiteInputStream cipherLiteInputStream = null;
                    try {
                        a2 = a(uploadPartRequest, a3);
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    try {
                        SdkFilterInputStream a4 = a((S3CryptoModuleBase<T>) a2, partSize);
                        uploadPartRequest.setInputStream(a4);
                        uploadPartRequest.setFile(null);
                        uploadPartRequest.setFileOffset(0L);
                        if (isLastPart) {
                            long b2 = b(uploadPartRequest);
                            if (b2 > -1) {
                                uploadPartRequest.setPartSize(b2);
                            }
                            if (t.f6865d) {
                                throw new AmazonClientException("This part was specified as the last part in a multipart upload, but a previous part was already marked as the last part.  Only the last part of the upload should be marked as the last part.");
                            }
                        }
                        UploadPartResult a5 = this.g.a(uploadPartRequest);
                        S3DataSource.Utils.cleanupDataSource(uploadPartRequest, file, inputStream, a4, this.f6868b);
                        t.h = false;
                        if (isLastPart) {
                            t.f6865d = true;
                        }
                        a((S3CryptoModuleBase<T>) t, a4);
                        return a5;
                    } catch (Throwable th3) {
                        th = th3;
                        cipherLiteInputStream = a2;
                        S3DataSource.Utils.cleanupDataSource(uploadPartRequest, file, inputStream, cipherLiteInputStream, this.f6868b);
                        t.h = false;
                        throw th;
                    }
                } else {
                    throw new AmazonClientException("Parts are required to be uploaded in series");
                }
            } else {
                throw new AmazonClientException("No client-side information available on upload ID ".concat(String.valueOf(uploadId)));
            }
        } else {
            throw new AmazonClientException("Invalid part size: part sizes for encrypted multipart uploads must be multiples of the cipher block size (" + d2 + ") with the exception of the last part.");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(ContentCryptoMaterial contentCryptoMaterial, S3ObjectWrapper s3ObjectWrapper) {
    }

    abstract void a(T t, SdkFilterInputStream sdkFilterInputStream);

    @Override // com.amazonaws.services.s3.internal.crypto.S3CryptoModule
    public final void a(AbortMultipartUploadRequest abortMultipartUploadRequest) {
        this.g.a(abortMultipartUploadRequest);
        this.f.remove(abortMultipartUploadRequest.getUploadId());
    }

    abstract long b(UploadPartRequest uploadPartRequest);
}
