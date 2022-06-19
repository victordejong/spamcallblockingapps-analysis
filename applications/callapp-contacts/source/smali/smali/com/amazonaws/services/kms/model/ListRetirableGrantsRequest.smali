.class public Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private limit:Ljava/lang/Integer;

.field private marker:Ljava/lang/String;

.field private retiringPrincipal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
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

    .line 463
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;

    if-nez v2, :cond_2

    return v1

    .line 465
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;

    .line 467
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getLimit()Ljava/lang/Integer;

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

    .line 469
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 471
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getMarker()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getMarker()Ljava/lang/String;

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

    .line 473
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getMarker()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getMarker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getMarker()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 475
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getRetiringPrincipal()Ljava/lang/String;

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

    .line 477
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 478
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getRetiringPrincipal()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->retiringPrincipal:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 449
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 450
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getMarker()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getMarker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 452
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->limit:Ljava/lang/Integer;

    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->marker:Ljava/lang/String;

    return-void
.end method

.method public setRetiringPrincipal(Ljava/lang/String;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->retiringPrincipal:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Limit: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getMarker()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Marker: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getMarker()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RetiringPrincipal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "}"

    .line 440
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withLimit(Ljava/lang/Integer;)Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->limit:Ljava/lang/Integer;

    return-object p0
.end method

.method public withMarker(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->marker:Ljava/lang/String;

    return-object p0
.end method

.method public withRetiringPrincipal(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;->retiringPrincipal:Ljava/lang/String;

    return-object p0
.end method
