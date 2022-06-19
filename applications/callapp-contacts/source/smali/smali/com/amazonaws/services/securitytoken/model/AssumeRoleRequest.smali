.class public Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private durationSeconds:Ljava/lang/Integer;

.field private externalId:Ljava/lang/String;

.field private policy:Ljava/lang/String;

.field private policyArns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/securitytoken/model/PolicyDescriptorType;",
            ">;"
        }
    .end annotation
.end field

.field private roleArn:Ljava/lang/String;

.field private roleSessionName:Ljava/lang/String;

.field private serialNumber:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/securitytoken/model/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private tokenCode:Ljava/lang/String;

.field private transitiveTagKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 187
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

    .line 2613
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;

    if-nez v2, :cond_2

    return v1

    .line 2615
    :cond_2
    check-cast p1, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;

    .line 2617
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

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

    .line 2619
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 2621
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

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

    .line 2623
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2624
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 2626
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicyArns()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicyArns()Ljava/util/List;

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

    .line 2628
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicyArns()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 2629
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicyArns()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicyArns()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 2631
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

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

    .line 2633
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 2635
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_14

    const/4 v3, 0x1

    goto :goto_9

    :cond_14
    const/4 v3, 0x0

    :goto_9
    xor-int/2addr v2, v3

    if-eqz v2, :cond_15

    return v1

    .line 2637
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 2638
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 2640
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTags()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTags()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_18

    const/4 v3, 0x1

    goto :goto_b

    :cond_18
    const/4 v3, 0x0

    :goto_b
    xor-int/2addr v2, v3

    if-eqz v2, :cond_19

    return v1

    .line 2642
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTags()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 2644
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTransitiveTagKeys()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_c

    :cond_1b
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTransitiveTagKeys()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_d

    :cond_1c
    const/4 v3, 0x0

    :goto_d
    xor-int/2addr v2, v3

    if-eqz v2, :cond_1d

    return v1

    .line 2646
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTransitiveTagKeys()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 2647
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTransitiveTagKeys()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTransitiveTagKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 2649
    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_e

    :cond_1f
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_20

    const/4 v3, 0x1

    goto :goto_f

    :cond_20
    const/4 v3, 0x0

    :goto_f
    xor-int/2addr v2, v3

    if-eqz v2, :cond_21

    return v1

    .line 2651
    :cond_21
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 2652
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 2654
    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_23

    const/4 v2, 0x1

    goto :goto_10

    :cond_23
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_24

    const/4 v3, 0x1

    goto :goto_11

    :cond_24
    const/4 v3, 0x0

    :goto_11
    xor-int/2addr v2, v3

    if-eqz v2, :cond_25

    return v1

    .line 2656
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 2657
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    return v1

    .line 2659
    :cond_26
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_27

    const/4 v2, 0x1

    goto :goto_12

    :cond_27
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    const/4 v3, 0x1

    goto :goto_13

    :cond_28
    const/4 v3, 0x0

    :goto_13
    xor-int/2addr v2, v3

    if-eqz v2, :cond_29

    return v1

    .line 2661
    :cond_29
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 2662
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTokenCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    return v1

    :cond_2a
    return v0
.end method

.method public getDurationSeconds()Ljava/lang/Integer;
    .locals 1

    .line 1351
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->durationSeconds:Ljava/lang/Integer;

    return-object v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    .line 2190
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->externalId:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicy()Ljava/lang/String;
    .locals 1

    .line 1119
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->policy:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyArns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/securitytoken/model/PolicyDescriptorType;",
            ">;"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->policyArns:Ljava/util/List;

    return-object v0
.end method

.method public getRoleArn()Ljava/lang/String;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->roleArn:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleSessionName()Ljava/lang/String;
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->roleSessionName:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 2348
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/securitytoken/model/Tag;",
            ">;"
        }
    .end annotation

    .line 1601
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTokenCode()Ljava/lang/String;
    .locals 1

    .line 2472
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->tokenCode:Ljava/lang/String;

    return-object v0
.end method

.method public getTransitiveTagKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1991
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->transitiveTagKeys:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 2589
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 2591
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2592
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicyArns()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicyArns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2593
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2595
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2596
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTags()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2598
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTransitiveTagKeys()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTransitiveTagKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2599
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2601
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2602
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    return v0
.end method

.method public setDurationSeconds(Ljava/lang/Integer;)V
    .locals 0

    .line 1419
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->durationSeconds:Ljava/lang/Integer;

    return-void
.end method

.method public setExternalId(Ljava/lang/String;)V
    .locals 0

    .line 2245
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->externalId:Ljava/lang/String;

    return-void
.end method

.method public setPolicy(Ljava/lang/String;)V
    .locals 0

    .line 1199
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->policy:Ljava/lang/String;

    return-void
.end method

.method public setPolicyArns(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/securitytoken/model/PolicyDescriptorType;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 858
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->policyArns:Ljava/util/List;

    return-void

    .line 862
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->policyArns:Ljava/util/List;

    return-void
.end method

.method public setRoleArn(Ljava/lang/String;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->roleArn:Ljava/lang/String;

    return-void
.end method

.method public setRoleSessionName(Ljava/lang/String;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->roleSessionName:Ljava/lang/String;

    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 2390
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->serialNumber:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/securitytoken/model/Tag;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1711
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->tags:Ljava/util/List;

    return-void

    .line 1715
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->tags:Ljava/util/List;

    return-void
.end method

.method public setTokenCode(Ljava/lang/String;)V
    .locals 0

    .line 2506
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->tokenCode:Ljava/lang/String;

    return-void
.end method

.method public setTransitiveTagKeys(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2033
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->transitiveTagKeys:Ljava/util/List;

    return-void

    .line 2037
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->transitiveTagKeys:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 2558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 2559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2560
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 2561
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "RoleArn: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleArn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2562
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2563
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "RoleSessionName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getRoleSessionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2564
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicyArns()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2565
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "PolicyArns: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicyArns()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2566
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2567
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Policy: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2568
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2569
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DurationSeconds: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2570
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2571
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Tags: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2572
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTransitiveTagKeys()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2573
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "TransitiveTagKeys: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTransitiveTagKeys()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2574
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2575
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ExternalId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getExternalId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2576
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 2577
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SerialNumber: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2578
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2579
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TokenCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, "}"

    .line 2580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2581
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDurationSeconds(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .locals 0

    .line 1492
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->durationSeconds:Ljava/lang/Integer;

    return-object p0
.end method

.method public withExternalId(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .locals 0

    .line 2305
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->externalId:Ljava/lang/String;

    return-object p0
.end method

.method public withPolicy(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .locals 0

    .line 1284
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->policy:Ljava/lang/String;

    return-object p0
.end method

.method public withPolicyArns(Ljava/util/Collection;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/securitytoken/model/PolicyDescriptorType;",
            ">;)",
            "Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;"
        }
    .end annotation

    .line 1038
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->setPolicyArns(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withPolicyArns([Lcom/amazonaws/services/securitytoken/model/PolicyDescriptorType;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .locals 4

    .line 947
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getPolicyArns()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 948
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->policyArns:Ljava/util/List;

    .line 950
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 951
    iget-object v3, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->policyArns:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withRoleArn(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->roleArn:Ljava/lang/String;

    return-object p0
.end method

.method public withRoleSessionName(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->roleSessionName:Ljava/lang/String;

    return-object p0
.end method

.method public withSerialNumber(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .locals 0

    .line 2437
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->serialNumber:Ljava/lang/String;

    return-object p0
.end method

.method public withTags(Ljava/util/Collection;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/securitytoken/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;"
        }
    .end annotation

    .line 1949
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->setTags(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withTags([Lcom/amazonaws/services/securitytoken/model/Tag;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .locals 4

    .line 1829
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTags()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1830
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->tags:Ljava/util/List;

    .line 1832
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1833
    iget-object v3, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->tags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withTokenCode(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .locals 0

    .line 2545
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->tokenCode:Ljava/lang/String;

    return-object p0
.end method

.method public withTransitiveTagKeys(Ljava/util/Collection;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;"
        }
    .end annotation

    .line 2135
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->setTransitiveTagKeys(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withTransitiveTagKeys([Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    .locals 4

    .line 2083
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->getTransitiveTagKeys()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2084
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->transitiveTagKeys:Ljava/util/List;

    .line 2086
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2087
    iget-object v3, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;->transitiveTagKeys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
