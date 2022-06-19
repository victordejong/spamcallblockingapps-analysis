.class public Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;,
        Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler;,
        Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler;,
        Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler;,
        Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionDataSingleItem;,
        Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final allData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
            ">;"
        }
    .end annotation
.end field

.field private final sectionsDataHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData<",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 13

    .line 58
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->allData:Ljava/util/List;

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;

    .line 49
    new-instance v6, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;

    const v3, 0x7f0601ec

    const v4, 0x7f060088

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$EmailsDataHandler;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;Lit/gmariotti/cardslib/library/a/b;IILcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$1;)V

    const/4 v0, 0x0

    aput-object v6, p1, v0

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler;

    const v10, 0x7f0601ec

    const v11, 0x7f060088

    const/4 v12, 0x0

    move-object v7, v0

    move-object v8, p0

    move-object v9, p0

    invoke-direct/range {v7 .. v12}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;Lit/gmariotti/cardslib/library/a/b;IILcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$1;)V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler;

    const v1, 0x7f0601ec

    const v2, 0x7f060088

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$AddressDataHandler;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;Lit/gmariotti/cardslib/library/a/b;II)V

    const/4 v3, 0x2

    aput-object v0, p1, v3

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$WebSiteDataHandler;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;Lit/gmariotti/cardslib/library/a/b;II)V

    const/4 v1, 0x3

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->sectionsDataHandlers:Ljava/util/List;

    return-void
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method private updateCard(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->sectionsDataHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;

    .line 93
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->a()V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->allData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->sectionsDataHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;

    .line 101
    invoke-virtual {v1, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 102
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->allData:Ljava/util/List;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->allData:Ljava/util/List;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->updateCardData(Ljava/util/Collection;Z)V

    return-void
.end method


# virtual methods
.method public autoExpand()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1204a5

    .line 73
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->allData:Ljava/util/List;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->updateCard(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 87
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->showCard(Z)V

    return-void

    .line 80
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->hideCard()V

    .line 81
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 85
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
