.class public Lcom/callapp/common/model/json/JSONAWSSessionCredentials;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x322c352232292fd8L


# instance fields
.field private accessKey:Ljava/lang/String;

.field private secretKey:Ljava/lang/String;

.field private sessionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->accessKey:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->secretKey:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->sessionToken:Ljava/lang/String;

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

    if-eqz p1, :cond_8

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 51
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;

    .line 53
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->accessKey:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->accessKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->accessKey:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 55
    :cond_3
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->secretKey:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->secretKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->secretKey:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 57
    :cond_5
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->sessionToken:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->sessionToken:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    :goto_2
    return v1

    :cond_7
    return v0

    :cond_8
    :goto_3
    return v1
.end method

.method public getAccessKey()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->accessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->accessKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 66
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->secretKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->sessionToken:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->accessKey:Ljava/lang/String;

    return-void
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->secretKey:Ljava/lang/String;

    return-void
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->sessionToken:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONAWSSessionCredentials{accessKey=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->accessKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", secretKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->secretKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sessionToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONAWSSessionCredentials;->sessionToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
