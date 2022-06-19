.class public Lcom/callapp/common/model/json/JSONXingUserCompany;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x22c5f01073f4c665L


# instance fields
.field private begin_date:Ljava/lang/String;

.field private career_level:Ljava/lang/String;

.field private company_size:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private end_date:Ljava/lang/String;

.field private industry:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


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

    .line 122
    :cond_1
    instance-of v2, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;

    if-nez v2, :cond_2

    return v1

    .line 124
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONXingUserCompany;

    .line 125
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->begin_date:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 126
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;->begin_date:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 128
    :cond_3
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;->begin_date:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 130
    :cond_4
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->career_level:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 131
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;->career_level:Ljava/lang/String;

    if-eqz v2, :cond_6

    return v1

    .line 133
    :cond_5
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;->career_level:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 135
    :cond_6
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->company_size:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 136
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;->company_size:Ljava/lang/String;

    if-eqz v2, :cond_8

    return v1

    .line 138
    :cond_7
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;->company_size:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 140
    :cond_8
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->description:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 141
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;->description:Ljava/lang/String;

    if-eqz v2, :cond_a

    return v1

    .line 143
    :cond_9
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 145
    :cond_a
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->end_date:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 146
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;->end_date:Ljava/lang/String;

    if-eqz v2, :cond_c

    return v1

    .line 148
    :cond_b
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;->end_date:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 150
    :cond_c
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->industry:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 151
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;->industry:Ljava/lang/String;

    if-eqz v2, :cond_e

    return v1

    .line 153
    :cond_d
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;->industry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 155
    :cond_e
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->name:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 156
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;->name:Ljava/lang/String;

    if-eqz v2, :cond_10

    return v1

    .line 158
    :cond_f
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 160
    :cond_10
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->tag:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 161
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;->tag:Ljava/lang/String;

    if-eqz v2, :cond_12

    return v1

    .line 163
    :cond_11
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 165
    :cond_12
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->title:Ljava/lang/String;

    if-nez v2, :cond_13

    .line 166
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;->title:Ljava/lang/String;

    if-eqz v2, :cond_14

    return v1

    .line 168
    :cond_13
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    return v1

    .line 170
    :cond_14
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->url:Ljava/lang/String;

    if-nez v2, :cond_15

    .line 171
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;->url:Ljava/lang/String;

    if-eqz p1, :cond_16

    return v1

    .line 173
    :cond_15
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONXingUserCompany;->url:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    :cond_16
    return v0
.end method

.method public getBegin_date()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->begin_date:Ljava/lang/String;

    return-object v0
.end method

.method public getCareer_level()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->career_level:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany_size()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->company_size:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd_date()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->end_date:Ljava/lang/String;

    return-object v0
.end method

.method public getIndustry()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->industry:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->begin_date:Ljava/lang/String;

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

    .line 104
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->career_level:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->company_size:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 106
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->description:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 107
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->end_date:Ljava/lang/String;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 108
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->industry:Ljava/lang/String;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->name:Ljava/lang/String;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 110
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->tag:Ljava/lang/String;

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->title:Ljava/lang/String;

    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 112
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->url:Ljava/lang/String;

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    return v0
.end method

.method public setBegin_date(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->begin_date:Ljava/lang/String;

    return-void
.end method

.method public setCareer_level(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->career_level:Ljava/lang/String;

    return-void
.end method

.method public setCompany_size(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->company_size:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->description:Ljava/lang/String;

    return-void
.end method

.method public setEnd_date(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->end_date:Ljava/lang/String;

    return-void
.end method

.method public setIndustry(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->industry:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->name:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingUserCompany;->url:Ljava/lang/String;

    return-void
.end method
