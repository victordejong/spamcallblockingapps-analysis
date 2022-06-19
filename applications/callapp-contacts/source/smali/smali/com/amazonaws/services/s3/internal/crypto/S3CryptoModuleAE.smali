.class Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;
.super Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<",
        "Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 66
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->b()V

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 0

    .line 75
    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    .line 77
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoMode()Lcom/amazonaws/services/s3/model/CryptoMode;

    move-result-object p1

    .line 78
    sget-object p2, Lcom/amazonaws/services/s3/model/CryptoMode;->StrictAuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-eq p1, p2, :cond_1

    sget-object p2, Lcom/amazonaws/services/s3/model/CryptoMode;->AuthenticatedEncryption:Lcom/amazonaws/services/s3/model/CryptoMode;

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 6

    .line 99
    new-instance v3, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v3}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 6

    .line 90
    new-instance v3, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v3}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;-><init>(Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    return-void
.end method

.method private static a(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    .locals 4

    .line 9065
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    .line 421
    new-instance v1, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    new-instance v2, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;

    .line 9603
    iget-object p1, p1, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    const/16 v3, 0x800

    .line 422
    invoke-direct {v2, v0, p1, v3}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;I)V

    invoke-direct {v1, v2}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 421
    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V

    return-object p0
.end method

.method private a(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;[JLjava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;",
            "[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const-string v0, "x-amz-cek-alg"

    if-eqz p3, :cond_1

    .line 5178
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 5179
    invoke-static {p3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object p3

    goto :goto_0

    .line 5181
    :cond_1
    iget-object p3, p1, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {p3}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p3

    .line 5182
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object p3

    .line 5183
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 5184
    invoke-static {p3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object p3

    .line 6057
    :goto_0
    iget-object v0, p1, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getInstanceLength()J

    move-result-wide v0

    .line 313
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->f()I

    move-result p3

    div-int/lit8 p3, p3, 0x8

    int-to-long v2, p3

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const/4 p3, 0x1

    .line 314
    aget-wide v2, p2, p3

    const/4 v4, 0x0

    cmp-long v5, v2, v0

    if-lez v5, :cond_2

    .line 315
    aput-wide v0, p2, p3

    .line 316
    aget-wide v0, p2, v4

    aget-wide v2, p2, p3

    cmp-long v5, v0, v2

    if-lez v5, :cond_2

    .line 6065
    iget-object p2, p1, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object p2

    .line 320
    iget-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->b:Lcom/amazonaws/logging/Log;

    invoke-static {p2, p3}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    .line 321
    new-instance p2, Ljava/io/ByteArrayInputStream;

    new-array p3, v4, [B

    invoke-direct {p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 6073
    iget-object p3, p1, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {p3, p2}, Lcom/amazonaws/services/s3/model/S3Object;->setObjectContent(Ljava/io/InputStream;)V

    return-object p1

    .line 325
    :cond_2
    aget-wide v0, p2, v4

    aget-wide v2, p2, p3

    cmp-long v5, v0, v2

    if-lez v5, :cond_3

    return-object p1

    .line 7065
    :cond_3
    :try_start_0
    iget-object v0, p1, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v6

    .line 331
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;

    aget-wide v7, p2, v4

    aget-wide v9, p2, p3

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 332
    new-instance p2, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    invoke-direct {p2, v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 335
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Error adjusting output to desired byte range: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private a(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 9

    .line 224
    sget-object v0, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->NONE:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    .line 225
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a()Z

    move-result v1

    .line 226
    instance-of v2, p1, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;

    if-eqz v2, :cond_0

    .line 227
    check-cast p1, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;

    .line 228
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->getExtraMaterialDescription()Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    move-result-object v0

    if-nez v1, :cond_0

    .line 230
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->isKeyWrapExpected()Z

    move-result v1

    :cond_0
    move-object v6, v0

    move v7, v1

    .line 233
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->b()Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-static {p1}, Lcom/amazonaws/util/json/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 237
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object p5, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->e:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 241
    invoke-virtual {p5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v4

    iget-object v8, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->h:Lcom/amazonaws/services/kms/AWSKMSClient;

    move-object v2, p1

    move-object v5, p3

    .line 238
    invoke-static/range {v2 .. v8}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p3

    .line 247
    invoke-virtual {p0, p3, p4}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)V

    .line 248
    invoke-static {p4, p3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object p3

    .line 250
    invoke-direct {p0, p3, p2, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;[JLjava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object p1

    .line 5165
    iget-object p1, p1, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    return-object p1
.end method

.method private a(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    .line 155
    new-instance v5, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getS3ObjectId()Lcom/amazonaws/services/s3/model/S3ObjectId;

    move-result-object v1

    move-object/from16 v2, p4

    invoke-direct {v5, v2, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;-><init>(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    .line 2120
    iget-object v1, v5, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    .line 2121
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    const-string v8, "x-amz-iv"

    .line 2123
    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "x-amz-key-v2"

    .line 2124
    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "x-amz-key"

    .line 2125
    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v8, 0x0

    if-eqz v1, :cond_3

    .line 2258
    sget-object v1, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->NONE:Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    .line 2259
    invoke-virtual/range {p0 .. p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a()Z

    move-result v2

    .line 2260
    instance-of v4, v0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;

    if-eqz v4, :cond_2

    .line 2261
    check-cast v0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;

    .line 2262
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->getExtraMaterialDescription()Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;

    move-result-object v1

    if-nez v2, :cond_2

    .line 2264
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->isKeyWrapExpected()Z

    move-result v2

    :cond_2
    move-object v13, v1

    move v14, v2

    .line 3057
    iget-object v0, v5, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v9

    .line 2268
    iget-object v10, v7, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v0, v7, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->e:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 2270
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v11

    iget-object v15, v7, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->h:Lcom/amazonaws/services/kms/AWSKMSClient;

    move-object/from16 v12, p3

    .line 2268
    invoke-static/range {v9 .. v15}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v0

    .line 2277
    invoke-virtual {v7, v0, v5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)V

    .line 2278
    invoke-static {v5, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object v0

    .line 2280
    invoke-direct {v7, v0, v3, v8}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;[JLjava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object v0

    .line 3165
    iget-object v0, v0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    return-object v0

    .line 161
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getS3ObjectId()Lcom/amazonaws/services/s3/model/S3ObjectId;

    move-result-object v1

    invoke-virtual {v7, v1, v8}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/S3ObjectId;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 164
    :try_start_0
    invoke-virtual {v9}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v6, v9

    .line 165
    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v1, v7, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->b:Lcom/amazonaws/logging/Log;

    invoke-static {v9, v1}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    return-object v0

    :cond_4
    iget-object v0, v7, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->b:Lcom/amazonaws/logging/Log;

    invoke-static {v9, v0}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, v7, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->b:Lcom/amazonaws/logging/Log;

    invoke-static {v9, v1}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    .line 170
    throw v0

    .line 173
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v7, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->e:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->isIgnoreMissingInstructionFile()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 181
    iget-object v0, v7, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->b:Lcom/amazonaws/logging/Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 184
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v6

    .line 185
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Unable to detect encryption information for object \'%s\' in bucket \'%s\'. Returning object without decryption."

    .line 181
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 187
    invoke-direct {v7, v5, v3, v8}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;[JLjava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object v0

    .line 4165
    iget-object v0, v0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a:Lcom/amazonaws/services/s3/model/S3Object;

    return-object v0

    .line 174
    :cond_6
    iget-object v0, v7, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->b:Lcom/amazonaws/logging/Log;

    invoke-static {v5, v0}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    .line 175
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Instruction file not found for S3 object with bucket name: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/model/S3Object;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 8

    .line 200
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getS3ObjectId()Lcom/amazonaws/services/s3/model/S3ObjectId;

    move-result-object v0

    .line 202
    invoke-virtual {p0, v0, p5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/S3ObjectId;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 208
    :try_start_0
    invoke-virtual {v7}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    new-instance v5, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    invoke-direct {v5, p4, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;-><init>(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/S3ObjectId;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->b:Lcom/amazonaws/logging/Log;

    invoke-static {v7, p2}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    return-object p1

    .line 212
    :cond_0
    :try_start_1
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid Instruction file with suffix "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " detected for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 217
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->b:Lcom/amazonaws/logging/Log;

    invoke-static {v7, p2}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    .line 218
    throw p1

    .line 204
    :cond_1
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Instruction file with suffix "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not found for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected final a(J)J
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->d:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->f()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    add-long/2addr p1, v0

    return-wide p1
.end method

.method final a(Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;J)Lcom/amazonaws/internal/SdkFilterInputStream;
    .locals 0

    return-object p1
.end method

.method final a(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 0

    .line 8047
    iget-object p1, p1, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->f:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    .line 8603
    iget-object p1, p1, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    return-object p1
.end method

.method final a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;
    .locals 2

    .line 379
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;

    .line 380
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)V

    return-object v0
.end method

.method public final a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 13

    .line 113
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->i:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 116
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v3

    .line 117
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getPartNumber()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Range get and getting a part are not allowed in strict crypto mode"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v3, :cond_5

    .line 1939
    aget-wide v4, v3, v2

    aget-wide v6, v3, v1

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    new-array v4, v4, [J

    .line 1943
    aget-wide v5, v3, v2

    const-wide/16 v7, 0x10

    .line 1950
    rem-long v9, v5, v7

    sub-long/2addr v5, v9

    sub-long/2addr v5, v7

    const-wide/16 v9, 0x0

    cmp-long v11, v5, v9

    if-gez v11, :cond_3

    move-wide v5, v9

    :cond_3
    aput-wide v5, v4, v2

    .line 1944
    aget-wide v5, v3, v1

    .line 1963
    rem-long v11, v5, v7

    sub-long v11, v7, v11

    add-long/2addr v5, v11

    add-long/2addr v5, v7

    cmp-long v7, v5, v9

    if-gez v7, :cond_4

    const-wide v5, 0x7fffffffffffffffL

    :cond_4
    aput-wide v5, v4, v1

    goto :goto_2

    :cond_5
    :goto_1
    move-object v4, v0

    :goto_2
    if-eqz v4, :cond_6

    .line 122
    aget-wide v5, v4, v2

    aget-wide v1, v4, v1

    invoke-virtual {p1, v5, v6, v1, v2}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setRange(JJ)V

    .line 125
    :cond_6
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->g:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v7

    if-nez v7, :cond_7

    return-object v0

    .line 132
    :cond_7
    instance-of v1, p1, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;

    if-eqz v1, :cond_8

    .line 133
    move-object v0, p1

    check-cast v0, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;

    .line 134
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/EncryptedGetObjectRequest;->getInstructionFileSuffix()Ljava/lang/String;

    move-result-object v0

    :cond_8
    move-object v6, v0

    if-eqz v6, :cond_a

    .line 137
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    move-object v1, p0

    move-object v2, p1

    move-object v5, v7

    .line 139
    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/model/S3Object;Ljava/lang/String;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1

    return-object p1

    .line 138
    :cond_a
    :goto_3
    invoke-direct {p0, p1, v3, v4, v7}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->a(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 147
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->b:Lcom/amazonaws/logging/Log;

    invoke-static {v7, v0}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    .line 148
    throw p1

    :catch_1
    move-exception p1

    .line 144
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->b:Lcom/amazonaws/logging/Log;

    invoke-static {v7, v0}, Lcom/amazonaws/util/IOUtils;->closeQuietly(Ljava/io/Closeable;Lcom/amazonaws/logging/Log;)V

    .line 145
    throw p1
.end method

.method final a(Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;Lcom/amazonaws/internal/SdkFilterInputStream;)V
    .locals 0

    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final b(Lcom/amazonaws/services/s3/model/UploadPartRequest;)J
    .locals 4

    .line 396
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v0

    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->d:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 397
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->f()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method
