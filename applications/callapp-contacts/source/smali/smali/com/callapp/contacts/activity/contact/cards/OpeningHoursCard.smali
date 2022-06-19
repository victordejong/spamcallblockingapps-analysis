.class public Lcom/callapp/contacts/activity/contact/cards/OpeningHoursCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V

    return-void
.end method

.method private getOpeningHoursListText(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 105
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ,"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private refreshListData(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/util/List;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;-><init>()V

    const v2, 0x7f080437

    .line 57
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(I)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    move-result-object v3

    const v4, 0x7f0601ec

    .line 1392
    iput v4, v3, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->j:I

    const/4 v3, 0x0

    .line 60
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    .line 61
    invoke-static {v5}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v6

    const v7, 0x7f06001b

    if-eqz v6, :cond_0

    const v6, 0x7f120501

    .line 62
    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2357
    iput-object v6, v1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    .line 63
    invoke-direct {p0, v5}, Lcom/callapp/contacts/activity/contact/cards/OpeningHoursCard;->getOpeningHoursListText(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    .line 2372
    iput-object v5, v1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const v5, 0x7f1204ff

    .line 65
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3357
    iput-object v5, v1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    .line 3367
    iput v7, v1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->f:I

    .line 68
    :goto_0
    invoke-virtual {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(Lit/gmariotti/cardslib/library/a/b;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    const/4 v1, 0x7

    if-ge v3, v1, :cond_2

    .line 72
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    .line 73
    new-instance v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    invoke-direct {v5}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;-><init>()V

    .line 74
    invoke-virtual {v5, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(I)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    move-result-object v6

    .line 3392
    iput v4, v6, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->j:I

    const/4 v8, 0x4

    .line 3474
    iput v8, v6, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->w:I

    .line 76
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 77
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 4357
    iput-object v6, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    .line 78
    invoke-direct {p0, v1}, Lcom/callapp/contacts/activity/contact/cards/OpeningHoursCard;->getOpeningHoursListText(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    .line 4372
    iput-object v1, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->g:Ljava/lang/String;

    goto :goto_2

    .line 80
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 5357
    iput-object v1, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    const v1, 0x7f1201e6

    .line 81
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5372
    iput-object v1, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->g:Ljava/lang/String;

    .line 5382
    iput v7, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->i:I

    .line 85
    :goto_2
    invoke-virtual {v5, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(Lit/gmariotti/cardslib/library/a/b;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private updateDataFromContact(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    .line 92
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getAllWeekOpeningHours()Ljava/util/List;

    move-result-object p1

    .line 93
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/OpeningHoursCard;->refreshListData(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/OpeningHoursCard;->updateCardData(Ljava/util/Collection;)V

    const/4 p1, 0x1

    .line 96
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/OpeningHoursCard;->showCard(Z)V

    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/OpeningHoursCard;->hideCard()V

    return-void
.end method


# virtual methods
.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->openingHours:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/OpeningHoursCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/OpeningHoursCard;->updateDataFromContact(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/OpeningHoursCard;->hideCard()V

    return-void
.end method
