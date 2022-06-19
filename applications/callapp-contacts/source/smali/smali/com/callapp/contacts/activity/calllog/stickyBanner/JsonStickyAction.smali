.class public Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private actionText:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "actionText"
    .end annotation
.end field

.field private cta:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cta"
    .end annotation
.end field

.field private newCta:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "newCta"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setCta(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->cta:Ljava/lang/String;

    return-void
.end method

.method private setNewCta(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->newCta:Ljava/lang/String;

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

    if-eqz p1, :cond_3

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    check-cast p1, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;

    .line 46
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->actionText:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->actionText:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->cta:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->cta:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public getActionText()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->actionText:Ljava/lang/String;

    return-object v0
.end method

.method public getCta()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->newCta:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->newCta:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->cta:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->actionText:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->cta:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setActionText(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->actionText:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonStickyAction{actionText=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->actionText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cta=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->cta:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
