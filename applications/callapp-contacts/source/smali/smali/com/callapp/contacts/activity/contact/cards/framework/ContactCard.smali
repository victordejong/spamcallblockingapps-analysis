.class public abstract Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;
.super Lit/gmariotti/cardslib/library/a/b;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;
.implements Lcom/callapp/contacts/event/listener/DestroyListener;
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ViewHolder:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Lit/gmariotti/cardslib/library/a/b;",
        "Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;",
        "Lcom/callapp/contacts/event/listener/DestroyListener;",
        "Lcom/callapp/contacts/model/contact/ContactDataChangeListener;"
    }
.end annotation


# static fields
.field public static final CARD_ELEVATION:F

.field private static final cardTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static cardTypesCounter:I


# instance fields
.field private final HEADER_DEFAULT_SIZE:F

.field private cardBgColor:I

.field public cardDividerColor:I

.field private isInitialized:Z

.field private multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

.field public final presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

.field public shouldStartHidden:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->cardTypeMap:Ljava/util/HashMap;

    const/high16 v0, 0x40800000    # 4.0f

    .line 47
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    sput v0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->CARD_ELEVATION:F

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V
    .locals 1

    .line 53
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V
    .locals 1

    .line 62
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lit/gmariotti/cardslib/library/a/b;-><init>(Landroid/content/Context;I)V

    const/high16 p2, 0x41400000    # 12.0f

    .line 50
    iput p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->HEADER_DEFAULT_SIZE:F

    const/4 p2, 0x0

    .line 135
    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->isInitialized:Z

    .line 64
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->setCardBackground()V

    .line 66
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    .line 67
    new-instance p2, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getListenFields()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 68
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getCommonListenFields()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 70
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {p1, p0, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addContactChangedListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)V

    .line 74
    :cond_0
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addDestroyListener(Lcom/callapp/contacts/event/listener/DestroyListener;)V

    .line 75
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p1, p2, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->addToMultiCard(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->addToCardsAdapter()V

    return-void
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->refreshCard()V

    return-void
.end method

.method static synthetic access$401(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;I)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lit/gmariotti/cardslib/library/a/b;->setType(I)V

    return-void
.end method

.method private addToCardsAdapter()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getCardsAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->initCard()V

    .line 245
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->a(Lit/gmariotti/cardslib/library/a/b;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->a(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V

    return-void

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->refreshCard()V

    :cond_1
    return-void
.end method

.method private addToMultiCard(Z)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    invoke-interface {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->addToMultiCard(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->initCard()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 237
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->refreshCard()V

    :cond_1
    return-void
.end method

.method private calcCardType()I
    .locals 3

    .line 85
    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->typeKeyGenerator(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)Ljava/lang/String;

    move-result-object v0

    .line 86
    sget-object v1, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->cardTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 88
    sget v2, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->cardTypesCounter:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->cardTypesCounter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 89
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getCardTypesCount()I
    .locals 1

    .line 95
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->cardTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method private initCard()V
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->isInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->isInitialized:Z

    .line 256
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->init()V

    .line 257
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->calcCardType()I

    move-result v0

    invoke-static {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->access$401(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;I)V

    :cond_0
    return-void
.end method

.method private isBackgroundShown()Z
    .locals 1

    .line 406
    invoke-static {}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->isSuperSkinEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dU:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private refreshCard()V
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->isCardVisibleOnScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getCardView()Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lit/gmariotti/cardslib/library/view/a/a;->a(Lit/gmariotti/cardslib/library/a/b;)V

    :cond_0
    return-void
.end method

.method private setCardProperties()V
    .locals 5

    .line 175
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getCardView()Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object v0

    .line 176
    instance-of v1, v0, Landroidx/cardview/widget/CardView;

    if-eqz v1, :cond_2

    .line 177
    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 179
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->setBackground(Landroidx/cardview/widget/CardView;)V

    .line 181
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->hasHeader()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0a01e5

    .line 182
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0488

    .line 183
    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getHeaderTextColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x1

    .line 186
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getHeaderTextSize()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    if-eqz v2, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getHeaderBackgroundColor()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_1
    const v1, 0x7f0a0333

    .line 191
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 193
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->cardDividerColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method

.method private static typeKeyGenerator(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)Ljava/lang/String;
    .locals 9

    .line 99
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getCardExpand()Lit/gmariotti/cardslib/library/a/e;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getInnerLayout()I

    move-result v1

    .line 102
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getCardHeader()Lit/gmariotti/cardslib/library/a/i;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getCardHeader()Lit/gmariotti/cardslib/library/a/i;

    move-result-object v2

    invoke-virtual {v2}, Lit/gmariotti/cardslib/library/a/i;->getInnerLayout()I

    move-result v2

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getCardThumbnail()Lit/gmariotti/cardslib/library/a/j;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getCardThumbnail()Lit/gmariotti/cardslib/library/a/j;

    move-result-object v4

    invoke-virtual {v4}, Lit/gmariotti/cardslib/library/a/j;->getInnerLayout()I

    move-result v4

    :goto_1
    if-nez v0, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    .line 104
    :cond_2
    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/e;->getInnerLayout()I

    move-result v5

    .line 105
    :goto_2
    instance-of v6, v0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;

    if-eqz v6, :cond_3

    check-cast v0, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand;->getFooterLayoutId()I

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 106
    :goto_3
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getPriority()I

    move-result v6

    const/16 v7, 0xc

    const/4 v8, 0x1

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    .line 107
    :goto_4
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getSalt()I

    move-result p0

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v1, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    const/4 v0, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v7, v0

    const-string p0, "%d@%d@%d@%d@%d%d%d"

    invoke-static {p0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public doCollapse()V
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getCardView()Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-super {p0}, Lit/gmariotti/cardslib/library/a/b;->doCollapse()V

    :cond_0
    return-void
.end method

.method protected getCardBgColor()I
    .locals 1

    .line 432
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->cardBgColor:I

    return v0
.end method

.method protected getCardInitHeight()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method protected getCommonListenFields()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 80
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->isIncognito:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getExpandPart()Lit/gmariotti/cardslib/library/a/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeader()Lit/gmariotti/cardslib/library/a/i;
    .locals 3

    .line 285
    new-instance v0, Lit/gmariotti/cardslib/library/a/i;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0074

    invoke-direct {v0, v1, v2}, Lit/gmariotti/cardslib/library/a/i;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public getHeaderBackgroundColor()I
    .locals 1

    .line 204
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getCardBgColor()I

    move-result v0

    return v0
.end method

.method public getHeaderTextColor()I
    .locals 2

    .line 200
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060088

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getHeaderTextSize()F
    .locals 1

    const/high16 v0, 0x41400000    # 12.0f

    return v0
.end method

.method public abstract getHeaderTitle()Ljava/lang/String;
.end method

.method public abstract getListenFields()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end method

.method public getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object v0
.end method

.method public abstract getPriority()I
.end method

.method public getSalt()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideCard()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getCardsAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->isInitialized:Z

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v2, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$2;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;)V

    invoke-interface {v1, v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public hideWhenExceedMaxCards()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected init()V
    .locals 2

    .line 289
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getHeader()Lit/gmariotti/cardslib/library/a/i;

    move-result-object v1

    .line 294
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->addCardHeader(Lit/gmariotti/cardslib/library/a/i;)V

    .line 295
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->setHeaderTitle(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 297
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->setSwipeable(Z)V

    .line 299
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getExpandPart()Lit/gmariotti/cardslib/library/a/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->addCardExpand(Lit/gmariotti/cardslib/library/a/e;)V

    .line 304
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->setElevation()V

    return-void
.end method

.method public isAllowedExpandAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isCardLockedWhenScreenIsLocked()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCardVisibleOnScreen()Z
    .locals 2

    .line 418
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->isInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getCardView()Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 422
    invoke-interface {v0}, Lit/gmariotti/cardslib/library/view/a/a;->getCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object v0

    if-ne v0, p0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public synthetic lambda$onThemeChanged$0$ContactCard()V
    .locals 1

    .line 384
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->shouldHideCardOnThemeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->hideCard()V

    return-void

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->setCardBackground()V

    .line 388
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->onThemeChangedInner()V

    .line 391
    :cond_1
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->refreshCard()V

    return-void
.end method

.method protected abstract onBindViewHolder(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TViewHolder;)V"
        }
    .end annotation
.end method

.method public onCardBounded()V
    .locals 0

    return-void
.end method

.method protected abstract onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TViewHolder;"
        }
    .end annotation
.end method

.method public onDestroy()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method public onMultiCardExpended(Z)V
    .locals 0

    return-void
.end method

.method public onSwipeCard()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getCardsAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v2, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$3;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$3;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;)V

    invoke-interface {v1, v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onThemeChanged()V
    .locals 2

    .line 383
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/framework/-$$Lambda$ContactCard$oxra8z5GMUSqY0v3gHoI0AJwu6Y;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/-$$Lambda$ContactCard$oxra8z5GMUSqY0v3gHoI0AJwu6Y;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onThemeChangedInner()V
    .locals 0

    return-void
.end method

.method public setBackground(Landroidx/cardview/widget/CardView;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->shouldShowCardBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f0800c8

    .line 119
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getCardBgColor()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method protected setCardBackground()V
    .locals 3

    .line 397
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->isBackgroundShown()Z

    move-result v0

    const v1, 0x7f060026

    if-eqz v0, :cond_0

    const/16 v0, 0xbf

    .line 398
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ColorUtils;->a(II)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->cardBgColor:I

    goto :goto_0

    .line 400
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->cardBgColor:I

    :goto_0
    const v0, 0x7f0600f3

    .line 402
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->cardDividerColor:I

    return-void
.end method

.method public setCardBgColor(I)V
    .locals 0

    .line 436
    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->cardBgColor:I

    return-void
.end method

.method public setElevation()V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    if-nez v0, :cond_0

    .line 310
    sget v0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->CARD_ELEVATION:F

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->setCardElevation(F)V

    :cond_0
    return-void
.end method

.method public setHeaderTitle(Ljava/lang/String;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->mCardHeader:Lit/gmariotti/cardslib/library/a/i;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->mCardHeader:Lit/gmariotti/cardslib/library/a/i;

    invoke-virtual {v0, p1}, Lit/gmariotti/cardslib/library/a/i;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setType(I)V
    .locals 1

    .line 338
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "you should not change the card type - only ContactCard should set the card type"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setupInnerViewElements(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0204

    .line 158
    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;

    move-result-object v1

    .line 164
    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 167
    :goto_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->setCardProperties()V

    .line 169
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->onBindViewHolder(Ljava/lang/Object;)V

    return-void
.end method

.method protected shouldHideCardOnThemeChange()Z
    .locals 2

    .line 411
    instance-of v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showCard(Z)V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getCardsAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v2, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;ZLcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;)V

    invoke-interface {v1, v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public showExpendFooter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showMainContent(Z)V
    .locals 2

    .line 348
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getCardView()Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 350
    invoke-interface {v0}, Lit/gmariotti/cardslib/library/view/a/a;->getInternalMainCardLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0a01eb

    .line 352
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showOuterFooter(I)Landroid/view/View;
    .locals 3

    .line 358
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getCardView()Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    invoke-interface {v0}, Lit/gmariotti/cardslib/library/view/a/a;->getInternalMainCardLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 365
    check-cast v0, Landroid/view/ViewGroup;

    const v2, 0x7f0a01df

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract showShouldExpandButton()Z
.end method

.method protected abstract updateCardData(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;Z)V"
        }
    .end annotation
.end method
