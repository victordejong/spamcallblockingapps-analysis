.class public Lcom/callapp/common/model/json/JSONCategory;
.super Lcom/callapp/common/model/json/CallAppJSONObject;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x750a37b41c419321L


# instance fields
.field private name:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/common/model/json/JSONCategory;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    .line 21
    iget-object v0, p1, Lcom/callapp/common/model/json/JSONCategory;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/common/model/json/JSONCategory;->name:Ljava/lang/String;

    .line 22
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONCategory;->url:Ljava/lang/String;

    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCategory;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCategory;->name:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/callapp/common/model/json/JSONCategory;->url:Ljava/lang/String;

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

    .line 58
    :cond_1
    instance-of v2, p1, Lcom/callapp/common/model/json/JSONCategory;

    if-nez v2, :cond_2

    return v1

    .line 61
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONCategory;

    .line 62
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCategory;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 63
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCategory;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 66
    :cond_3
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCategory;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 69
    :cond_4
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCategory;->url:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 70
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONCategory;->url:Ljava/lang/String;

    if-eqz p1, :cond_6

    return v1

    .line 73
    :cond_5
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONCategory;->url:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCategory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCategory;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCategory;->name:Ljava/lang/String;

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

    .line 46
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCategory;->url:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCategory;->name:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCategory;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONCategory{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONCategory;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCategory;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
