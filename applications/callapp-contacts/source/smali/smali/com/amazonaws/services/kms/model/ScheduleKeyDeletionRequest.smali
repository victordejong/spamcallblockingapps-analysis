.class public Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private keyId:Ljava/lang/String;

.field private pendingWindowInDays:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
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

    .line 460
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;

    if-nez v2, :cond_2

    return v1

    .line 462
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;

    .line 464
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->getKeyId()Ljava/lang/String;

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

    .line 466
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 468
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->getPendingWindowInDays()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->getPendingWindowInDays()Ljava/lang/Integer;

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

    .line 470
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->getPendingWindowInDays()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 471
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->getPendingWindowInDays()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->getPendingWindowInDays()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingWindowInDays()Ljava/lang/Integer;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->pendingWindowInDays:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 447
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->getKeyId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->getKeyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 449
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->getPendingWindowInDays()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->getPendingWindowInDays()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setPendingWindowInDays(Ljava/lang/Integer;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->pendingWindowInDays:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KeyId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->getPendingWindowInDays()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PendingWindowInDays: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->getPendingWindowInDays()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public withPendingWindowInDays(Ljava/lang/Integer;)Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;->pendingWindowInDays:Ljava/lang/Integer;

    return-object p0
.end method
