.class public Lcom/callapp/common/model/json/JSONMetaData;
.super Lcom/callapp/common/model/json/CallAppJSONObject;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x7f621014b6aa5392L


# instance fields
.field private accounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/common/model/json/JSONAccount;",
            ">;"
        }
    .end annotation
.end field

.field private androidId:Ljava/lang/String;

.field private carrier:Ljava/lang/String;

.field private countryISO:Ljava/lang/String;

.field private device:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private googleAdvertisingId:Ljava/lang/String;

.field private googleServiceFrameworkId:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private installedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/common/model/json/JSONInstalledApp;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

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

    if-eqz p1, :cond_1d

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_d

    .line 141
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONMetaData;

    .line 143
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->androidId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONMetaData;->androidId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONMetaData;->androidId:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 145
    :cond_3
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->googleAdvertisingId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONMetaData;->googleAdvertisingId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONMetaData;->googleAdvertisingId:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 147
    :cond_5
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->googleServiceFrameworkId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONMetaData;->googleServiceFrameworkId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONMetaData;->googleServiceFrameworkId:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    .line 149
    :cond_7
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->imei:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONMetaData;->imei:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_8
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONMetaData;->imei:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_3
    return v1

    .line 150
    :cond_9
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->osVersion:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONMetaData;->osVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    :cond_a
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONMetaData;->osVersion:Ljava/lang/String;

    if-eqz v2, :cond_b

    :goto_4
    return v1

    .line 152
    :cond_b
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->manufacturer:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONMetaData;->manufacturer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_5

    :cond_c
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONMetaData;->manufacturer:Ljava/lang/String;

    if-eqz v2, :cond_d

    :goto_5
    return v1

    .line 154
    :cond_d
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->model:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONMetaData;->model:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_6

    :cond_e
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONMetaData;->model:Ljava/lang/String;

    if-eqz v2, :cond_f

    :goto_6
    return v1

    .line 155
    :cond_f
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->device:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONMetaData;->device:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_7

    :cond_10
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONMetaData;->device:Ljava/lang/String;

    if-eqz v2, :cond_11

    :goto_7
    return v1

    .line 156
    :cond_11
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->countryISO:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONMetaData;->countryISO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_8

    :cond_12
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONMetaData;->countryISO:Ljava/lang/String;

    if-eqz v2, :cond_13

    :goto_8
    return v1

    .line 158
    :cond_13
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->installedApps:Ljava/util/ArrayList;

    if-eqz v2, :cond_14

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONMetaData;->installedApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_9

    :cond_14
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONMetaData;->installedApps:Ljava/util/ArrayList;

    if-eqz v2, :cond_15

    :goto_9
    return v1

    .line 160
    :cond_15
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->accounts:Ljava/util/ArrayList;

    if-eqz v2, :cond_16

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONMetaData;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_a

    :cond_16
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONMetaData;->accounts:Ljava/util/ArrayList;

    if-eqz v2, :cond_17

    :goto_a
    return v1

    .line 162
    :cond_17
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->carrier:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONMetaData;->carrier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_b

    :cond_18
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONMetaData;->carrier:Ljava/lang/String;

    if-eqz v2, :cond_19

    :goto_b
    return v1

    .line 163
    :cond_19
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->gender:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONMetaData;->gender:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_c

    :cond_1a
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONMetaData;->gender:Ljava/lang/String;

    if-eqz v2, :cond_1b

    :goto_c
    return v1

    .line 164
    :cond_1b
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->language:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONMetaData;->language:Ljava/lang/String;

    if-eqz v2, :cond_1c

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    if-nez p1, :cond_1d

    return v0

    :cond_1d
    :goto_d
    return v1
.end method

.method public getAccounts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/common/model/json/JSONAccount;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONMetaData;->accounts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONMetaData;->androidId:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONMetaData;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryISO()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONMetaData;->countryISO:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONMetaData;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONMetaData;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleAdvertisingId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONMetaData;->googleAdvertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleServiceFrameworkId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONMetaData;->googleServiceFrameworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONMetaData;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getInstalledApps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/common/model/json/JSONInstalledApp;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONMetaData;->installedApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONMetaData;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONMetaData;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONMetaData;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONMetaData;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONMetaData;->androidId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 170
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->googleAdvertisingId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 171
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->googleServiceFrameworkId:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 172
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->imei:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 173
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->osVersion:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 174
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->manufacturer:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 175
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->model:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 176
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->device:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 177
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->countryISO:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 178
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->installedApps:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 179
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->accounts:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 180
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->carrier:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 181
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->gender:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 182
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->language:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_d
    add-int/2addr v0, v1

    return v0
.end method

.method public setAccounts(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/common/model/json/JSONAccount;",
            ">;)V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONMetaData;->accounts:Ljava/util/ArrayList;

    return-void
.end method

.method public setAndroidId(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONMetaData;->androidId:Ljava/lang/String;

    return-void
.end method

.method public setCarrier(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONMetaData;->carrier:Ljava/lang/String;

    return-void
.end method

.method public setCountryISO(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONMetaData;->countryISO:Ljava/lang/String;

    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONMetaData;->device:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONMetaData;->gender:Ljava/lang/String;

    return-void
.end method

.method public setGoogleAdvertisingId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONMetaData;->googleAdvertisingId:Ljava/lang/String;

    return-void
.end method

.method public setGoogleServiceFrameworkId(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONMetaData;->googleServiceFrameworkId:Ljava/lang/String;

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONMetaData;->imei:Ljava/lang/String;

    return-void
.end method

.method public setInstalledApps(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/common/model/json/JSONInstalledApp;",
            ">;)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONMetaData;->installedApps:Ljava/util/ArrayList;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONMetaData;->language:Ljava/lang/String;

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONMetaData;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONMetaData;->model:Ljava/lang/String;

    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONMetaData;->osVersion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONMetaData{androidId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONMetaData;->androidId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", googleAdvertisingId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->googleAdvertisingId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", googleServiceFrameworkId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->googleServiceFrameworkId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imei=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->imei:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", osVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->osVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", manufacturer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", model=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->model:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", device=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->device:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", countryISO=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->countryISO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", installedApps="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->installedApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", accounts="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", carrier=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gender=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->gender:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", language=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONMetaData;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
