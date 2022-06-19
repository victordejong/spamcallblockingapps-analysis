.class public Lcom/callapp/common/model/json/JSONFBEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xfecea0f6aad8e47L


# instance fields
.field private formattedBirthday:Lcom/callapp/common/model/json/JSONDate;

.field private gender:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private profileImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/common/model/json/JSONDate;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBEntity;->id:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/callapp/common/model/json/JSONFBEntity;->name:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/callapp/common/model/json/JSONFBEntity;->formattedBirthday:Lcom/callapp/common/model/json/JSONDate;

    .line 23
    iput-object p4, p0, Lcom/callapp/common/model/json/JSONFBEntity;->link:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/callapp/common/model/json/JSONFBEntity;->profileImageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 81
    :cond_1
    instance-of v2, p1, Lcom/callapp/common/model/json/JSONFBEntity;

    if-nez v2, :cond_2

    return v1

    .line 83
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONFBEntity;

    .line 84
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONFBEntity;->id:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 85
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONFBEntity;->id:Ljava/lang/String;

    if-eqz p1, :cond_4

    return v1

    .line 87
    :cond_3
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONFBEntity;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getFormattedBirthday()Lcom/callapp/common/model/json/JSONDate;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBEntity;->formattedBirthday:Lcom/callapp/common/model/json/JSONDate;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBEntity;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBEntity;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBEntity;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBEntity;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public setFormattedBirthday(Lcom/callapp/common/model/json/JSONDate;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBEntity;->formattedBirthday:Lcom/callapp/common/model/json/JSONDate;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBEntity;->id:Ljava/lang/String;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBEntity;->link:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBEntity;->phone:Ljava/lang/String;

    return-void
.end method

.method public setProfileImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBEntity;->profileImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBEntity;->id:Ljava/lang/String;

    return-void
.end method
