.class public Lcom/callapp/common/model/json/JSONReferAndEarnRewards;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4631aeaa20a67a7cL


# instance fields
.field private image:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "image"
    .end annotation
.end field

.field private isChecked:Z

.field private isMilestone:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "isMilestone"
    .end annotation
.end field

.field private key:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "key"
    .end annotation
.end field

.field private sku:[Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sku"
    .end annotation
.end field

.field private subtitle:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "subtitle"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerialVersionUID()J
    .locals 2

    const-wide v0, -0x4631aeaa20a67a7cL    # -2.989557666194752E-30

    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;

    .line 102
    iget v2, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->key:I

    iget v3, p1, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->key:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->isMilestone:Z

    iget-boolean v3, p1, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->isMilestone:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->title:Ljava/lang/String;

    .line 104
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->subtitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->subtitle:Ljava/lang/String;

    .line 105
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->image:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->image:Ljava/lang/String;

    .line 106
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->sku:[Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->sku:[Ljava/lang/String;

    .line 107
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->key:I

    return v0
.end method

.method public getSku()[Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->sku:[Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 112
    iget v1, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->key:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->title:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->subtitle:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->image:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->isMilestone:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 113
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->sku:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->isChecked:Z

    return v0
.end method

.method public isMilestone()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->isMilestone:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->isChecked:Z

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->image:Ljava/lang/String;

    return-void
.end method

.method public setKey(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->key:I

    return-void
.end method

.method public setMilestone(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->isMilestone:Z

    return-void
.end method

.method public setSku([Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->sku:[Ljava/lang/String;

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONReferAndEarnRewards{key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->key:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subtitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->subtitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", image=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->image:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", sku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->sku:[Ljava/lang/String;

    .line 124
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isMilestone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->isMilestone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
