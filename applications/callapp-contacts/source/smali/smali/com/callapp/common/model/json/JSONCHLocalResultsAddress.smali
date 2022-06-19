.class public Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x455dd21d699d31d2L


# instance fields
.field private city:Ljava/lang/String;

.field private full:Ljava/lang/String;

.field private house_number:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private street:Ljava/lang/String;

.field private zipcode:Ljava/lang/String;


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

    if-eqz p1, :cond_d

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_5

    .line 67
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;

    .line 69
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->state:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->state:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->state:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 70
    :cond_3
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->city:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->city:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->city:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 71
    :cond_5
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->zipcode:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->zipcode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->zipcode:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    .line 72
    :cond_7
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->street:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->street:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_8
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->street:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_3
    return v1

    .line 73
    :cond_9
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->house_number:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->house_number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    :cond_a
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->house_number:Ljava/lang/String;

    if-eqz v2, :cond_b

    :goto_4
    return v1

    .line 75
    :cond_b
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->full:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->full:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_c
    if-nez p1, :cond_d

    return v0

    :cond_d
    :goto_5
    return v1
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getFull()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->full:Ljava/lang/String;

    return-object v0
.end method

.method public getHouse_number()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->house_number:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getZipcode()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->zipcode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->state:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 82
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->city:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 83
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->zipcode:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 84
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->street:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 85
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->house_number:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 86
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->full:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->city:Ljava/lang/String;

    return-void
.end method

.method public setFull(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->full:Ljava/lang/String;

    return-void
.end method

.method public setHouse_number(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->house_number:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->state:Ljava/lang/String;

    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->street:Ljava/lang/String;

    return-void
.end method

.method public setZipcode(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalResultsAddress;->zipcode:Ljava/lang/String;

    return-void
.end method
