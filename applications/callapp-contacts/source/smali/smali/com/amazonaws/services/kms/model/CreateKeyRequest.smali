.class public Lcom/amazonaws/services/kms/model/CreateKeyRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bypassPolicyLockoutSafetyCheck:Ljava/lang/Boolean;

.field private customKeyStoreId:Ljava/lang/String;

.field private customerMasterKeySpec:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private keyUsage:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field private policy:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/kms/model/Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 165
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->tags:Ljava/util/List;

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

    .line 3513
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/CreateKeyRequest;

    if-nez v2, :cond_2

    return v1

    .line 3515
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/CreateKeyRequest;

    .line 3517
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getPolicy()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getPolicy()Ljava/lang/String;

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

    .line 3519
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getPolicy()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 3521
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getDescription()Ljava/lang/String;

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

    .line 3523
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 3524
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 3526
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getKeyUsage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getKeyUsage()Ljava/lang/String;

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

    .line 3528
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getKeyUsage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getKeyUsage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getKeyUsage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 3530
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomerMasterKeySpec()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomerMasterKeySpec()Ljava/lang/String;

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

    .line 3532
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomerMasterKeySpec()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 3533
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomerMasterKeySpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomerMasterKeySpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 3535
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getOrigin()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getOrigin()Ljava/lang/String;

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

    .line 3537
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getOrigin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getOrigin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 3539
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomKeyStoreId()Ljava/lang/String;

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

    .line 3541
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 3542
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 3544
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_c

    :cond_1b
    const/4 v2, 0x0

    .line 3545
    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;

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

    .line 3547
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 3548
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;

    move-result-object v2

    .line 3549
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;

    move-result-object v3

    .line 3548
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 3551
    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getTags()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_e

    :cond_1f
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getTags()Ljava/util/List;

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

    .line 3553
    :cond_21
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getTags()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getTags()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v1

    :cond_22
    return v0
.end method

.method public getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;
    .locals 1

    .line 3107
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->bypassPolicyLockoutSafetyCheck:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCustomKeyStoreId()Ljava/lang/String;
    .locals 1

    .line 2851
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->customKeyStoreId:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerMasterKeySpec()Ljava/lang/String;
    .locals 1

    .line 1536
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->customerMasterKeySpec:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyUsage()Ljava/lang/String;
    .locals 1

    .line 997
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->keyUsage:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .line 2531
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicy()Ljava/lang/String;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->policy:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/kms/model/Tag;",
            ">;"
        }
    .end annotation

    .line 3276
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->tags:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 3488
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getPolicy()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getPolicy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 3490
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3491
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getKeyUsage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getKeyUsage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3494
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomerMasterKeySpec()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomerMasterKeySpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3495
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getOrigin()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3497
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3500
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    .line 3501
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3502
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getTags()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    return v0
.end method

.method public isBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;
    .locals 1

    .line 3051
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->bypassPolicyLockoutSafetyCheck:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setBypassPolicyLockoutSafetyCheck(Ljava/lang/Boolean;)V
    .locals 0

    .line 3163
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->bypassPolicyLockoutSafetyCheck:Ljava/lang/Boolean;

    return-void
.end method

.method public setCustomKeyStoreId(Ljava/lang/String;)V
    .locals 0

    .line 2920
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->customKeyStoreId:Ljava/lang/String;

    return-void
.end method

.method public setCustomerMasterKeySpec(Lcom/amazonaws/services/kms/model/CustomerMasterKeySpec;)V
    .locals 0

    .line 2235
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CustomerMasterKeySpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->customerMasterKeySpec:Ljava/lang/String;

    return-void
.end method

.method public setCustomerMasterKeySpec(Ljava/lang/String;)V
    .locals 0

    .line 1767
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->customerMasterKeySpec:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 894
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->description:Ljava/lang/String;

    return-void
.end method

.method public setKeyUsage(Lcom/amazonaws/services/kms/model/KeyUsageType;)V
    .locals 0

    .line 1225
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyUsageType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->keyUsage:Ljava/lang/String;

    return-void
.end method

.method public setKeyUsage(Ljava/lang/String;)V
    .locals 0

    .line 1071
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->keyUsage:Ljava/lang/String;

    return-void
.end method

.method public setOrigin(Lcom/amazonaws/services/kms/model/OriginType;)V
    .locals 0

    .line 2717
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/OriginType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->origin:Ljava/lang/String;

    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0

    .line 2591
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->origin:Ljava/lang/String;

    return-void
.end method

.method public setPolicy(Ljava/lang/String;)V
    .locals 0

    .line 728
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->policy:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/kms/model/Tag;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3327
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->tags:Ljava/util/List;

    return-void

    .line 3331
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->tags:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 3460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 3461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3462
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getPolicy()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 3463
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Policy: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3464
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3465
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Description: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3466
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getKeyUsage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3467
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "KeyUsage: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getKeyUsage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3468
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomerMasterKeySpec()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3469
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CustomerMasterKeySpec: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomerMasterKeySpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3470
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getOrigin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3471
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Origin: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getOrigin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3472
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3473
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CustomKeyStoreId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3474
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 3475
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "BypassPolicyLockoutSafetyCheck: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3477
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getTags()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 3478
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tags: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getTags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "}"

    .line 3479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3480
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withBypassPolicyLockoutSafetyCheck(Ljava/lang/Boolean;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .locals 0

    .line 3225
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->bypassPolicyLockoutSafetyCheck:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withCustomKeyStoreId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .locals 0

    .line 2994
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->customKeyStoreId:Ljava/lang/String;

    return-object p0
.end method

.method public withCustomerMasterKeySpec(Lcom/amazonaws/services/kms/model/CustomerMasterKeySpec;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .locals 0

    .line 2471
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CustomerMasterKeySpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->customerMasterKeySpec:Ljava/lang/String;

    return-object p0
.end method

.method public withCustomerMasterKeySpec(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .locals 0

    .line 2003
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->customerMasterKeySpec:Ljava/lang/String;

    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .locals 0

    .line 923
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->description:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyUsage(Lcom/amazonaws/services/kms/model/KeyUsageType;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .locals 0

    .line 1304
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyUsageType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->keyUsage:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyUsage(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .locals 0

    .line 1150
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->keyUsage:Ljava/lang/String;

    return-object p0
.end method

.method public withOrigin(Lcom/amazonaws/services/kms/model/OriginType;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .locals 0

    .line 2782
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/OriginType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->origin:Ljava/lang/String;

    return-object p0
.end method

.method public withOrigin(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .locals 0

    .line 2656
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->origin:Ljava/lang/String;

    return-object p0
.end method

.method public withPolicy(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .locals 0

    .line 845
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->policy:Ljava/lang/String;

    return-object p0
.end method

.method public withTags(Ljava/util/Collection;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/kms/model/Tag;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/CreateKeyRequest;"
        }
    .end annotation

    .line 3447
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->setTags(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withTags([Lcom/amazonaws/services/kms/model/Tag;)Lcom/amazonaws/services/kms/model/CreateKeyRequest;
    .locals 4

    .line 3386
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getTags()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3387
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->tags:Ljava/util/List;

    .line 3389
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 3390
    iget-object v3, p0, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->tags:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
