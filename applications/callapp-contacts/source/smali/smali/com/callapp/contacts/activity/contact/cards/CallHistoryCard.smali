.class public Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;
.source "SourceFile"


# static fields
.field private static final MAX_CALL_HISTORY_ROWS:I = 0x4


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V
    .locals 2

    .line 30
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V

    .line 31
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;)V

    .line 39
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;

    const v1, 0x7f120653

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;->setFooterData(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;)V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method private getDataList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/contact/CallHistoryData;",
            ">;>;)",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 80
    new-instance v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    invoke-direct {v5}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;-><init>()V

    .line 81
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/callapp/contacts/model/contact/CallHistoryData;

    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/CallHistoryData;->getLastCallTimeStamp()Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lcom/callapp/contacts/util/date/DateUtils;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1357
    iput-object v6, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    const v6, 0x7f080339

    .line 82
    invoke-virtual {v5, v6}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(I)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    move-result-object v5

    const v6, 0x7f0601ec

    .line 1392
    iput v6, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->j:I

    if-nez v4, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    const/4 v6, 0x4

    .line 1474
    :goto_1
    iput v6, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->w:I

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v7

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/callapp/contacts/model/contact/CallHistoryData;

    invoke-virtual {v7}, Lcom/callapp/contacts/model/contact/CallHistoryData;->getDuration()J

    move-result-wide v7

    long-to-int v8, v7

    invoke-static {v8}, Lcom/callapp/contacts/util/date/DateUtils;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2372
    iput-object v6, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->g:Ljava/lang/String;

    .line 86
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/callapp/contacts/model/contact/CallHistoryData;

    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/CallHistoryData;->getCallType()I

    move-result v6

    invoke-static {v6}, Lcom/callapp/contacts/util/CallLogUtils;->getCallHistoryIcon(I)I

    move-result v6

    .line 2513
    iput v6, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->G:I

    .line 87
    invoke-virtual {v5, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(Lit/gmariotti/cardslib/library/a/b;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_1
    return-object v2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private showCallHistory(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/contact/CallHistoryData;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;->getDataList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;->updateCardData(Ljava/util/Collection;)V

    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;->showCard(Z)V

    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;->hideCard()V

    return-void
.end method


# virtual methods
.method public alignRowsWithFirstRowExpandButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

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

    .line 49
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->callHistoryData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x4b

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

    .line 64
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;->hideCard()V

    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getAllCallHistoryData()Ljava/util/ArrayList;

    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CallHistoryCard;->showCallHistory(Ljava/util/List;)V

    return-void
.end method
