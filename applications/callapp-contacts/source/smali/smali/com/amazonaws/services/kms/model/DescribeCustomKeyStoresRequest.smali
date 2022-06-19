.class public Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private customKeyStoreId:Ljava/lang/String;

.field private customKeyStoreName:Ljava/lang/String;

.field private limit:Ljava/lang/Integer;

.field private marker:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 546
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;

    if-nez v2, :cond_2

    return v1

    .line 548
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;

    .line 550
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    return v1

    .line 552
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 553
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 555
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getCustomKeyStoreName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getCustomKeyStoreName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    xor-int/2addr v2, v3

    if-eqz v2, :cond_9

    return v1

    .line 557
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getCustomKeyStoreName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 558
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getCustomKeyStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getCustomKeyStoreName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 560
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_c

    const/4 v3, 0x1

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    :goto_5
    xor-int/2addr v2, v3

    if-eqz v2, :cond_d

    return v1

    .line 562
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 564
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getMarker()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getMarker()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    const/4 v3, 0x1

    goto :goto_7

    :cond_10
    const/4 v3, 0x0

    :goto_7
    xor-int/2addr v2, v3

    if-eqz v2, :cond_11

    return v1

    .line 566
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getMarker()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getMarker()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getMarker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v1

    :cond_12
    return v0
.end method

.method public getCustomKeyStoreId()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->customKeyStoreId:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomKeyStoreName()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->customKeyStoreName:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 531
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 533
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getCustomKeyStoreName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getCustomKeyStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 534
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 535
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getMarker()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getMarker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public setCustomKeyStoreId(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->customKeyStoreId:Ljava/lang/String;

    return-void
.end method

.method public setCustomKeyStoreName(Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->customKeyStoreName:Ljava/lang/String;

    return-void
.end method

.method public setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->limit:Ljava/lang/Integer;

    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->marker:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CustomKeyStoreId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getCustomKeyStoreName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CustomKeyStoreName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getCustomKeyStoreName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Limit: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Marker: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->getMarker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "}"

    .line 521
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCustomKeyStoreId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->customKeyStoreId:Ljava/lang/String;

    return-object p0
.end method

.method public withCustomKeyStoreName(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->customKeyStoreName:Ljava/lang/String;

    return-object p0
.end method

.method public withLimit(Ljava/lang/Integer;)Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->limit:Ljava/lang/Integer;

    return-object p0
.end method

.method public withMarker(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;->marker:Ljava/lang/String;

    return-object p0
.end method
