.class public Lcom/callapp/common/model/json/JSONXingCompactUser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7e84adaa5bcc8c61L


# instance fields
.field private active_email:Ljava/lang/String;

.field private business_address:Lcom/callapp/common/model/json/JSONXingAddress;

.field private display_name:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private permalink:Ljava/lang/String;

.field private photo_urls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private private_address:Lcom/callapp/common/model/json/JSONXingAddress;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
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

    .line 105
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 107
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONXingCompactUser;

    .line 108
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->active_email:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 109
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingCompactUser;->active_email:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 111
    :cond_3
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingCompactUser;->active_email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 113
    :cond_4
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->business_address:Lcom/callapp/common/model/json/JSONXingAddress;

    if-nez v2, :cond_5

    .line 114
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingCompactUser;->business_address:Lcom/callapp/common/model/json/JSONXingAddress;

    if-eqz v2, :cond_6

    return v1

    .line 116
    :cond_5
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingCompactUser;->business_address:Lcom/callapp/common/model/json/JSONXingAddress;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONXingAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 118
    :cond_6
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->display_name:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 119
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingCompactUser;->display_name:Ljava/lang/String;

    if-eqz v2, :cond_8

    return v1

    .line 121
    :cond_7
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingCompactUser;->display_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 123
    :cond_8
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->id:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 124
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingCompactUser;->id:Ljava/lang/String;

    if-eqz v2, :cond_a

    return v1

    .line 126
    :cond_9
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingCompactUser;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 128
    :cond_a
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->permalink:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 129
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingCompactUser;->permalink:Ljava/lang/String;

    if-eqz v2, :cond_c

    return v1

    .line 131
    :cond_b
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingCompactUser;->permalink:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 133
    :cond_c
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->photo_urls:Ljava/util/Map;

    if-nez v2, :cond_d

    .line 134
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingCompactUser;->photo_urls:Ljava/util/Map;

    if-eqz v2, :cond_e

    return v1

    .line 136
    :cond_d
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingCompactUser;->photo_urls:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 138
    :cond_e
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->private_address:Lcom/callapp/common/model/json/JSONXingAddress;

    if-nez v2, :cond_f

    .line 139
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONXingCompactUser;->private_address:Lcom/callapp/common/model/json/JSONXingAddress;

    if-eqz p1, :cond_10

    return v1

    .line 141
    :cond_f
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONXingCompactUser;->private_address:Lcom/callapp/common/model/json/JSONXingAddress;

    invoke-virtual {v2, p1}, Lcom/callapp/common/model/json/JSONXingAddress;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v1

    :cond_10
    return v0
.end method

.method public getActive_email()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->active_email:Ljava/lang/String;

    return-object v0
.end method

.method public getBusiness_address()Lcom/callapp/common/model/json/JSONXingAddress;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->business_address:Lcom/callapp/common/model/json/JSONXingAddress;

    return-object v0
.end method

.method public getDisplay_name()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->display_name:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPermalink()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->permalink:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->photo_urls:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "size_1024x1024"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoto_urls()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->photo_urls:Ljava/util/Map;

    return-object v0
.end method

.method public getPrivate_address()Lcom/callapp/common/model/json/JSONXingAddress;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->private_address:Lcom/callapp/common/model/json/JSONXingAddress;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->photo_urls:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "size_128x128"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->active_email:Ljava/lang/String;

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

    .line 90
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->business_address:Lcom/callapp/common/model/json/JSONXingAddress;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONXingAddress;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 91
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->display_name:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 92
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->id:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 93
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->permalink:Ljava/lang/String;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 94
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->photo_urls:Ljava/util/Map;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 95
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->private_address:Lcom/callapp/common/model/json/JSONXingAddress;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONXingAddress;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    return v0
.end method

.method public setActive_email(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->active_email:Ljava/lang/String;

    return-void
.end method

.method public setBusiness_address(Lcom/callapp/common/model/json/JSONXingAddress;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->business_address:Lcom/callapp/common/model/json/JSONXingAddress;

    return-void
.end method

.method public setDisplay_name(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->display_name:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->id:Ljava/lang/String;

    return-void
.end method

.method public setPermalink(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->permalink:Ljava/lang/String;

    return-void
.end method

.method public setPhoto_urls(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->photo_urls:Ljava/util/Map;

    return-void
.end method

.method public setPrivate_address(Lcom/callapp/common/model/json/JSONXingAddress;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingCompactUser;->private_address:Lcom/callapp/common/model/json/JSONXingAddress;

    return-void
.end method
