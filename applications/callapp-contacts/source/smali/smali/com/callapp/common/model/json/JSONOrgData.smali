.class public Lcom/callapp/common/model/json/JSONOrgData;
.super Lcom/callapp/common/model/json/CallAppJSONObject;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x48bd2c8b79480f1cL


# instance fields
.field private company:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/common/model/json/JSONOrgData;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    .line 22
    iget-object v0, p1, Lcom/callapp/common/model/json/JSONOrgData;->company:Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/common/model/json/JSONOrgData;->company:Ljava/lang/String;

    .line 23
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONOrgData;->title:Ljava/lang/String;

    iput-object p1, p0, Lcom/callapp/common/model/json/JSONOrgData;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONOrgData;->company:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/callapp/common/model/json/JSONOrgData;->title:Ljava/lang/String;

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

    .line 81
    :cond_1
    instance-of v2, p1, Lcom/callapp/common/model/json/JSONOrgData;

    if-nez v2, :cond_2

    return v1

    .line 84
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONOrgData;

    .line 85
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONOrgData;->company:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 86
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONOrgData;->company:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 89
    :cond_3
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONOrgData;->company:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 92
    :cond_4
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONOrgData;->title:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 93
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONOrgData;->title:Ljava/lang/String;

    if-eqz p1, :cond_6

    return v1

    .line 96
    :cond_5
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONOrgData;->title:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONOrgData;->company:Ljava/lang/String;

    return-object v0
.end method

.method public getFullOrgData()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONOrgData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONOrgData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONOrgData;->getCompany()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, " @ "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONOrgData;->getCompany()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONOrgData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONOrgData;->company:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONOrgData;->title:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONOrgData;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callapp/common/model/json/JSONOrgData;->company:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONOrgData;->company:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONOrgData;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONOrgData{title=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONOrgData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", company=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONOrgData;->company:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
