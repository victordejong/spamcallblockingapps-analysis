.class public abstract Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard<",
        "Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;",
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;",
        ">;",
        "Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final saltCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static trackerParameter:I


# instance fields
.field private cardArrayAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

.field private final cardPriority:I

.field protected cardRecyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

.field private cardTitle:Ljava/lang/String;

.field private carrouselCardVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

.field private extraCardsToAdd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;",
            ">;"
        }
    .end annotation
.end field

.field private isExpended:Z

.field private final salt:I

.field protected userInteraction:Z

.field private viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->saltCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x3e8

    .line 55
    sput v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->trackerParameter:I

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Ljava/lang/String;I)V
    .locals 1

    const v0, 0x7f0d0123

    .line 102
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->extraCardsToAdd:Ljava/util/List;

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->isExpended:Z

    .line 57
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->userInteraction:Z

    .line 103
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->cardTitle:Ljava/lang/String;

    .line 104
    iput p3, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->cardPriority:I

    .line 105
    sget-object p1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->saltCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->salt:I

    .line 107
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p2

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)V

    invoke-direct {p1, p2, p3, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->cardArrayAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->cardArrayAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->extraCardsToAdd:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;Z)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->showCard(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->cardTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->setHeaderTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->carrouselCardVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p0
.end method

.method static synthetic access$502(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->carrouselCardVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    return-object p1
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->handlePageIndicators(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->drawCard()V

    return-void
.end method

.method private drawCard()V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->isInExpandMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0803a0

    goto :goto_0

    :cond_0
    const v2, 0x7f080375

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f060088

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setColorFilter(I)V

    .line 353
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->extraCardsToAdd:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->extraCardsToAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    .line 355
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->isInExpandMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->onMultiCardExpended(Z)V

    goto :goto_1

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->notifyHeightChange()V

    .line 360
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->showAdIfNeeded()V

    .line 361
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->handleFooter()V

    .line 362
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->onThemeChanged()V

    return-void
.end method

.method private handlePageIndicators(I)V
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    if-eqz v0, :cond_2

    const v1, 0x7f060088

    const v2, 0x7f06010f

    if-nez p1, :cond_0

    .line 315
    iget-object p1, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->g:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 316
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->h:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 317
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->i:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 319
    iget-object p1, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->g:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 320
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->h:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 321
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->i:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 323
    :cond_1
    iget-object p1, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->g:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 324
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->h:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 325
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->i:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addToMultiCard(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->cardArrayAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->a(Lit/gmariotti/cardslib/library/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 78
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeader()Lit/gmariotti/cardslib/library/a/i;
    .locals 3

    .line 69
    new-instance v0, Lit/gmariotti/cardslib/library/a/i;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0211

    invoke-direct {v0, v1, v2}, Lit/gmariotti/cardslib/library/a/i;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->cardTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->cardArrayAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->getItemCount()I

    move-result v0

    return v0
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

    .line 141
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->cardPriority:I

    return v0
.end method

.method public getSalt()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->salt:I

    return v0
.end method

.method protected handleExpandButton()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    if-eqz v0, :cond_2

    .line 334
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f060244

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f06010e

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->isInExpandMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0803a0

    goto :goto_1

    :cond_1
    const v2, 0x7f080375

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f060088

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setColorFilter(I)V

    .line 341
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$CarrouselCard$JYHcG0fVveMnd7CaZnSdqcUzUU4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$CarrouselCard$JYHcG0fVveMnd7CaZnSdqcUzUU4;-><init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method abstract handleFooter()V
.end method

.method public isAllowedExpandAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInExpandMode()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->isExpended:Z

    return v0
.end method

.method public synthetic lambda$handleExpandButton$0$CarrouselCard(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 342
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->userInteraction:Z

    .line 343
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->isExpended:Z

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->isExpended:Z

    .line 344
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->drawCard()V

    .line 345
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->isExpended:Z

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->performOnExpandButtonClick(Z)V

    return-void
.end method

.method public notifyHeightChange()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->cardArrayAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onAnimatorEndListener()V
    .locals 0

    return-void
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;)V
    .locals 2

    .line 367
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->e:Landroid/view/View;

    const v1, 0x7f0600f3

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 368
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->isInExpandMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f060026

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 371
    :cond_0
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f060084

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 373
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v0, 0x7f060244

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void

    .line 376
    :cond_1
    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v0, 0x7f06010e

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;)V

    return-void
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

    const/4 p1, 0x0

    .line 382
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->userInteraction:Z

    .line 384
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 385
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$8;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$8;-><init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)V

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;
    .locals 9

    .line 183
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;-><init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;Landroid/view/View;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    .line 184
    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;->a:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->cardRecyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    .line 185
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$4;-><init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;Landroid/content/Context;IZ)V

    .line 231
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->cardRecyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 232
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->cardRecyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->cardArrayAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->setAdapter(Lit/gmariotti/cardslib/library/recyclerview/a/a;)V

    .line 233
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->cardRecyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->setNestedScrollingEnabled(Z)V

    .line 235
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$5;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$5;-><init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)V

    .line 268
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->cardRecyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/h;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 271
    new-instance v1, Lcom/mopub/mobileads/InlineVisibilityTracker;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v4

    sget v7, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->trackerParameter:I

    const/4 v8, 0x0

    move-object v3, v1

    move-object v5, p1

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/mopub/mobileads/InlineVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->carrouselCardVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 272
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$6;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$6;-><init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)V

    invoke-virtual {v1, p1}, Lcom/mopub/mobileads/InlineVisibilityTracker;->setInlineVisibilityTrackerListener(Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;)V

    .line 293
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->cardRecyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$7;-><init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 308
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->handleExpandButton()V

    .line 309
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->viewHolder:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$CarousleCardViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->onDestroy()V

    .line 133
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->carrouselCardVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->carrouselCardVisibilityTracker:Lcom/mopub/mobileads/InlineVisibilityTracker;

    :cond_0
    return-void
.end method

.method abstract performOnExpandButtonClick(Z)V
.end method

.method public removeFromMultiCard(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V
    .locals 0

    return-void
.end method

.method public setIsInExpandMode(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->isExpended:Z

    return-void
.end method

.method public shouldShowCardBackground()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method abstract showAdIfNeeded()V
.end method

.method public showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateCardData(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 45
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->updateCardData(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;Z)V

    return-void
.end method

.method public updateHeaderTitle(Ljava/lang/String;)V
    .locals 1

    .line 151
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->cardTitle:Ljava/lang/String;

    .line 152
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$3;-><init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)V

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
