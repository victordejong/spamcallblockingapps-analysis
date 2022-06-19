.class public Lcom/callapp/common/model/json/JSONXingAddress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xfd760dc6d89d982L


# instance fields
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private fax:Ljava/lang/String;

.field private mobile_phone:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private street:Ljava/lang/String;

.field private zip_code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 112
    :cond_1
    instance-of v2, p1, Lcom/callapp/common/model/json/JSONXingAddress;

    if-nez v2, :cond_2

    return v1

    .line 114
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONXingAddress;

    .line 115
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingAddress;->city:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 116
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingAddress;->city:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 118
    :cond_3
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingAddress;->city:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 120
    :cond_4
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingAddress;->country:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 121
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingAddress;->country:Ljava/lang/String;

    if-eqz v2, :cond_6

    return v1

    .line 123
    :cond_5
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingAddress;->country:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 125
    :cond_6
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingAddress;->email:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 126
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingAddress;->email:Ljava/lang/String;

    if-eqz v2, :cond_8

    return v1

    .line 128
    :cond_7
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingAddress;->email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 130
    :cond_8
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingAddress;->fax:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 131
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingAddress;->fax:Ljava/lang/String;

    if-eqz v2, :cond_a

    return v1

    .line 133
    :cond_9
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingAddress;->fax:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 135
    :cond_a
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingAddress;->mobile_phone:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 136
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingAddress;->mobile_phone:Ljava/lang/String;

    if-eqz v2, :cond_c

    return v1

    .line 138
    :cond_b
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingAddress;->mobile_phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 140
    :cond_c
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingAddress;->phone:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 141
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingAddress;->phone:Ljava/lang/String;

    if-eqz v2, :cond_e

    return v1

    .line 143
    :cond_d
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingAddress;->phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 145
    :cond_e
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingAddress;->province:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 146
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingAddress;->province:Ljava/lang/String;

    if-eqz v2, :cond_10

    return v1

    .line 148
    :cond_f
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingAddress;->province:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 150
    :cond_10
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingAddress;->street:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 151
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingAddress;->street:Ljava/lang/String;

    if-eqz v2, :cond_12

    return v1

    .line 153
    :cond_11
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingAddress;->street:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 155
    :cond_12
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingAddress;->zip_code:Ljava/lang/String;

    if-nez v2, :cond_13

    .line 156
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONXingAddress;->zip_code:Ljava/lang/String;

    if-eqz p1, :cond_14

    return v1

    .line 158
    :cond_13
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONXingAddress;->zip_code:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    return v1

    :cond_14
    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingAddress;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingAddress;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingAddress;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFax()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingAddress;->fax:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile_phone()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingAddress;->mobile_phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingAddress;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingAddress;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingAddress;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getZip_code()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingAddress;->zip_code:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingAddress;->city:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 95
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingAddress;->country:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 96
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingAddress;->email:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 97
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingAddress;->fax:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 98
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingAddress;->mobile_phone:Ljava/lang/String;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 99
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingAddress;->phone:Ljava/lang/String;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 100
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingAddress;->province:Ljava/lang/String;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 101
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingAddress;->street:Ljava/lang/String;

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 102
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingAddress;->zip_code:Ljava/lang/String;

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    return v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingAddress;->city:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingAddress;->country:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingAddress;->email:Ljava/lang/String;

    return-void
.end method

.method public setFax(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingAddress;->fax:Ljava/lang/String;

    return-void
.end method

.method public setMobile_phone(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingAddress;->mobile_phone:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingAddress;->phone:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingAddress;->province:Ljava/lang/String;

    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingAddress;->street:Ljava/lang/String;

    return-void
.end method

.method public setZip_code(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingAddress;->zip_code:Ljava/lang/String;

    return-void
.end method
