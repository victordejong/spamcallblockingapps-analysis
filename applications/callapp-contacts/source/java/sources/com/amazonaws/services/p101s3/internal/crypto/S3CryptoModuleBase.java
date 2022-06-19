package com.amazonaws.services.p101s3.internal.crypto;

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
import com.amazonaws.services.p101s3.AmazonS3EncryptionClient;
import com.amazonaws.services.p101s3.internal.InputSubstream;
import com.amazonaws.services.p101s3.internal.S3Direct;
import com.amazonaws.services.p101s3.internal.crypto.MultipartUploadCryptoContext;
import com.amazonaws.services.p101s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.AbstractPutObjectRequest;
import com.amazonaws.services.p101s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.p101s3.model.CryptoConfiguration;
import com.amazonaws.services.p101s3.model.CryptoStorageMode;
import com.amazonaws.services.p101s3.model.EncryptionMaterials;
import com.amazonaws.services.p101s3.model.EncryptionMaterialsFactory;
import com.amazonaws.services.p101s3.model.EncryptionMaterialsProvider;
import com.amazonaws.services.p101s3.model.GetObjectRequest;
import com.amazonaws.services.p101s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.p101s3.model.InstructionFileId;
import com.amazonaws.services.p101s3.model.MaterialsDescriptionProvider;
import com.amazonaws.services.p101s3.model.ObjectMetadata;
import com.amazonaws.services.p101s3.model.PutObjectRequest;
import com.amazonaws.services.p101s3.model.PutObjectResult;
import com.amazonaws.services.p101s3.model.S3DataSource;
import com.amazonaws.services.p101s3.model.S3Object;
import com.amazonaws.services.p101s3.model.S3ObjectId;
import com.amazonaws.services.p101s3.model.UploadPartRequest;
import com.amazonaws.services.p101s3.model.UploadPartResult;
import com.amazonaws.services.p101s3.util.Mimetypes;
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
/* renamed from: com.amazonaws.services.s3.internal.crypto.S3CryptoModuleBase */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase.class */
public abstract class S3CryptoModuleBase<T extends MultipartUploadCryptoContext> extends S3CryptoModule<T> {

    /* renamed from: a */
    protected final EncryptionMaterialsProvider f12432a;

    /* renamed from: b */
    protected final Log f12433b;

    /* renamed from: c */
    protected final S3CryptoScheme f12434c;

    /* renamed from: d */
    protected final ContentCryptoScheme f12435d;

    /* renamed from: e */
    protected final CryptoConfiguration f12436e;

    /* renamed from: f */
    protected final Map<String, T> f12437f;

    /* renamed from: g */
    protected final S3Direct f12438g;

    /* renamed from: h */
    protected final AWSKMSClient f12439h;

    public S3CryptoModuleBase(AWSKMSClient aWSKMSClient, S3Direct s3Direct, AWSCredentialsProvider aWSCredentialsProvider, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        this.f12433b = LogFactory.m38584a(getClass());
        this.f12437f = Collections.synchronizedMap(new HashMap());
        if (cryptoConfiguration.isReadOnly()) {
            this.f12432a = encryptionMaterialsProvider;
            this.f12438g = s3Direct;
            this.f12436e = cryptoConfiguration;
            S3CryptoScheme m38307a = S3CryptoScheme.m38307a(cryptoConfiguration.getCryptoMode());
            this.f12434c = m38307a;
            this.f12435d = m38307a.f12442b;
            this.f12439h = aWSKMSClient;
            return;
        }
        throw new IllegalArgumentException("The crypto configuration parameter is required to be read-only");
    }

    protected S3CryptoModuleBase(S3Direct s3Direct, AWSCredentialsProvider aWSCredentialsProvider, EncryptionMaterialsProvider encryptionMaterialsProvider, CryptoConfiguration cryptoConfiguration) {
        this.f12433b = LogFactory.m38584a(getClass());
        this.f12437f = Collections.synchronizedMap(new HashMap());
        this.f12432a = encryptionMaterialsProvider;
        this.f12438g = s3Direct;
        this.f12436e = cryptoConfiguration;
        S3CryptoScheme m38307a = S3CryptoScheme.m38307a(cryptoConfiguration.getCryptoMode());
        this.f12434c = m38307a;
        this.f12435d = m38307a.f12442b;
        this.f12439h = null;
    }

    /* renamed from: a */
    private static long m38329a(AbstractPutObjectRequest abstractPutObjectRequest, ObjectMetadata objectMetadata) {
        if (abstractPutObjectRequest.getFile() != null) {
            return abstractPutObjectRequest.getFile().length();
        }
        if (abstractPutObjectRequest.getInputStream() != null && objectMetadata.getRawMetadataValue("Content-Length") != null) {
            return objectMetadata.getContentLength();
        }
        return -1L;
    }

    /* renamed from: a */
    public static <X extends AmazonWebServiceRequest> X m38334a(X x, String str) {
        x.getRequestClientOptions().m38697a(str);
        return x;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [com.amazonaws.internal.ResettableInputStream] */
    /* JADX WARN: Type inference failed for: r0v30, types: [com.amazonaws.internal.ReleasableInputStream] */
    /* renamed from: a */
    private CipherLiteInputStream m38330a(AbstractPutObjectRequest abstractPutObjectRequest, ContentCryptoMaterial contentCryptoMaterial, long j) {
        File file = abstractPutObjectRequest.getFile();
        InputStream inputStream = abstractPutObjectRequest.getInputStream();
        LengthCheckInputStream lengthCheckInputStream = null;
        try {
            if (file != null) {
                lengthCheckInputStream = new ResettableInputStream(file);
            } else if (inputStream != null) {
                lengthCheckInputStream = ReleasableInputStream.m38608a(inputStream);
            }
            LengthCheckInputStream lengthCheckInputStream2 = lengthCheckInputStream;
            if (j > -1) {
                LengthCheckInputStream lengthCheckInputStream3 = lengthCheckInputStream;
                lengthCheckInputStream2 = new LengthCheckInputStream(lengthCheckInputStream, j, false);
            }
            LengthCheckInputStream lengthCheckInputStream4 = lengthCheckInputStream2;
            CipherLite cipherLite = contentCryptoMaterial.f12401a;
            LengthCheckInputStream lengthCheckInputStream5 = lengthCheckInputStream2;
            if (cipherLite.mo38345b()) {
                LengthCheckInputStream lengthCheckInputStream6 = lengthCheckInputStream2;
                return new CipherLiteInputStream(lengthCheckInputStream2, cipherLite, 2048);
            }
            LengthCheckInputStream lengthCheckInputStream7 = lengthCheckInputStream2;
            return new RenewableCipherLiteInputStream(lengthCheckInputStream2, cipherLite, 2048);
        } catch (Exception e) {
            S3DataSource.Utils.cleanupDataSource(abstractPutObjectRequest, file, inputStream, null, this.f12433b);
            throw new AmazonClientException("Unable to create cipher input stream", e);
        }
    }

    /* renamed from: a */
    private CipherLiteInputStream m38318a(UploadPartRequest uploadPartRequest, CipherLite cipherLite) {
        Exception e;
        ResettableInputStream resettableInputStream;
        InputSubstream inputSubstream;
        File file = uploadPartRequest.getFile();
        InputStream inputStream = uploadPartRequest.getInputStream();
        try {
            if (file != null) {
                resettableInputStream = new ResettableInputStream(file);
            } else if (inputStream == null) {
                throw new IllegalArgumentException("A File or InputStream must be specified when uploading part");
            } else {
                resettableInputStream = inputStream;
            }
            InputStream inputStream2 = resettableInputStream;
            InputStream inputStream3 = resettableInputStream;
            inputSubstream = new InputSubstream(resettableInputStream, uploadPartRequest.getFileOffset(), uploadPartRequest.getPartSize(), uploadPartRequest.isLastPart());
        } catch (Exception e2) {
            e = e2;
        }
        try {
            return cipherLite.mo38345b() ? new CipherLiteInputStream(inputSubstream, cipherLite, 2048, true, uploadPartRequest.isLastPart()) : new RenewableCipherLiteInputStream(inputSubstream, cipherLite, 2048, true, uploadPartRequest.isLastPart());
        } catch (Exception e3) {
            e = e3;
            S3DataSource.Utils.cleanupDataSource(uploadPartRequest, file, inputStream, inputSubstream, this.f12433b);
            throw new AmazonClientException("Unable to create cipher input stream", e);
        }
    }

    /* renamed from: a */
    private ContentCryptoMaterial m38335a(AmazonWebServiceRequest amazonWebServiceRequest) {
        EncryptionMaterials encryptionMaterials;
        if (!(amazonWebServiceRequest instanceof EncryptionMaterialsFactory) || (encryptionMaterials = ((EncryptionMaterialsFactory) amazonWebServiceRequest).getEncryptionMaterials()) == null) {
            if (amazonWebServiceRequest instanceof MaterialsDescriptionProvider) {
                Map<String, String> materialsDescription = ((MaterialsDescriptionProvider) amazonWebServiceRequest).getMaterialsDescription();
                ContentCryptoMaterial m38324a = m38324a(this.f12432a, materialsDescription, this.f12436e.getCryptoProvider(), amazonWebServiceRequest);
                if (m38324a != null) {
                    return m38324a;
                }
                if (materialsDescription != null && !this.f12432a.getEncryptionMaterials().isKMSEnabled()) {
                    throw new AmazonClientException("No material available from the encryption material provider for description ".concat(String.valueOf(materialsDescription)));
                }
            }
            return m38325a(this.f12432a, this.f12436e.getCryptoProvider(), amazonWebServiceRequest);
        }
        return m38326a(encryptionMaterials, this.f12436e.getCryptoProvider(), amazonWebServiceRequest);
    }

    /* renamed from: a */
    private ContentCryptoMaterial m38326a(EncryptionMaterials encryptionMaterials, Provider provider, AmazonWebServiceRequest amazonWebServiceRequest) {
        byte[] bArr = new byte[this.f12435d.mo38360e()];
        S3CryptoScheme.m38308a().nextBytes(bArr);
        if (encryptionMaterials.isKMSEnabled()) {
            Map<String, String> m38382a = ContentCryptoMaterial.m38382a(encryptionMaterials, amazonWebServiceRequest);
            GenerateDataKeyRequest withKeySpec = new GenerateDataKeyRequest().withEncryptionContext(m38382a).withKeyId(encryptionMaterials.getCustomerMasterKeyId()).withKeySpec(this.f12435d.m38357h());
            withKeySpec.withGeneralProgressListener(amazonWebServiceRequest.getGeneralProgressListener()).withRequestMetricCollector(amazonWebServiceRequest.getRequestMetricCollector());
            GenerateDataKeyResult m38487a = this.f12439h.m38487a(withKeySpec);
            return ContentCryptoMaterial.m38376a(new SecretKeySpec(BinaryUtils.m38260a(m38487a.getPlaintext()), this.f12435d.mo38371a()), bArr, this.f12435d, provider, new KMSSecuredCEK(BinaryUtils.m38260a(m38487a.getCiphertextBlob()), m38382a));
        }
        return ContentCryptoMaterial.m38375a(m38327a(encryptionMaterials, provider), bArr, encryptionMaterials, this.f12434c, provider, this.f12439h, amazonWebServiceRequest);
    }

    /* renamed from: a */
    private ContentCryptoMaterial m38325a(EncryptionMaterialsProvider encryptionMaterialsProvider, Provider provider, AmazonWebServiceRequest amazonWebServiceRequest) {
        EncryptionMaterials encryptionMaterials = encryptionMaterialsProvider.getEncryptionMaterials();
        if (encryptionMaterials != null) {
            return m38326a(encryptionMaterials, provider, amazonWebServiceRequest);
        }
        throw new AmazonClientException("No material available from the encryption material provider");
    }

    /* renamed from: a */
    private ContentCryptoMaterial m38324a(EncryptionMaterialsProvider encryptionMaterialsProvider, Map<String, String> map, Provider provider, AmazonWebServiceRequest amazonWebServiceRequest) {
        EncryptionMaterials encryptionMaterials = encryptionMaterialsProvider.getEncryptionMaterials(map);
        if (encryptionMaterials == null) {
            return null;
        }
        return m38326a(encryptionMaterials, provider, amazonWebServiceRequest);
    }

    /* renamed from: a */
    private <R extends AbstractPutObjectRequest> R m38331a(R r, ContentCryptoMaterial contentCryptoMaterial) {
        ObjectMetadata metadata = r.getMetadata();
        ObjectMetadata objectMetadata = metadata;
        if (metadata == null) {
            objectMetadata = new ObjectMetadata();
        }
        if (objectMetadata.getContentMD5() != null) {
            objectMetadata.addUserMetadata("x-amz-unencrypted-content-md5", objectMetadata.getContentMD5());
        }
        objectMetadata.setContentMD5(null);
        long m38329a = m38329a(r, objectMetadata);
        if (m38329a >= 0) {
            objectMetadata.addUserMetadata("x-amz-unencrypted-content-length", Long.toString(m38329a));
            objectMetadata.setContentLength(mo38315a(m38329a));
        }
        r.setMetadata(objectMetadata);
        r.setInputStream(m38330a(r, contentCryptoMaterial, m38329a));
        r.setFile(null);
        return r;
    }

    /* renamed from: a */
    private ObjectMetadata m38322a(ObjectMetadata objectMetadata, File file, ContentCryptoMaterial contentCryptoMaterial) {
        ObjectMetadata objectMetadata2 = objectMetadata;
        if (objectMetadata == null) {
            objectMetadata2 = new ObjectMetadata();
        }
        if (file != null) {
            objectMetadata2.setContentType(Mimetypes.getInstance().getMimetype(file));
        }
        return contentCryptoMaterial.m38381a(objectMetadata2, this.f12436e.getCryptoMode());
    }

    /* renamed from: a */
    private SecretKey m38327a(EncryptionMaterials encryptionMaterials, Provider provider) {
        boolean z;
        String mo38371a = this.f12435d.mo38371a();
        try {
            KeyGenerator keyGenerator = provider == null ? KeyGenerator.getInstance(mo38371a) : KeyGenerator.getInstance(mo38371a, provider);
            keyGenerator.init(this.f12435d.mo38362c(), S3CryptoScheme.m38308a());
            KeyPair keyPair = encryptionMaterials.getKeyPair();
            if (keyPair == null || this.f12434c.f12441a.mo38305a(keyPair.getPublic(), provider) != null) {
                z = false;
            } else {
                Provider provider2 = keyGenerator.getProvider();
                z = "BC".equals(provider2 == null ? null : provider2.getName());
            }
            SecretKey generateKey = keyGenerator.generateKey();
            if (z && generateKey.getEncoded()[0] == 0) {
                for (int i = 0; i < 9; i++) {
                    SecretKey generateKey2 = keyGenerator.generateKey();
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

    /* renamed from: b */
    private PutObjectResult m38317b(PutObjectRequest putObjectRequest) {
        ContentCryptoMaterial m38335a = m38335a((AmazonWebServiceRequest) putObjectRequest);
        File file = putObjectRequest.getFile();
        InputStream inputStream = putObjectRequest.getInputStream();
        PutObjectRequest putObjectRequest2 = (PutObjectRequest) m38331a((S3CryptoModuleBase<T>) putObjectRequest, m38335a);
        putObjectRequest.setMetadata(m38322a(putObjectRequest.getMetadata(), putObjectRequest.getFile(), m38335a));
        try {
            return this.f12438g.mo38420a(putObjectRequest2);
        } finally {
            S3DataSource.Utils.cleanupDataSource(putObjectRequest, file, inputStream, putObjectRequest2.getInputStream(), this.f12433b);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: c */
    private PutObjectResult m38316c(PutObjectRequest putObjectRequest) {
        File file = putObjectRequest.getFile();
        InputStream inputStream = putObjectRequest.getInputStream();
        PutObjectRequest withInputStream = putObjectRequest.clone().withFile((File) null).withInputStream((InputStream) null);
        withInputStream.setKey(withInputStream.getKey() + ".instruction");
        ContentCryptoMaterial m38335a = m38335a((AmazonWebServiceRequest) putObjectRequest);
        PutObjectRequest putObjectRequest2 = (PutObjectRequest) m38331a((S3CryptoModuleBase<T>) putObjectRequest, m38335a);
        try {
            PutObjectResult mo38420a = this.f12438g.mo38420a(putObjectRequest2);
            S3DataSource.Utils.cleanupDataSource(putObjectRequest, file, inputStream, putObjectRequest2.getInputStream(), this.f12433b);
            S3Direct s3Direct = this.f12438g;
            byte[] bytes = m38335a.m38383a(this.f12436e.getCryptoMode()).getBytes(StringUtils.f12513a);
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
            s3Direct.mo38420a(withInputStream);
            return mo38420a;
        } catch (Throwable th) {
            S3DataSource.Utils.cleanupDataSource(putObjectRequest, file, inputStream, putObjectRequest2.getInputStream(), this.f12433b);
            throw th;
        }
    }

    /* renamed from: a */
    protected abstract long mo38315a(long j);

    /* renamed from: a */
    abstract <I extends CipherLiteInputStream> SdkFilterInputStream mo38314a(I i, long j);

    /* renamed from: a */
    abstract CipherLite mo38313a(T t);

    /* renamed from: a */
    abstract T mo38310a(InitiateMultipartUploadRequest initiateMultipartUploadRequest, ContentCryptoMaterial contentCryptoMaterial);

    /* renamed from: a */
    public final S3ObjectWrapper m38320a(S3ObjectId s3ObjectId, String str) {
        try {
            S3Object mo38422a = this.f12438g.mo38422a(new GetObjectRequest(s3ObjectId.instructionFileId(str)));
            if (mo38422a != null) {
                return new S3ObjectWrapper(mo38422a, s3ObjectId);
            }
            return null;
        } catch (AmazonServiceException e) {
            if (!this.f12433b.mo38597a()) {
                return null;
            }
            Log log = this.f12433b;
            log.mo38593b("Unable to retrieve instruction file : " + e.getMessage());
            return null;
        }
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModule
    /* renamed from: a */
    public final CompleteMultipartUploadResult mo38328a(CompleteMultipartUploadRequest completeMultipartUploadRequest) {
        m38334a(completeMultipartUploadRequest, AmazonS3EncryptionClient.f12302i);
        String uploadId = completeMultipartUploadRequest.getUploadId();
        T t = this.f12437f.get(uploadId);
        if (t == null || t.f12426d) {
            CompleteMultipartUploadResult mo38423a = this.f12438g.mo38423a(completeMultipartUploadRequest);
            if (t != null && this.f12436e.getStorageMode() == CryptoStorageMode.InstructionFile) {
                S3Direct s3Direct = this.f12438g;
                String str = t.f12424b;
                String str2 = t.f12425c;
                byte[] bytes = t.f12428f.m38383a(this.f12436e.getCryptoMode()).getBytes(StringUtils.f12513a);
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
                ObjectMetadata objectMetadata = new ObjectMetadata();
                objectMetadata.setContentLength(bytes.length);
                objectMetadata.addUserMetadata("x-amz-crypto-instr-file", "");
                InstructionFileId instructionFileId = new S3ObjectId(str, str2).instructionFileId();
                s3Direct.mo38420a(new PutObjectRequest(instructionFileId.getBucket(), instructionFileId.getKey(), byteArrayInputStream, objectMetadata));
            }
            this.f12437f.remove(uploadId);
            return mo38423a;
        }
        throw new AmazonClientException("Unable to complete an encrypted multipart upload without being told which part was the last.  Without knowing which part was the last, the encrypted data in Amazon S3 is incomplete and corrupt.");
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModule
    /* renamed from: a */
    public final InitiateMultipartUploadResult mo38323a(InitiateMultipartUploadRequest initiateMultipartUploadRequest) {
        m38334a(initiateMultipartUploadRequest, AmazonS3EncryptionClient.f12302i);
        ContentCryptoMaterial m38335a = m38335a((AmazonWebServiceRequest) initiateMultipartUploadRequest);
        if (this.f12436e.getStorageMode() == CryptoStorageMode.ObjectMetadata) {
            ObjectMetadata objectMetadata = initiateMultipartUploadRequest.getObjectMetadata();
            ObjectMetadata objectMetadata2 = objectMetadata;
            if (objectMetadata == null) {
                objectMetadata2 = new ObjectMetadata();
            }
            initiateMultipartUploadRequest.setObjectMetadata(m38322a(objectMetadata2, (File) null, m38335a));
        }
        InitiateMultipartUploadResult mo38421a = this.f12438g.mo38421a(initiateMultipartUploadRequest);
        T mo38310a = mo38310a(initiateMultipartUploadRequest, m38335a);
        if (initiateMultipartUploadRequest instanceof MaterialsDescriptionProvider) {
            Map<String, String> materialsDescription = ((MaterialsDescriptionProvider) initiateMultipartUploadRequest).getMaterialsDescription();
            mo38310a.f12427e = materialsDescription == null ? null : Collections.unmodifiableMap(new HashMap(materialsDescription));
        }
        this.f12437f.put(mo38421a.getUploadId(), mo38310a);
        return mo38421a;
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModule
    /* renamed from: a */
    public final PutObjectResult mo38321a(PutObjectRequest putObjectRequest) {
        m38334a(putObjectRequest, AmazonS3EncryptionClient.f12302i);
        return this.f12436e.getStorageMode() == CryptoStorageMode.InstructionFile ? m38316c(putObjectRequest) : m38317b(putObjectRequest);
    }

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModule
    /* renamed from: a */
    public final UploadPartResult mo38319a(UploadPartRequest uploadPartRequest) {
        Throwable th;
        CipherLiteInputStream m38318a;
        m38334a(uploadPartRequest, AmazonS3EncryptionClient.f12302i);
        int mo38361d = this.f12435d.mo38361d();
        boolean isLastPart = uploadPartRequest.isLastPart();
        String uploadId = uploadPartRequest.getUploadId();
        long partSize = uploadPartRequest.getPartSize();
        boolean z = 0 == partSize % ((long) mo38361d);
        if (!isLastPart && !z) {
            throw new AmazonClientException("Invalid part size: part sizes for encrypted multipart uploads must be multiples of the cipher block size (" + mo38361d + ") with the exception of the last part.");
        }
        T t = this.f12437f.get(uploadId);
        if (t == null) {
            throw new AmazonClientException("No client-side information available on upload ID ".concat(String.valueOf(uploadId)));
        }
        int partNumber = uploadPartRequest.getPartNumber();
        if (partNumber <= 0) {
            throw new IllegalArgumentException("part number must be at least 1");
        }
        if (t.f12430h) {
            throw new AmazonClientException("Parts are required to be uploaded in series");
        }
        synchronized (t) {
            if (partNumber - t.f12429g > 1) {
                throw new AmazonClientException("Parts are required to be uploaded in series (partNumber=" + t.f12429g + ", nextPartNumber=" + partNumber + ")");
            }
            t.f12429g = partNumber;
            t.f12430h = true;
        }
        CipherLite mo38313a = mo38313a((S3CryptoModuleBase<T>) t);
        File file = uploadPartRequest.getFile();
        InputStream inputStream = uploadPartRequest.getInputStream();
        CipherLiteInputStream cipherLiteInputStream = null;
        try {
            m38318a = m38318a(uploadPartRequest, mo38313a);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            SdkFilterInputStream mo38314a = mo38314a((S3CryptoModuleBase<T>) m38318a, partSize);
            uploadPartRequest.setInputStream(mo38314a);
            uploadPartRequest.setFile(null);
            uploadPartRequest.setFileOffset(0L);
            if (isLastPart) {
                long mo38309b = mo38309b(uploadPartRequest);
                if (mo38309b > -1) {
                    uploadPartRequest.setPartSize(mo38309b);
                }
                if (t.f12426d) {
                    throw new AmazonClientException("This part was specified as the last part in a multipart upload, but a previous part was already marked as the last part.  Only the last part of the upload should be marked as the last part.");
                }
            }
            UploadPartResult mo38419a = this.f12438g.mo38419a(uploadPartRequest);
            S3DataSource.Utils.cleanupDataSource(uploadPartRequest, file, inputStream, mo38314a, this.f12433b);
            t.f12430h = false;
            if (isLastPart) {
                t.f12426d = true;
            }
            mo38312a((S3CryptoModuleBase<T>) t, mo38314a);
            return mo38419a;
        } catch (Throwable th3) {
            cipherLiteInputStream = m38318a;
            th = th3;
            S3DataSource.Utils.cleanupDataSource(uploadPartRequest, file, inputStream, cipherLiteInputStream, this.f12433b);
            t.f12430h = false;
            throw th;
        }
    }

    /* renamed from: a */
    public void mo38333a(ContentCryptoMaterial contentCryptoMaterial, S3ObjectWrapper s3ObjectWrapper) {
    }

    /* renamed from: a */
    abstract void mo38312a(T t, SdkFilterInputStream sdkFilterInputStream);

    @Override // com.amazonaws.services.p101s3.internal.crypto.S3CryptoModule
    /* renamed from: a */
    public final void mo38332a(AbortMultipartUploadRequest abortMultipartUploadRequest) {
        this.f12438g.mo38424a(abortMultipartUploadRequest);
        this.f12437f.remove(abortMultipartUploadRequest.getUploadId());
    }

    /* renamed from: b */
    abstract long mo38309b(UploadPartRequest uploadPartRequest);
}
