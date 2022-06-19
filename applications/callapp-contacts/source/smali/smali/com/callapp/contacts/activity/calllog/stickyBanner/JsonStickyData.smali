.class public Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private action:Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "action"
    .end annotation
.end field

.field private background:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "background"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private img:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "img"
    .end annotation
.end field

.field private needsBilling:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "needsBilling"
    .end annotation
.end field

.field private overWrite:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "overWrite"
    .end annotation
.end field

.field private subTitle:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "subTitle"
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

    .line 7
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
    check-cast p1, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;

    .line 102
    iget-boolean v2, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->overWrite:Z

    iget-boolean v3, p1, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->overWrite:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->needsBilling:Z

    iget-boolean v3, p1, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->needsBilling:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->id:Ljava/lang/String;

    .line 104
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->title:Ljava/lang/String;

    .line 105
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->subTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->subTitle:Ljava/lang/String;

    .line 106
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->action:Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;

    iget-object v3, p1, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->action:Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;

    .line 107
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->img:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->img:Ljava/lang/String;

    .line 108
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->background:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->background:Ljava/lang/String;

    .line 109
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getAction()Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->action:Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;

    return-object v0
.end method

.method public getBackground()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->background:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedBilling()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->needsBilling:Z

    return v0
.end method

.method public getOverWrite()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->overWrite:Z

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->title:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->subTitle:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->action:Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->img:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->background:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->overWrite:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->needsBilling:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAction(Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->action:Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;

    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->background:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->id:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->img:Ljava/lang/String;

    return-void
.end method

.method public setNeedBilling(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->needsBilling:Z

    return-void
.end method

.method public setOverWrite(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->overWrite:Z

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonStickyData{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->subTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", action="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->action:Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", img=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->img:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", background=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->background:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", overWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->overWrite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needsBilling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->needsBilling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
