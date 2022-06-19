.class public Lcom/callapp/common/model/json/JSONClientConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x68270224a3a6667eL


# instance fields
.field private apkOrigin:Ljava/lang/String;

.field private callAppVersion:I

.field private callappPlus:Z

.field private density:I

.field private encodedDeviceId:Ljava/lang/String;

.field private hasTelephony:Z

.field private height:I

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private osVersion:I

.field private phoneNumber:Ljava/lang/String;

.field private setupCompleted:Z

.field private width:I


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

    if-eqz p1, :cond_c

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 121
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONClientConfiguration;

    .line 123
    iget v2, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->callAppVersion:I

    iget v3, p1, Lcom/callapp/common/model/json/JSONClientConfiguration;->callAppVersion:I

    if-eq v2, v3, :cond_2

    return v1

    .line 126
    :cond_2
    iget v2, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->density:I

    iget v3, p1, Lcom/callapp/common/model/json/JSONClientConfiguration;->density:I

    if-eq v2, v3, :cond_3

    return v1

    .line 129
    :cond_3
    iget-boolean v2, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->hasTelephony:Z

    iget-boolean v3, p1, Lcom/callapp/common/model/json/JSONClientConfiguration;->hasTelephony:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 132
    :cond_4
    iget v2, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->height:I

    iget v3, p1, Lcom/callapp/common/model/json/JSONClientConfiguration;->height:I

    if-eq v2, v3, :cond_5

    return v1

    .line 135
    :cond_5
    iget v2, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->osVersion:I

    iget v3, p1, Lcom/callapp/common/model/json/JSONClientConfiguration;->osVersion:I

    if-eq v2, v3, :cond_6

    return v1

    .line 138
    :cond_6
    iget v2, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->width:I

    iget v3, p1, Lcom/callapp/common/model/json/JSONClientConfiguration;->width:I

    if-eq v2, v3, :cond_7

    return v1

    .line 141
    :cond_7
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->manufacturer:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONClientConfiguration;->manufacturer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONClientConfiguration;->manufacturer:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_0
    return v1

    .line 144
    :cond_9
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->model:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONClientConfiguration;->model:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_1

    :cond_a
    if-eqz p1, :cond_b

    :goto_1
    return v1

    :cond_b
    return v0

    :cond_c
    :goto_2
    return v1
.end method

.method public getApkOrigin()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->apkOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getCallAppVersion()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->callAppVersion:I

    return v0
.end method

.method public getDensity()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->density:I

    return v0
.end method

.method public getEncodedDeviceId()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->encodedDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->height:I

    return v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->osVersion:I

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->manufacturer:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 154
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->model:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 155
    iget v1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->osVersion:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 156
    iget v1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 157
    iget v1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 158
    iget v1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->callAppVersion:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 159
    iget v1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->density:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 160
    iget-boolean v1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->hasTelephony:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isCallappPlus()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->callappPlus:Z

    return v0
.end method

.method public isHasTelephony()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->hasTelephony:Z

    return v0
.end method

.method public isSetupCompleted()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->setupCompleted:Z

    return v0
.end method

.method public setApkOrigin(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->apkOrigin:Ljava/lang/String;

    return-void
.end method

.method public setCallAppVersion(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->callAppVersion:I

    return-void
.end method

.method public setCallappPlus(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->callappPlus:Z

    return-void
.end method

.method public setDensity(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->density:I

    return-void
.end method

.method public setEncodedDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->encodedDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setHasTelephony(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->hasTelephony:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->height:I

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->model:Ljava/lang/String;

    return-void
.end method

.method public setOsVersion(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->osVersion:I

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setSetupCompleted(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->setupCompleted:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->encodedDeviceId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->manufacturer:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->model:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->hasTelephony:Z

    .line 167
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->density:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->osVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->callAppVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONClientConfiguration;->apkOrigin:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "DeviceId: %s Manufacturer: %s  Model: %s  hasTelephony: %s  Width: %d  Height: %d  Density: %d  Android OS Version: %d  Client Version: %s APK origin: %s"

    .line 166
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
