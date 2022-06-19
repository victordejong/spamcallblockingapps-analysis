.class public Lcom/callapp/common/model/json/JSONRegistrationResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x9fe22d0144ea44eL


# instance fields
.field private token:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONRegistrationResponse;->userId:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/callapp/common/model/json/JSONRegistrationResponse;->token:Ljava/lang/String;

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

    .line 51
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 53
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONRegistrationResponse;

    .line 54
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONRegistrationResponse;->token:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 55
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONRegistrationResponse;->token:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 57
    :cond_3
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONRegistrationResponse;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 59
    :cond_4
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONRegistrationResponse;->userId:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 60
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONRegistrationResponse;->userId:Ljava/lang/String;

    if-eqz p1, :cond_6

    return v1

    .line 62
    :cond_5
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONRegistrationResponse;->userId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONRegistrationResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONRegistrationResponse;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONRegistrationResponse;->token:Ljava/lang/String;

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

    .line 41
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONRegistrationResponse;->userId:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONRegistrationResponse;->token:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONRegistrationResponse;->userId:Ljava/lang/String;

    return-void
.end method
