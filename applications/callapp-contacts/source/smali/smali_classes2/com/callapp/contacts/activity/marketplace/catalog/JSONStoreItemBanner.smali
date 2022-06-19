.class public Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;
.super Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;
.source "SourceFile"


# instance fields
.field private actionColor:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "actionColor"
    .end annotation
.end field

.field private hideIfPremium:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "hideIfPremium"
    .end annotation
.end field

.field private textActionColor:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "textActionColor"
    .end annotation
.end field

.field private textColor:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "textColor"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 60
    :cond_2
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;

    .line 62
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->textColor:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->textColor:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 64
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->actionColor:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->actionColor:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 66
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->textActionColor:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->textActionColor:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public getActionColor()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->actionColor:Ljava/lang/String;

    return-object v0
.end method

.method public getHideIfPremium()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->hideIfPremium:Z

    return v0
.end method

.method public getTextActionColor()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->textActionColor:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->textColor:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 71
    invoke-super {p0}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 72
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->textColor:Ljava/lang/String;

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

    .line 73
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->actionColor:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->textActionColor:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public setActionColor(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->actionColor:Ljava/lang/String;

    return-void
.end method

.method public setHideIfPremium(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->hideIfPremium:Z

    return-void
.end method

.method public setTextActionColor(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->textActionColor:Ljava/lang/String;

    return-void
.end method

.method public setTextColor(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->textColor:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONStoreItemBanner{textColor=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->textColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", actionColor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->actionColor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", textActionColor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->textActionColor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
