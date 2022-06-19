.class public abstract Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;,
        Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleFooterViewHolder;,
        Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleExpandedCardList;,
        Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
        ">",
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;",
        "Ljava/util/Collection<",
        "+TO;>;>;"
    }
.end annotation


# static fields
.field private static final TIME_NOT_ALLOWED_ANIMATION_SINCE_FIRST_BIND_MILLIS:I = 0xc8


# instance fields
.field private cardViewHolder:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

.field private expandCardList:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;

.field private expandedListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation
.end field

.field protected final expandedListDataLock:Ljava/lang/Object;

.field private firstItemObject:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private footer:I

.field private footerData:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;

.field private timeSinceFirstBound:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)V
    .locals 1

    const v0, 0x7f0d026f

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandedListData:Ljava/util/List;

    .line 37
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandedListDataLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->timeSinceFirstBound:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const v0, 0x7f0d026f

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandedListData:Ljava/util/List;

    .line 37
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandedListDataLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->timeSinceFirstBound:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandedListData:Ljava/util/List;

    .line 37
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandedListDataLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->timeSinceFirstBound:Ljava/lang/Long;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandedListData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->footerData:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->cardViewHolder:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->autoExpandIfNeeded()V

    return-void
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandCardList:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->fillExpandedAreaWithData(Z)V

    return-void
.end method

.method private autoExpandIfNeeded()V
    .locals 1

    .line 347
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->shouldAutoExpand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->doExpand()V

    :cond_0
    return-void
.end method

.method private fillExpandedAreaWithData(Z)V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandCardList:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;->getLinearListAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->isCardVisibleOnScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandedListDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandedListData:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 275
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;

    invoke-direct {v3, p0, p1, v0, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;ZLcom/callapp/contacts/activity/contact/cards/framework/CardWithListExpand$MyLinearListAdapter;Ljava/util/List;)V

    invoke-interface {v1, v3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 275
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method private getExpandButtonView()Landroid/view/View;
    .locals 1

    .line 370
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->getViewToClickToExpand()Lit/gmariotti/cardslib/library/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->getViewToClickToExpand()Lit/gmariotti/cardslib/library/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/k;->c()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private shouldAutoExpand()Z
    .locals 1

    .line 343
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->getCardView()Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->autoExpand()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->shouldExpand()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldExpand()Z
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandedListDataLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 338
    :try_start_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 339
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public alignRowsWithFirstRowExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected autoExpand()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createExpandCardList()Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;
    .locals 2

    .line 211
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleExpandedCardList;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$SimpleExpandedCardList;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;Landroid/content/Context;)V

    return-object v0
.end method

.method protected fillFooterWithData()V
    .locals 0

    return-void
.end method

.method public getCardInitHeight()I
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07036a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getExpandPart()Lit/gmariotti/cardslib/library/a/e;
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->createExpandCardList()Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandCardList:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;

    return-object v0
.end method

.method public getFooterData()Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->footerData:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;

    return-object v0
.end method

.method public getOnCollapseAnimatorStartListener()Lit/gmariotti/cardslib/library/a/b$c;
    .locals 2

    .line 363
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->shouldAutoExpand()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->getExpandButtonView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 366
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getOnCollapseAnimatorStartListener()Lit/gmariotti/cardslib/library/a/b$c;

    move-result-object v0

    return-object v0
.end method

.method public getOnExpandAnimatorStartListener()Lit/gmariotti/cardslib/library/a/b$e;
    .locals 2

    .line 355
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->shouldAutoExpand()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->getExpandButtonView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 358
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getOnExpandAnimatorStartListener()Lit/gmariotti/cardslib/library/a/b$e;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->cardViewHolder:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAllowedExpandAnimation()Z
    .locals 5

    .line 379
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->timeSinceFirstBound:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->timeSinceFirstBound:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;)V
    .locals 4

    .line 82
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->cardViewHolder:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->firstItemObject:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->showMainContent(Z)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->showMainContent(Z)V

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->firstItemObject:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->getCardInitHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v3}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;ILandroid/content/Context;)V

    .line 1100
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->showShouldExpandButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1104
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a:Landroid/view/View;

    const v2, 0x7f0a01dc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1105
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const v3, 0x7f0601cc

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 95
    :cond_1
    :goto_0
    invoke-virtual {p1, p0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;Z)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;)V

    return-void
.end method

.method public onCardBounded()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->timeSinceFirstBound:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->timeSinceFirstBound:Ljava/lang/Long;

    .line 327
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;
    .locals 1

    .line 77
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public setCardClickable(Z)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->cardViewHolder:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->setRowContainerOpacity(Z)V

    :cond_0
    return-void
.end method

.method public setFooterData(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->footerData:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$FooterData;

    return-void
.end method

.method public showShouldExpandButton()Z
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandedListDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandedListData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 32
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->updateCardData(Ljava/util/Collection;Z)V

    return-void
.end method

.method public updateCardData(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TO;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->updateCardData(Ljava/util/Collection;Z)V

    return-void
.end method

.method protected updateCardData(Ljava/util/Collection;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TO;>;Z)V"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandedListDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 246
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 247
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    .line 248
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 250
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->firstItemObject:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    invoke-virtual {v3, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    if-nez p2, :cond_0

    .line 251
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandedListData:Ljava/util/List;

    invoke-static {v1, p2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 252
    monitor-exit v0

    return-void

    .line 255
    :cond_0
    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandedListData:Ljava/util/List;

    .line 256
    iput-object v3, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->firstItemObject:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    goto :goto_1

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandedListData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 259
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->firstItemObject:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/4 p1, 0x0

    .line 260
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->firstItemObject:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move p1, v2

    .line 263
    :goto_1
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->expandCardList:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard$ExpandedCardList;

    if-eqz p2, :cond_3

    .line 264
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->fillExpandedAreaWithData(Z)V

    .line 266
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
