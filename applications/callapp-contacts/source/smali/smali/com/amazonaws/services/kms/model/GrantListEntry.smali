.class public Lcom/amazonaws/services/kms/model/GrantListEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private constraints:Lcom/amazonaws/services/kms/model/GrantConstraints;

.field private creationDate:Ljava/util/Date;

.field private grantId:Ljava/lang/String;

.field private granteePrincipal:Ljava/lang/String;

.field private issuingAccount:Ljava/lang/String;

.field private keyId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private retiringPrincipal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->operations:Ljava/util/List;

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

    .line 775
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/GrantListEntry;

    if-nez v2, :cond_2

    return v1

    .line 777
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/GrantListEntry;

    .line 779
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getKeyId()Ljava/lang/String;

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

    .line 781
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 783
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGrantId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGrantId()Ljava/lang/String;

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

    .line 785
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGrantId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGrantId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGrantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 787
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getName()Ljava/lang/String;

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

    .line 789
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 791
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getCreationDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getCreationDate()Ljava/util/Date;

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

    .line 793
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getCreationDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 794
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getCreationDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getCreationDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 796
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGranteePrincipal()Ljava/lang/String;

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

    .line 798
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 799
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 801
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getRetiringPrincipal()Ljava/lang/String;

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

    .line 803
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 804
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 806
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getIssuingAccount()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_c

    :cond_1b
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getIssuingAccount()Ljava/lang/String;

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

    .line 808
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getIssuingAccount()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 809
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getIssuingAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getIssuingAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 811
    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_e

    :cond_1f
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

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

    .line 813
    :cond_21
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 814
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 816
    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v2

    if-nez v2, :cond_23

    const/4 v2, 0x1

    goto :goto_10

    :cond_23
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

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

    .line 818
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 819
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/kms/model/GrantConstraints;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    return v1

    :cond_26
    return v0
.end method

.method public getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->constraints:Lcom/amazonaws/services/kms/model/GrantConstraints;

    return-object v0
.end method

.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->creationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getGrantId()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->grantId:Ljava/lang/String;

    return-object v0
.end method

.method public getGranteePrincipal()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->granteePrincipal:Ljava/lang/String;

    return-object v0
.end method

.method public getIssuingAccount()Ljava/lang/String;
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->issuingAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOperations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->operations:Ljava/util/List;

    return-object v0
.end method

.method public getRetiringPrincipal()Ljava/lang/String;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->retiringPrincipal:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 751
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getKeyId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getKeyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 752
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGrantId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGrantId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 753
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 755
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getCreationDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getCreationDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 757
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 759
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 761
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getIssuingAccount()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getIssuingAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 762
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 764
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/kms/model/GrantConstraints;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    return v0
.end method

.method public setConstraints(Lcom/amazonaws/services/kms/model/GrantConstraints;)V
    .locals 0

    .line 688
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->constraints:Lcom/amazonaws/services/kms/model/GrantConstraints;

    return-void
.end method

.method public setCreationDate(Ljava/util/Date;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->creationDate:Ljava/util/Date;

    return-void
.end method

.method public setGrantId(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->grantId:Ljava/lang/String;

    return-void
.end method

.method public setGranteePrincipal(Ljava/lang/String;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->granteePrincipal:Ljava/lang/String;

    return-void
.end method

.method public setIssuingAccount(Ljava/lang/String;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->issuingAccount:Ljava/lang/String;

    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public setOperations(Ljava/util/Collection;)V
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

    .line 610
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->operations:Ljava/util/List;

    return-void

    .line 614
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->operations:Ljava/util/List;

    return-void
.end method

.method public setRetiringPrincipal(Ljava/lang/String;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->retiringPrincipal:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 723
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getKeyId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "KeyId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGrantId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "GrantId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGrantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Name: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getCreationDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CreationDate: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getCreationDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "GranteePrincipal: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getGranteePrincipal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "RetiringPrincipal: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getRetiringPrincipal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getIssuingAccount()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "IssuingAccount: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getIssuingAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Operations: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Constraints: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getConstraints()Lcom/amazonaws/services/kms/model/GrantConstraints;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "}"

    .line 742
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withConstraints(Lcom/amazonaws/services/kms/model/GrantConstraints;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->constraints:Lcom/amazonaws/services/kms/model/GrantConstraints;

    return-object p0
.end method

.method public withCreationDate(Ljava/util/Date;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->creationDate:Ljava/util/Date;

    return-object p0
.end method

.method public withGrantId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->grantId:Ljava/lang/String;

    return-object p0
.end method

.method public withGranteePrincipal(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->granteePrincipal:Ljava/lang/String;

    return-object p0
.end method

.method public withIssuingAccount(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->issuingAccount:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->name:Ljava/lang/String;

    return-object p0
.end method

.method public withOperations(Ljava/util/Collection;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/GrantListEntry;"
        }
    .end annotation

    .line 656
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/GrantListEntry;->setOperations(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withOperations([Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .locals 4

    .line 632
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantListEntry;->getOperations()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->operations:Ljava/util/List;

    .line 635
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 636
    iget-object v3, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->operations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withRetiringPrincipal(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantListEntry;
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantListEntry;->retiringPrincipal:Ljava/lang/String;

    return-object p0
.end method
