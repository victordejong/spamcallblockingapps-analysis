.class public abstract Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;
.super Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;",
        ">",
        "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final a:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

.field protected final b:Lcom/amazonaws/logging/Log;

.field protected final c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

.field protected final d:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field protected final e:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

.field protected final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final g:Lcom/amazonaws/services/s3/internal/S3Direct;

.field protected final h:Lcom/amazonaws/services/kms/AWSKMSClient;


# direct methods
.method protected constructor <init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;-><init>()V

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object p3

    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/logging/Log;

    .line 112
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 113
    invoke-static {p3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Ljava/util/Map;

    .line 124
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->isReadOnly()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 127
    iput-object p4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    .line 128
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->g:Lcom/amazonaws/services/s3/internal/S3Direct;

    .line 129
    iput-object p5, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->e:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 130
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoMode()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->a(Lcom/amazonaws/services/s3/model/CryptoMode;)Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    .line 1056
    iget-object p2, p2, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 131
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->d:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 132
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->h:Lcom/amazonaws/services/kms/AWSKMSClient;

    return-void

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The crypto configuration parameter is required to be read-only"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;-><init>()V

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/logging/Log;

    .line 112
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 113
    invoke-static {p2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Ljava/util/Map;

    .line 142
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    .line 143
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->g:Lcom/amazonaws/services/s3/internal/S3Direct;

    .line 144
    iput-object p4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->e:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 145
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoMode()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->a(Lcom/amazonaws/services/s3/model/CryptoMode;)Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    .line 2056
    iget-object p1, p1, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 146
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->d:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->h:Lcom/amazonaws/services/kms/AWSKMSClient;

    return-void
.end method

.method private static a(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J
    .locals 1

    .line 700
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    return-wide p0

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, "Content-Length"

    .line 703
    invoke-virtual {p1, p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getRawMetadataValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 704
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide p0

    return-wide p0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method static a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TX;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    .line 764
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazonaws/RequestClientOptions;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method private a(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;J)Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;
    .locals 6

    .line 658
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    .line 659
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 665
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/amazonaws/internal/ReleasableInputStream;->a(Ljava/io/InputStream;)Lcom/amazonaws/internal/ReleasableInputStream;

    move-result-object v2

    goto :goto_0

    .line 667
    :cond_1
    new-instance v3, Lcom/amazonaws/internal/ResettableInputStream;

    invoke-direct {v3, v0}, Lcom/amazonaws/internal/ResettableInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    :goto_0
    const-wide/16 v3, -0x1

    cmp-long v5, p3, v3

    if-lez v5, :cond_2

    .line 676
    new-instance v3, Lcom/amazonaws/util/LengthCheckInputStream;

    const/4 v4, 0x0

    invoke-direct {v3, v2, p3, p4, v4}, Lcom/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    move-object v2, v3

    .line 10603
    :cond_2
    iget-object p2, p2, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 681
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b()Z

    move-result p3

    const/16 p4, 0x800

    if-eqz p3, :cond_3

    .line 682
    new-instance p3, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;

    invoke-direct {p3, v2, p2, p4}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;I)V

    return-object p3

    .line 685
    :cond_3
    new-instance p3, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;

    invoke-direct {p3, v2, p2, p4}, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p2

    .line 689
    iget-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/logging/Log;

    invoke-static {p1, v0, v1, v2, p3}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lcom/amazonaws/logging/Log;)V

    .line 690
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p3, "Unable to create cipher input stream"

    invoke-direct {p1, p3, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;
    .locals 12

    .line 356
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v0

    .line 357
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 362
    :cond_0
    :try_start_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v3, "A File or InputStream must be specified when uploading part"

    invoke-direct {p2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 367
    :cond_1
    new-instance v3, Lcom/amazonaws/internal/ResettableInputStream;

    invoke-direct {v3, v0}, Lcom/amazonaws/internal/ResettableInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 369
    :goto_0
    new-instance v11, Lcom/amazonaws/services/s3/internal/InputSubstream;

    .line 370
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFileOffset()J

    move-result-wide v6

    .line 371
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v8

    .line 372
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v10

    move-object v4, v11

    move-object v5, v2

    invoke-direct/range {v4 .. v10}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 373
    :try_start_1
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;

    const/16 v6, 0x800

    const/4 v7, 0x1

    .line 376
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v8

    move-object v3, v2

    move-object v4, v11

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V

    return-object v2

    :cond_2
    new-instance v2, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;

    const/16 v6, 0x800

    const/4 v7, 0x1

    .line 379
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v8

    move-object v3, v2

    move-object v4, v11

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/amazonaws/services/s3/internal/crypto/RenewableCipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception p2

    move-object v2, v11

    goto :goto_1

    :catch_1
    move-exception p2

    .line 381
    :goto_1
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/logging/Log;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lcom/amazonaws/logging/Log;)V

    .line 382
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Unable to create cipher input stream"

    invoke-direct {p1, v0, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 3

    .line 433
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/EncryptionMaterialsFactory;

    if-eqz v0, :cond_0

    .line 435
    move-object v0, p1

    check-cast v0, Lcom/amazonaws/services/s3/model/EncryptionMaterialsFactory;

    .line 436
    invoke-interface {v0}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsFactory;->getEncryptionMaterials()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->e:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 439
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v1

    .line 438
    invoke-direct {p0, v0, v1, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1

    .line 442
    :cond_0
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    if-eqz v0, :cond_3

    .line 444
    move-object v0, p1

    check-cast v0, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    .line 445
    invoke-interface {v0}, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->e:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 449
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v2

    .line 446
    invoke-direct {p0, v1, v0, v2, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/util/Map;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    if-eqz v0, :cond_3

    .line 456
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    .line 457
    invoke-interface {v1}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v1

    .line 458
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->isKMSEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 459
    :cond_2
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No material available from the encryption material provider for description "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 468
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->e:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 469
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v1

    .line 468
    invoke-direct {p0, v0, v1, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 8

    .line 538
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->d:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->e()I

    move-result v0

    new-array v2, v0, [B

    .line 539
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->a()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 541
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->isKMSEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    invoke-static {p1, p3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/AmazonWebServiceRequest;)Ljava/util/Map;

    move-result-object v0

    .line 544
    new-instance v1, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;-><init>()V

    .line 545
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->withEncryptionContext(Ljava/util/Map;)Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;

    move-result-object v1

    .line 546
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getCustomerMasterKeyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->d:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 547
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->withKeySpec(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;

    move-result-object p1

    .line 549
    invoke-virtual {p3}, Lcom/amazonaws/AmazonWebServiceRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;->withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    .line 550
    invoke-virtual {p3}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/amazonaws/AmazonWebServiceRequest;->withRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 551
    iget-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->h:Lcom/amazonaws/services/kms/AWSKMSClient;

    invoke-virtual {p3, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;)Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;

    move-result-object p1

    .line 552
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    .line 553
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getPlaintext()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/util/BinaryUtils;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->d:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 554
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 555
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/util/BinaryUtils;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    .line 556
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->d:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    new-instance v3, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;

    invoke-direct {v3, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;-><init>([BLjava/util/Map;)V

    invoke-static {p3, v2, v1, p2, v3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1

    .line 562
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    move-result-object v1

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    iget-object v6, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->h:Lcom/amazonaws/services/kms/AWSKMSClient;

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    .line 561
    invoke-static/range {v1 .. v7}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 0

    .line 499
    invoke-interface {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 503
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1

    .line 501
    :cond_0
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "No material available from the encryption material provider"

    invoke-direct {p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/util/Map;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/security/Provider;",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ")",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;"
        }
    .end annotation

    .line 482
    invoke-interface {p1, p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 486
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;",
            ">(TR;",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;",
            ")TR;"
        }
    .end annotation

    .line 623
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 625
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 629
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 631
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-amz-unencrypted-content-md5"

    .line 630
    invoke-virtual {v0, v2, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    .line 635
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentMD5(Ljava/lang/String;)V

    .line 639
    invoke-static {p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    .line 642
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "x-amz-unencrypted-content-length"

    .line 641
    invoke-virtual {v0, v5, v4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 646
    :cond_2
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 647
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;J)Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 651
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->setFile(Ljava/io/File;)V

    return-object p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Ljava/io/File;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    if-nez p1, :cond_0

    .line 416
    new-instance p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    :cond_0
    if-eqz p2, :cond_1

    .line 419
    invoke-static {}, Lcom/amazonaws/services/s3/util/Mimetypes;->getInstance()Lcom/amazonaws/services/s3/util/Mimetypes;

    move-result-object v0

    .line 420
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/util/Mimetypes;->getMimetype(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 422
    :cond_1
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->e:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoMode()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CryptoMode;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;
    .locals 3

    .line 573
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->d:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    .line 577
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    goto :goto_0

    .line 578
    :cond_0
    invoke-static {v0, p2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 579
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->d:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->c()I

    move-result v1

    .line 580
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->a()Ljava/security/SecureRandom;

    move-result-object v2

    .line 579
    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 583
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 585
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    .line 10060
    iget-object v2, v2, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->a:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    .line 587
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {v2, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;->a(Ljava/security/Key;Ljava/security/Provider;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 589
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->getProvider()Ljava/security/Provider;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 590
    :cond_1
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string p2, "BC"

    .line 591
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 594
    :goto_2
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p2

    if-eqz p1, :cond_6

    .line 595
    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    aget-byte p1, p1, v1

    if-eqz p1, :cond_3

    goto :goto_4

    :cond_3
    const/4 p1, 0x0

    :goto_3
    const/16 p2, 0x9

    if-ge p1, p2, :cond_5

    .line 601
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p2

    .line 602
    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    aget-byte v2, v2, v1

    if-eqz v2, :cond_4

    return-object p2

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 607
    :cond_5
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "Failed to generate secret key"

    invoke-direct {p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_4
    return-object p2

    :catch_0
    move-exception p1

    .line 609
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to generate envelope symmetric key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private b(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 6

    .line 172
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v0

    .line 174
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v1

    .line 175
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 176
    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 179
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v5

    .line 178
    invoke-direct {p0, v4, v5, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Ljava/io/File;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->g:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/logging/Log;

    invoke-static {p1, v1, v2, v3, v4}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lcom/amazonaws/logging/Log;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/logging/Log;

    invoke-static {p1, v1, v2, v3, v4}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lcom/amazonaws/logging/Log;)V

    .line 185
    throw v0
.end method

.method private c(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 7

    .line 200
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    .line 201
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 202
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->clone()Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v2

    const/4 v3, 0x0

    .line 203
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withFile(Ljava/io/File;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v2

    .line 204
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->withInputStream(Ljava/io/InputStream;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v2

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".instruction"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setKey(Ljava/lang/String;)V

    .line 208
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v3

    .line 211
    invoke-direct {p0, p1, v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;

    move-result-object v4

    check-cast v4, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 215
    :try_start_0
    iget-object v5, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->g:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v5, v4}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iget-object v6, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/logging/Log;

    .line 217
    invoke-static {p1, v0, v1, v4, v6}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lcom/amazonaws/logging/Log;)V

    .line 221
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->g:Lcom/amazonaws/services/s3/internal/S3Direct;

    .line 2725
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->e:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoMode()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Lcom/amazonaws/services/s3/model/CryptoMode;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 2726
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 2727
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2729
    new-instance v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 2730
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 2733
    :cond_0
    array-length v3, v0

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    const-string v3, "x-amz-crypto-instr-file"

    const-string v4, ""

    .line 2735
    invoke-virtual {v1, v3, v4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 2737
    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 2738
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 221
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    return-object v5

    :catchall_0
    move-exception v2

    .line 218
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/logging/Log;

    .line 217
    invoke-static {p1, v0, v1, v3, v4}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lcom/amazonaws/logging/Log;)V

    .line 219
    throw v2
.end method


# virtual methods
.method protected abstract a(J)J
.end method

.method abstract a(Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;J)Lcom/amazonaws/internal/SdkFilterInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;",
            ">(TI;J)",
            "Lcom/amazonaws/internal/SdkFilterInputStream;"
        }
    .end annotation
.end method

.method abstract a(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/amazonaws/services/s3/internal/crypto/CipherLite;"
        }
    .end annotation
.end method

.method abstract a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;",
            ")TT;"
        }
    .end annotation
.end method

.method final a(Lcom/amazonaws/services/s3/model/S3ObjectId;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    .locals 3

    const/4 v0, 0x0

    .line 795
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->g:Lcom/amazonaws/services/s3/internal/S3Direct;

    .line 10933
    new-instance v2, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    .line 10934
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/S3ObjectId;->instructionFileId(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/InstructionFileId;

    move-result-object p2

    invoke-direct {v2, p2}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    .line 795
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p2

    if-nez p2, :cond_0

    return-object v0

    .line 797
    :cond_0
    new-instance v1, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    invoke-direct {v1, p2, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;-><init>(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/S3ObjectId;)V
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 801
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/logging/Log;

    invoke-interface {p2}, Lcom/amazonaws/logging/Log;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 802
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to retrieve instruction file : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 802
    invoke-interface {p2, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public final a(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .locals 9

    .line 389
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 390
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;

    if-eqz v1, :cond_1

    .line 8057
    iget-boolean v2, v1, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;->d:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Unable to complete an encrypted multipart upload without being told which part was the last.  Without knowing which part was the last, the encrypted data in Amazon S3 is incomplete and corrupt."

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 398
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->g:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    if-eqz v1, :cond_2

    .line 402
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->e:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 403
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getStorageMode()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->InstructionFile:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    if-ne v2, v3, :cond_2

    .line 405
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->g:Lcom/amazonaws/services/s3/internal/S3Direct;

    .line 9045
    iget-object v3, v1, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;->b:Ljava/lang/String;

    .line 9049
    iget-object v4, v1, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;->c:Ljava/lang/String;

    .line 9055
    iget-object v1, v1, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->f:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    .line 9746
    iget-object v5, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->e:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoMode()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Lcom/amazonaws/services/s3/model/CryptoMode;)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    .line 9747
    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 9748
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 9749
    new-instance v6, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v6}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 9750
    array-length v1, v1

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    const-string v1, "x-amz-crypto-instr-file"

    const-string v7, ""

    .line 9751
    invoke-virtual {v6, v1, v7}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 9752
    new-instance v1, Lcom/amazonaws/services/s3/model/S3ObjectId;

    invoke-direct {v1, v3, v4}, Lcom/amazonaws/services/s3/model/S3ObjectId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9753
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectId;->instructionFileId()Lcom/amazonaws/services/s3/model/InstructionFileId;

    move-result-object v1

    .line 9754
    new-instance v3, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/InstructionFileId;->getBucket()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/InstructionFileId;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 405
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    .line 409
    :cond_2
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .locals 4

    .line 251
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 254
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->e:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getStorageMode()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->ObjectMetadata:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 256
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    .line 258
    new-instance v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 261
    :cond_0
    invoke-direct {p0, v1, v3, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Ljava/io/File;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->g:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object v1

    .line 265
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;

    move-result-object v0

    .line 266
    instance-of v2, p1, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    if-eqz v2, :cond_3

    .line 267
    check-cast p1, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    .line 268
    invoke-interface {p1}, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;->getMaterialsDescription()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 3076
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3078
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    :goto_0
    iput-object v3, v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;->e:Ljava/util/Map;

    .line 270
    :cond_3
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 2

    .line 165
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 166
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->e:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getStorageMode()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->InstructionFile:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    if-ne v0, v1, :cond_0

    .line 167
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->c(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    return-object p1

    .line 168
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .locals 12

    .line 292
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 293
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->d:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->d()I

    move-result v0

    .line 294
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v1

    .line 295
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v3

    int-to-long v5, v0

    .line 297
    rem-long v5, v3, v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    cmp-long v11, v7, v5

    if-nez v11, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v1, :cond_2

    if-eqz v5, :cond_1

    goto :goto_1

    .line 299
    :cond_1
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid part size: part sizes for encrypted multipart uploads must be multiples of the cipher block size ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with the exception of the last part."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 305
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;

    if-eqz v0, :cond_a

    .line 312
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartNumber()I

    move-result v2

    if-lez v2, :cond_9

    .line 4074
    iget-boolean v5, v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->h:Z

    if-nez v5, :cond_8

    .line 4078
    monitor-enter v0

    .line 4079
    :try_start_0
    iget v5, v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->g:I

    sub-int v5, v2, v5

    if-gt v5, v10, :cond_7

    .line 4080
    iput v2, v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->g:I

    .line 4081
    iput-boolean v10, v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->h:Z

    .line 4088
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 313
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v2

    .line 314
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v5

    .line 315
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const/4 v11, 0x0

    .line 318
    :try_start_1
    invoke-direct {p0, p1, v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 321
    :try_start_2
    invoke-virtual {p0, v2, v3, v4}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;J)Lcom/amazonaws/internal/SdkFilterInputStream;

    move-result-object v2

    .line 322
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 325
    invoke-virtual {p1, v11}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setFile(Ljava/io/File;)V

    .line 326
    invoke-virtual {p1, v7, v8}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setFileOffset(J)V

    if-eqz v1, :cond_5

    .line 331
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b(Lcom/amazonaws/services/s3/model/UploadPartRequest;)J

    move-result-wide v3

    const-wide/16 v7, -0x1

    cmp-long v11, v3, v7

    if-lez v11, :cond_3

    .line 333
    invoke-virtual {p1, v3, v4}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setPartSize(J)V

    .line 5057
    :cond_3
    iget-boolean v3, v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;->d:Z

    if-nez v3, :cond_4

    goto :goto_2

    .line 336
    :cond_4
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v3, "This part was specified as the last part in a multipart upload, but a previous part was already marked as the last part.  Only the last part of the upload should be marked as the last part."

    invoke-direct {v1, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->g:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v3, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/logging/Log;

    invoke-static {p1, v5, v6, v2, v4}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lcom/amazonaws/logging/Log;)V

    .line 5099
    iput-boolean v9, v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->h:Z

    if-eqz v1, :cond_6

    .line 7061
    iput-boolean v10, v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;->d:Z

    .line 350
    :cond_6
    invoke-virtual {p0, v0, v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->a(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;Lcom/amazonaws/internal/SdkFilterInputStream;)V

    return-object v3

    :catchall_0
    move-exception v1

    move-object v11, v2

    goto :goto_3

    :catchall_1
    move-exception v1

    .line 344
    :goto_3
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->b:Lcom/amazonaws/logging/Log;

    invoke-static {p1, v5, v6, v11, v2}, Lcom/amazonaws/services/s3/model/S3DataSource$Utils;->cleanupDataSource(Lcom/amazonaws/services/s3/model/S3DataSource;Ljava/io/File;Ljava/io/InputStream;Ljava/io/InputStream;Lcom/amazonaws/logging/Log;)V

    .line 6099
    iput-boolean v9, v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->h:Z

    .line 346
    throw v1

    .line 4083
    :cond_7
    :try_start_3
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Parts are required to be uploaded in series (partNumber="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->g:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", nextPartNumber="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2
    move-exception p1

    .line 4088
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    .line 4075
    :cond_8
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Parts are required to be uploaded in series"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4072
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "part number must be at least 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 307
    :cond_a
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "No client-side information available on upload ID "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)V
    .locals 0

    return-void
.end method

.method abstract a(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;Lcom/amazonaws/internal/SdkFilterInputStream;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazonaws/internal/SdkFilterInputStream;",
            ")V"
        }
    .end annotation
.end method

.method public final a(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->g:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    .line 230
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method abstract b(Lcom/amazonaws/services/s3/model/UploadPartRequest;)J
.end method
