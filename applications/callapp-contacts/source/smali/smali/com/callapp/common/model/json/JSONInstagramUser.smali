.class public Lcom/callapp/common/model/json/JSONInstagramUser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1264e30f4ac6b67fL


# instance fields
.field private bio:Ljava/lang/String;

.field private counts:Lcom/callapp/common/model/json/JSONInstagramCounts;

.field private full_name:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private profile_picture:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private website:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
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

    .line 90
    :cond_1
    instance-of v2, p1, Lcom/callapp/common/model/json/JSONInstagramUser;

    if-nez v2, :cond_2

    return v1

    .line 92
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONInstagramUser;

    .line 93
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstagramUser;->id:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 94
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONInstagramUser;->id:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 96
    :cond_3
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONInstagramUser;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 98
    :cond_4
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstagramUser;->username:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 99
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONInstagramUser;->username:Ljava/lang/String;

    if-eqz p1, :cond_6

    return v1

    .line 101
    :cond_5
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONInstagramUser;->username:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getBio()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramUser;->bio:Ljava/lang/String;

    return-object v0
.end method

.method public getCounts()Lcom/callapp/common/model/json/JSONInstagramCounts;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramUser;->counts:Lcom/callapp/common/model/json/JSONInstagramCounts;

    return-object v0
.end method

.method public getFull_name()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramUser;->full_name:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramUser;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile_picture()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramUser;->profile_picture:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramUser;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramUser;->website:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramUser;->id:Ljava/lang/String;

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

    .line 80
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstagramUser;->username:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setBio(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstagramUser;->bio:Ljava/lang/String;

    return-void
.end method

.method public setCounts(Lcom/callapp/common/model/json/JSONInstagramCounts;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstagramUser;->counts:Lcom/callapp/common/model/json/JSONInstagramCounts;

    return-void
.end method

.method public setFull_name(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstagramUser;->full_name:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstagramUser;->id:Ljava/lang/String;

    return-void
.end method

.method public setProfile_picture(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstagramUser;->profile_picture:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstagramUser;->username:Ljava/lang/String;

    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstagramUser;->website:Ljava/lang/String;

    return-void
.end method
