.class public Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard<",
        "Lcom/callapp/contacts/model/PersonData;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemClickedListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final rightIconClickedListener:Landroid/view/View$OnClickListener;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 84
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->itemClickedListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 91
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard$3;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard$3;-><init>(Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->rightIconClickedListener:Landroid/view/View$OnClickListener;

    .line 33
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;)V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->setOnClickListener(Lit/gmariotti/cardslib/library/a/b$a;)V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->goToMutualFriendsActivity(Landroid/content/Context;)V

    return-void
.end method

.method private goToMutualFriendsActivity(Landroid/content/Context;)V
    .locals 3

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getMutualFriends()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard$4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard$4;-><init>(Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 134
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;-><init>(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 1134
    iput-boolean v0, v2, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->c:Z

    .line 134
    invoke-virtual {v1, p1, v2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ResultPopup;)V

    return-void
.end method


# virtual methods
.method public getCardInitHeight()I
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070309

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getFooterText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->title:Ljava/lang/String;

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

    .line 53
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->mutualFriends:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getOnFooterClickedListener()Landroid/view/View$OnClickListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOnItemClickedListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->itemClickedListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOnRightIconClickedListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->rightIconClickedListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getOnRowClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->rightIconClickedListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x96

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 68
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getMutualFriends()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const p1, 0x7f12049e

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 74
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->title:Ljava/lang/String;

    .line 75
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p0, p2, v3}, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->updateCardData(Ljava/util/List;Z)V

    .line 77
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->setHeaderTitle(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->showCard(Z)V

    return-void

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->hideCard()V

    return-void

    .line 69
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->hideCard()V

    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
