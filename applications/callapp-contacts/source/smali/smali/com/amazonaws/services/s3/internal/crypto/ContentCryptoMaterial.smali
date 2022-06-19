.class final Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:[B


# direct methods
.method constructor <init>(Ljava/util/Map;[BLjava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/internal/crypto/CipherLite;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p4, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 83
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b:Ljava/lang/String;

    .line 84
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->d:[B

    .line 85
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->c:Ljava/util/Map;

    return-void
.end method

.method static a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 8

    .line 8374
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object p0

    const-string v0, "x-amz-key-v2"

    .line 8375
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "x-amz-key"

    .line 8377
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8379
    :cond_0
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string p1, "Content encrypting key not found."

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8383
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "x-amz-iv"

    .line 8384
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    const-string v2, "x-amz-matdesc"

    .line 8390
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "x-amz-wrap-alg"

    .line 8391
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 8392
    invoke-static {v7}, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;->a(Ljava/lang/String;)Z

    move-result v3

    .line 8393
    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-nez v3, :cond_3

    if-nez p4, :cond_2

    goto :goto_1

    .line 8395
    :cond_2
    invoke-virtual {p4, v2}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->mergeInto(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p4

    goto :goto_2

    :cond_3
    :goto_1
    move-object p4, v2

    :goto_2
    if-eqz v3, :cond_4

    .line 8398
    new-instance p1, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;

    const-string v3, "kms_cmk_id"

    .line 8399
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p1, v3}, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;-><init>(Ljava/lang/String;)V

    .line 8400
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->addDescriptions(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    :goto_3
    move-object v3, p1

    goto :goto_5

    :cond_4
    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_4

    .line 8404
    :cond_5
    invoke-interface {p1, p4}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_c

    goto :goto_3

    :goto_5
    const-string p1, "x-amz-cek-alg"

    .line 8411
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p3, :cond_6

    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    .line 8416
    :goto_6
    invoke-static {p1, v4}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljava/lang/String;Z)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object p1

    if-eqz v4, :cond_7

    .line 8419
    aget-wide v4, p3, v2

    invoke-virtual {p1, v1, v4, v5}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a([BJ)[B

    move-result-object v1

    goto :goto_7

    .line 8422
    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->f()I

    move-result p3

    if-lez p3, :cond_9

    const-string v2, "x-amz-tag-len"

    .line 8424
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 8425
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne p3, p0, :cond_8

    goto :goto_7

    .line 8427
    :cond_8
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Unsupported tag length: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", expected: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_7
    move-object p0, v1

    if-eqz p5, :cond_b

    if-eqz v7, :cond_a

    goto :goto_8

    .line 8434
    :cond_a
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b()Lcom/amazonaws/services/s3/KeyWrapException;

    move-result-object p0

    throw p0

    :cond_b
    :goto_8
    move-object v1, v0

    move-object v2, v7

    move-object v4, p2

    move-object v5, p1

    move-object v6, p6

    .line 8436
    invoke-static/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a([BLjava/lang/String;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/kms/AWSKMSClient;)Ljavax/crypto/SecretKey;

    move-result-object p3

    .line 8438
    new-instance p5, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    const/4 p6, 0x2

    .line 8439
    invoke-virtual {p1, p3, p0, p6, p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p0

    invoke-direct {p5, p4, v0, v7, p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;-><init>(Ljava/util/Map;[BLjava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V

    return-object p5

    .line 8406
    :cond_c
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string p1, "Unable to retrieve the client encryption materials"

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8386
    :cond_d
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string p1, "Content encrypting key or IV not found."

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[JLcom/amazonaws/services/s3/model/ExtraMaterialsDescription;ZLcom/amazonaws/services/kms/AWSKMSClient;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;",
            "Ljava/security/Provider;",
            "[J",
            "Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;",
            "Z",
            "Lcom/amazonaws/services/kms/AWSKMSClient;",
            ")",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;"
        }
    .end annotation

    const-string v0, "x-amz-key-v2"

    .line 8492
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "x-amz-key"

    .line 8494
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8496
    :cond_0
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string p1, "Content encrypting key not found."

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8500
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "x-amz-iv"

    .line 8501
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    const-string v2, "x-amz-wrap-alg"

    .line 8507
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 8508
    invoke-static {v7}, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;->a(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "x-amz-matdesc"

    .line 8510
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8511
    invoke-static {v3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-eqz p4, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    .line 8513
    :cond_2
    invoke-virtual {p4, v3}, Lcom/amazonaws/services/s3/model/ExtraMaterialsDescription;->mergeInto(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p4

    goto :goto_2

    :cond_3
    :goto_1
    move-object p4, v3

    :goto_2
    if-eqz v2, :cond_4

    .line 8516
    new-instance p1, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;

    const-string v2, "kms_cmk_id"

    .line 8517
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p1, v2}, Lcom/amazonaws/services/s3/model/KMSEncryptionMaterials;-><init>(Ljava/lang/String;)V

    .line 8518
    invoke-virtual {p1, v3}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->addDescriptions(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    :goto_3
    move-object v3, p1

    goto :goto_5

    :cond_4
    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_4

    .line 8522
    :cond_5
    invoke-interface {p1, p4}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_c

    goto :goto_3

    :goto_5
    const-string p1, "x-amz-cek-alg"

    .line 8531
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p3, :cond_6

    const/4 v4, 0x1

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    .line 8536
    :goto_6
    invoke-static {p1, v4}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljava/lang/String;Z)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object p1

    if-eqz v4, :cond_7

    .line 8539
    aget-wide v4, p3, v2

    invoke-virtual {p1, v1, v4, v5}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a([BJ)[B

    move-result-object v1

    goto :goto_7

    .line 8542
    :cond_7
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->f()I

    move-result p3

    if-lez p3, :cond_9

    const-string v2, "x-amz-tag-len"

    .line 8544
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 8545
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne p3, p0, :cond_8

    goto :goto_7

    .line 8547
    :cond_8
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Unsupported tag length: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", expected: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_7
    move-object p0, v1

    if-eqz p5, :cond_b

    if-eqz v7, :cond_a

    goto :goto_8

    .line 8554
    :cond_a
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b()Lcom/amazonaws/services/s3/KeyWrapException;

    move-result-object p0

    throw p0

    :cond_b
    :goto_8
    move-object v1, v0

    move-object v2, v7

    move-object v4, p2

    move-object v5, p1

    move-object v6, p6

    .line 8556
    invoke-static/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a([BLjava/lang/String;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/kms/AWSKMSClient;)Ljavax/crypto/SecretKey;

    move-result-object p3

    .line 8558
    new-instance p5, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    const/4 p6, 0x2

    .line 8559
    invoke-virtual {p1, p3, p0, p6, p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p0

    invoke-direct {p5, p4, v0, v7, p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;-><init>(Ljava/util/Map;[BLjava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V

    return-object p5

    .line 8524
    :cond_c
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Unable to retrieve the encryption materials that originally encrypted object corresponding to instruction file "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8503
    :cond_d
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Necessary encryption info not found in the instruction file "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 4

    .line 841
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    .line 10065
    iget-object v1, p4, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->c:Ljava/util/Map;

    .line 11054
    iget-object v2, p4, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->a:[B

    .line 11058
    iget-object p4, p4, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;->b:Ljava/lang/String;

    const/4 v3, 0x1

    .line 845
    invoke-virtual {p2, p0, p1, v3, p3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object p0

    invoke-direct {v0, v1, v2, p4, p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;-><init>(Ljava/util/Map;[BLjava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V

    return-object v0
.end method

.method static a(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 8

    .line 9056
    iget-object v0, p3, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->b:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 10060
    iget-object v3, p3, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->a:Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    .line 9826
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->a()Ljava/security/SecureRandom;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 9824
    invoke-static/range {v1 .. v7}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;Ljava/security/SecureRandom;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;

    move-result-object p2

    .line 9828
    invoke-static {p0, p1, v0, p4, p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Ljavax/crypto/SecretKey;[BLcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;Ljava/security/SecureRandom;Ljava/security/Provider;Lcom/amazonaws/services/kms/AWSKMSClient;Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;
    .locals 1

    .line 869
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->isKMSEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    invoke-static {p1, p6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/AmazonWebServiceRequest;)Ljava/util/Map;

    move-result-object p2

    .line 871
    new-instance p3, Lcom/amazonaws/services/kms/model/EncryptRequest;

    invoke-direct {p3}, Lcom/amazonaws/services/kms/model/EncryptRequest;-><init>()V

    .line 872
    invoke-virtual {p3, p2}, Lcom/amazonaws/services/kms/model/EncryptRequest;->withEncryptionContext(Ljava/util/Map;)Lcom/amazonaws/services/kms/model/EncryptRequest;

    move-result-object p3

    .line 873
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getCustomerMasterKeyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amazonaws/services/kms/model/EncryptRequest;->withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/EncryptRequest;

    move-result-object p1

    .line 874
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/amazonaws/services/kms/model/EncryptRequest;->withPlaintext(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/EncryptRequest;

    move-result-object p0

    .line 876
    invoke-virtual {p6}, Lcom/amazonaws/AmazonWebServiceRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/EncryptRequest;->withGeneralProgressListener(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    .line 877
    invoke-virtual {p6}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/amazonaws/AmazonWebServiceRequest;->withRequestMetricCollector(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 878
    invoke-virtual {p5, p0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/services/kms/model/EncryptRequest;)Lcom/amazonaws/services/kms/model/EncryptResult;

    move-result-object p0

    .line 879
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/EncryptResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/util/BinaryUtils;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    .line 880
    new-instance p1, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;

    invoke-direct {p1, p0, p2}, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;-><init>([BLjava/util/Map;)V

    return-object p1

    .line 882
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object p5

    .line 885
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object p6

    if-eqz p6, :cond_1

    .line 887
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    goto :goto_0

    .line 890
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 892
    :goto_0
    invoke-virtual {p2, p1, p4}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;->a(Ljava/security/Key;Ljava/security/Provider;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    if-nez p4, :cond_2

    .line 896
    :try_start_0
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p4

    goto :goto_1

    :cond_2
    invoke-static {p2, p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p4

    :goto_1
    const/4 p6, 0x3

    .line 898
    invoke-virtual {p4, p6, p1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 899
    new-instance p1, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;

    invoke-virtual {p4, p0}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p0

    invoke-direct {p1, p0, p2, p5}, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;-><init>([BLjava/lang/String;Ljava/util/Map;)V

    return-object p1

    .line 903
    :cond_3
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    .line 904
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    if-eqz p4, :cond_4

    .line 906
    invoke-static {p2, p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p2

    goto :goto_2

    .line 908
    :cond_4
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    :goto_2
    const/4 p3, 0x1

    .line 910
    invoke-virtual {p2, p3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 911
    new-instance p1, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;

    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p5}, Lcom/amazonaws/services/s3/internal/crypto/SecuredCEK;-><init>([BLjava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 913
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "Unable to encrypt symmetric key"

    invoke-direct {p1, p2, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .line 7611
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 232
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 234
    :cond_0
    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Lcom/amazonaws/AmazonWebServiceRequest;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterials;",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 920
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object p0

    .line 921
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    if-eqz v0, :cond_0

    .line 922
    check-cast p1, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    .line 923
    invoke-interface {p1}, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;->getMaterialsDescription()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 925
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 926
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 243
    invoke-static {p0}, Lcom/amazonaws/util/json/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 244
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static a([BLjava/lang/String;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Lcom/amazonaws/services/kms/AWSKMSClient;)Ljavax/crypto/SecretKey;
    .locals 1

    .line 268
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8322
    new-instance p1, Lcom/amazonaws/services/kms/model/DecryptRequest;

    invoke-direct {p1}, Lcom/amazonaws/services/kms/model/DecryptRequest;-><init>()V

    .line 8323
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazonaws/services/kms/model/DecryptRequest;->withEncryptionContext(Ljava/util/Map;)Lcom/amazonaws/services/kms/model/DecryptRequest;

    move-result-object p1

    .line 8324
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/amazonaws/services/kms/model/DecryptRequest;->withCiphertextBlob(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/DecryptRequest;

    move-result-object p0

    .line 8325
    invoke-virtual {p5, p0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/services/kms/model/DecryptRequest;)Lcom/amazonaws/services/kms/model/DecryptResult;

    move-result-object p0

    .line 8326
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DecryptResult;->getPlaintext()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/amazonaws/util/BinaryUtils;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    .line 8327
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1

    .line 272
    :cond_0
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object p4

    const-string p5, "Key encrypting key not available"

    if-eqz p4, :cond_2

    .line 274
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object p2

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 276
    :cond_1
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    invoke-direct {p0, p5}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 280
    :cond_2
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object p2

    if-eqz p2, :cond_6

    :goto_0
    if-eqz p1, :cond_4

    if-nez p3, :cond_3

    .line 290
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    goto :goto_1

    :cond_3
    invoke-static {p1, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p3

    :goto_1
    const/4 p4, 0x4

    .line 292
    invoke-virtual {p3, p4, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 p2, 0x3

    .line 293
    invoke-virtual {p3, p0, p1, p2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljavax/crypto/SecretKey;

    return-object p0

    :cond_4
    if-eqz p3, :cond_5

    .line 299
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p1

    goto :goto_2

    .line 302
    :cond_5
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    :goto_2
    const/4 p3, 0x2

    .line 304
    invoke-virtual {p1, p3, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 305
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 306
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string p2, "AES"

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 309
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "Unable to decrypt symmetric key from object metadata"

    invoke-direct {p1, p2, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 282
    :cond_6
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    invoke-direct {p0, p5}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b()Lcom/amazonaws/services/s3/KeyWrapException;
    .locals 2

    .line 444
    new-instance v0, Lcom/amazonaws/services/s3/KeyWrapException;

    const-string v1, "Missing key-wrap for the content-encrypting-key"

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/KeyWrapException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private c()[B
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->d:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method


# virtual methods
.method final a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/CryptoMode;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 3

    .line 119
    sget-object v0, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    const-string v1, "x-amz-matdesc"

    const-string v2, "x-amz-iv"

    if-ne p2, v0, :cond_0

    .line 1105
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1167
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->c()[B

    move-result-object p2

    .line 1169
    invoke-static {p2}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p2

    const-string v0, "x-amz-key"

    .line 1168
    invoke-virtual {p1, v0, p2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 1325
    iget-object p2, p2, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p2

    .line 1172
    invoke-static {p2}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a()Ljava/lang/String;

    move-result-object p2

    .line 1174
    invoke-virtual {p1, v1, p2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2131
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->c()[B

    move-result-object p2

    .line 2133
    invoke-static {p2}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p2

    const-string v0, "x-amz-key-v2"

    .line 2132
    invoke-virtual {p1, v0, p2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 2325
    iget-object p2, p2, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p2

    .line 2136
    invoke-static {p2}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a()Ljava/lang/String;

    move-result-object p2

    .line 2138
    invoke-virtual {p1, v1, p2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 3112
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 3310
    iget-object p2, p2, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 2145
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-amz-cek-alg"

    .line 2144
    invoke-virtual {p1, v1, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->f()I

    move-result p2

    if-lez p2, :cond_1

    .line 2149
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "x-amz-tag-len"

    .line 2148
    invoke-virtual {p1, v0, p2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 4097
    :cond_1
    iget-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b:Ljava/lang/String;

    if-eqz p2, :cond_2

    const-string v0, "x-amz-wrap-alg"

    .line 2153
    invoke-virtual {p1, v0, p2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method final a(Lcom/amazonaws/services/s3/model/CryptoMode;)Ljava/lang/String;
    .locals 4

    .line 184
    sget-object v0, Lcom/amazonaws/services/s3/model/CryptoMode;->EncryptionOnly:Lcom/amazonaws/services/s3/model/CryptoMode;

    const-string v1, "x-amz-matdesc"

    const-string v2, "x-amz-iv"

    if-ne p1, v0, :cond_0

    .line 4105
    iget-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/crypto/KMSSecuredCEK;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4217
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 4218
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->c()[B

    move-result-object v0

    .line 4219
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v0

    const-string v3, "x-amz-key"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4220
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 4325
    iget-object v0, v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    .line 4221
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4222
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5193
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 5194
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->c()[B

    move-result-object v0

    .line 5195
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v0

    const-string v3, "x-amz-key-v2"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5196
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 5325
    iget-object v0, v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    .line 5197
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5198
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6112
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->a:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 6310
    iget-object v0, v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->c:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 5203
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-amz-cek-alg"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5204
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->f()I

    move-result v0

    if-lez v0, :cond_1

    .line 5206
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-amz-tag-len"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7097
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "x-amz-wrap-alg"

    .line 5210
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5212
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/amazonaws/util/json/JsonUtils;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
