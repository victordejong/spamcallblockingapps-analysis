.class public Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private credentials:Lcom/amazonaws/services/securitytoken/model/Credentials;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
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

    .line 171
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;

    if-nez v2, :cond_2

    return v1

    .line 173
    :cond_2
    check-cast p1, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;

    .line 175
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    return v1

    .line 177
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 178
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/securitytoken/model/Credentials;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;->credentials:Lcom/amazonaws/services/securitytoken/model/Credentials;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/Credentials;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public setCredentials(Lcom/amazonaws/services/securitytoken/model/Credentials;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;->credentials:Lcom/amazonaws/services/securitytoken/model/Credentials;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Credentials: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "}"

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCredentials(Lcom/amazonaws/services/securitytoken/model/Credentials;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;->credentials:Lcom/amazonaws/services/securitytoken/model/Credentials;

    return-object p0
.end method
