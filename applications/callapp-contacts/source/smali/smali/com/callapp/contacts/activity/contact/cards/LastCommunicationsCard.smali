.class public Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;
.source "SourceFile"


# instance fields
.field private iconsColor:I


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method private getDataList(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
            ">;"
        }
    .end annotation

    .line 87
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;->iconsColor:I

    const v1, 0x7f0601ec

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;->iconsColor:I

    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getLastSms()Lcom/callapp/common/util/SerializablePair;

    move-result-object v0

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 94
    iget-object v3, v0, Lcom/callapp/common/util/SerializablePair;->b:Ljava/io/Serializable;

    check-cast v3, Lcom/callapp/common/util/SerializablePair;

    iget-object v3, v3, Lcom/callapp/common/util/SerializablePair;->a:Ljava/io/Serializable;

    check-cast v3, Ljava/lang/String;

    .line 95
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v4

    iget-object v5, v0, Lcom/callapp/common/util/SerializablePair;->b:Ljava/io/Serializable;

    check-cast v5, Lcom/callapp/common/util/SerializablePair;

    iget-object v5, v5, Lcom/callapp/common/util/SerializablePair;->b:Ljava/io/Serializable;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    .line 97
    new-instance v5, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$1;

    invoke-direct {v5, p0, v4}, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;Lcom/callapp/framework/phone/Phone;)V

    .line 107
    iget-object v0, v0, Lcom/callapp/common/util/SerializablePair;->a:Ljava/io/Serializable;

    check-cast v0, Ljava/util/Date;

    invoke-static {v0}, Lcom/callapp/contacts/util/date/DateUtils;->c(Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    new-instance v4, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    invoke-direct {v4}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;-><init>()V

    .line 1357
    iput-object v3, v4, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    .line 1372
    iput-object v0, v4, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->g:Ljava/lang/String;

    const v0, 0x7f080498

    .line 111
    invoke-virtual {v4, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(I)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    move-result-object v0

    .line 1392
    iput v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->j:I

    .line 1397
    iput-object v5, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->k:Landroid/view/View$OnClickListener;

    .line 2342
    iput-object v5, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->b:Landroid/view/View$OnClickListener;

    .line 116
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(Lit/gmariotti/cardslib/library/a/b;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getGmailEmailData()Lcom/callapp/contacts/model/contact/GmailEmailData;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 123
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/GmailEmailData;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_2

    .line 131
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/GmailEmailData;->getSubject()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/GmailEmailData;->getSnippet()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 133
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/GmailEmailData;->getSnippet()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v4

    .line 136
    :goto_0
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 137
    new-instance v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    invoke-direct {v5}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;-><init>()V

    .line 2357
    iput-object v3, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    .line 139
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/GmailEmailData;->getInternalDate()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/GmailEmailData;->getInternalDate()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v3}, Lcom/callapp/contacts/util/date/DateUtils;->c(Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 2372
    :goto_1
    iput-object v4, v5, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->g:Ljava/lang/String;

    const v0, 0x7f08039d

    .line 140
    invoke-virtual {v5, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(I)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;

    move-result-object v0

    .line 2392
    iput v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->j:I

    .line 141
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$3;-><init>(Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 2397
    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->k:Landroid/view/View$OnClickListener;

    .line 142
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$2;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 3342
    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->b:Landroid/view/View$OnClickListener;

    .line 167
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(Lit/gmariotti/cardslib/library/a/b;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v2
.end method


# virtual methods
.method public autoExpand()Z
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->lastSms:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->gmailData:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x55

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

    .line 70
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;->hideCard()V

    return-void

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;->getDataList(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/ArrayList;

    move-result-object p1

    .line 77
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 78
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;->updateCardData(Ljava/util/Collection;)V

    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;->showCard(Z)V

    return-void

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/LastCommunicationsCard;->hideCard()V

    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
