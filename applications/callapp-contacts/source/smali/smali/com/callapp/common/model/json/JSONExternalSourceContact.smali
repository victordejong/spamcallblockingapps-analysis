.class public Lcom/callapp/common/model/json/JSONExternalSourceContact;
.super Lcom/callapp/common/model/json/JSONContact;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x53cfe2f8c6764d62L


# instance fields
.field private externalSourceId:I

.field private identifier:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/callapp/common/model/json/JSONContact;-><init>()V

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

    if-eqz p1, :cond_7

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 39
    :cond_1
    invoke-super {p0, p1}, Lcom/callapp/common/model/json/JSONContact;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 41
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONExternalSourceContact;

    .line 43
    iget v2, p0, Lcom/callapp/common/model/json/JSONExternalSourceContact;->externalSourceId:I

    iget v3, p1, Lcom/callapp/common/model/json/JSONExternalSourceContact;->externalSourceId:I

    if-eq v2, v3, :cond_3

    return v1

    .line 44
    :cond_3
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONExternalSourceContact;->key:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONExternalSourceContact;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONExternalSourceContact;->key:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_0
    return v1

    .line 45
    :cond_5
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONExternalSourceContact;->identifier:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONExternalSourceContact;->identifier:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    if-nez p1, :cond_7

    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method public getExternalSourceId()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/callapp/common/model/json/JSONExternalSourceContact;->externalSourceId:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONExternalSourceContact;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONExternalSourceContact;->key:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 50
    invoke-super {p0}, Lcom/callapp/common/model/json/JSONContact;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 51
    iget v1, p0, Lcom/callapp/common/model/json/JSONExternalSourceContact;->externalSourceId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 52
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONExternalSourceContact;->key:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 53
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONExternalSourceContact;->identifier:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public setExternalSourceId(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/callapp/common/model/json/JSONExternalSourceContact;->externalSourceId:I

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONExternalSourceContact;->identifier:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONExternalSourceContact;->key:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONExternalSourceContact{externalSourceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/callapp/common/model/json/JSONExternalSourceContact;->externalSourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONExternalSourceContact;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", identifier=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONExternalSourceContact;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
