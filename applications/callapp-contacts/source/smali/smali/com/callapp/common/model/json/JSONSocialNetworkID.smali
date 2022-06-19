.class public Lcom/callapp/common/model/json/JSONSocialNetworkID;
.super Lcom/callapp/common/model/json/CallAppJSONObject;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x2958bff68aa9db06L


# instance fields
.field private id:Ljava/lang/String;

.field private sure:Z

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/callapp/common/model/json/JSONSocialNetworkID;->version:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/callapp/common/model/json/JSONSocialNetworkID;->version:I

    .line 15
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONSocialNetworkID;->id:Ljava/lang/String;

    .line 16
    iput-boolean p2, p0, Lcom/callapp/common/model/json/JSONSocialNetworkID;->sure:Z

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

    .line 62
    :cond_1
    instance-of v2, p1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-nez v2, :cond_2

    return v1

    .line 64
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    .line 65
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONSocialNetworkID;->id:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 66
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONSocialNetworkID;->id:Ljava/lang/String;

    if-eqz p1, :cond_4

    return v1

    .line 68
    :cond_3
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONSocialNetworkID;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONSocialNetworkID;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/callapp/common/model/json/JSONSocialNetworkID;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONSocialNetworkID;->id:Ljava/lang/String;

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

.method public isSure()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/callapp/common/model/json/JSONSocialNetworkID;->sure:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONSocialNetworkID;->id:Ljava/lang/String;

    return-void
.end method

.method public setSure(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/callapp/common/model/json/JSONSocialNetworkID;->sure:Z

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/callapp/common/model/json/JSONSocialNetworkID;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONSocialNetworkID [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONSocialNetworkID;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/common/model/json/JSONSocialNetworkID;->sure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/common/model/json/JSONSocialNetworkID;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
