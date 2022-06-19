.class public Lcom/callapp/contacts/activity/contact/cards/MultiCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard<",
        "Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;",
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;",
        ">;",
        "Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final saltCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final MAX_NUMBER_OF_CARDS:I

.field private bottomLayout:Landroid/view/View;

.field private cardArrayAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

.field private final cardPriority:I

.field private cardTitle:Ljava/lang/String;

.field private expandToggle:Landroid/widget/TextView;

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

.field private isFooterLayoutVisible:Z

.field private final salt:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->saltCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Ljava/lang/String;I)V
    .locals 1

    const v0, 0x7f0d013f

    .line 116
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    const/4 p1, 0x2

    .line 46
    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->MAX_NUMBER_OF_CARDS:I

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->extraCardsToAdd:Ljava/util/List;

    .line 117
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->cardTitle:Ljava/lang/String;

    .line 118
    iput p3, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->cardPriority:I

    .line 119
    sget-object p1, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->saltCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->salt:I

    .line 121
    new-instance p1, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p2

    invoke-interface {p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard$3;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)V

    invoke-direct {p1, p2, p3, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->cardArrayAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->cardArrayAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->hideCard()V

    return-void
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->expandToggle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->resetFooter()V

    return-void
.end method

.method static synthetic access$202(Lcom/callapp/contacts/activity/contact/cards/MultiCard;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->isFooterLayoutVisible:Z

    return p1
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->bottomLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/cards/MultiCard;Z)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->showCard(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/cards/MultiCard;Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)Z
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->initFooter(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->isExpended:Z

    return p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)Ljava/util/List;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->extraCardsToAdd:Ljava/util/List;

    return-object p0
.end method

.method private initFooter(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)Z
    .locals 1

    .line 287
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->showExpendFooter()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 288
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->bottomLayout:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 290
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->setToggleText()V

    :cond_0
    const/4 p1, 0x1

    .line 292
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->isFooterLayoutVisible:Z

    .line 294
    :cond_1
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->isFooterLayoutVisible:Z

    return p1
.end method

.method private resetFooter()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->bottomLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 299
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 300
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->isExpended:Z

    .line 301
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->isFooterLayoutVisible:Z

    .line 302
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->setToggleText()V

    :cond_0
    return-void
.end method

.method private setToggleText()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->expandToggle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/MultiCard$5;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard$5;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addToMultiCard(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)Z
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->cardArrayAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->a(Lit/gmariotti/cardslib/library/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 79
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/MultiCard$2;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/MultiCard$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCard;Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeader()Lit/gmariotti/cardslib/library/a/i;
    .locals 3

    .line 112
    new-instance v0, Lit/gmariotti/cardslib/library/a/i;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0211

    invoke-direct {v0, v1, v2}, Lit/gmariotti/cardslib/library/a/i;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->cardTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->cardArrayAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

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

    .line 146
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->cardPriority:I

    return v0
.end method

.method public getSalt()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->salt:I

    return v0
.end method

.method public isAllowedExpandAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInExpandMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$onCreateViewHolder$0$MultiCard(Landroid/view/View;)V
    .locals 2

    .line 172
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->isExpended:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->isExpended:Z

    .line 174
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->extraCardsToAdd:Ljava/util/List;

    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 175
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->extraCardsToAdd:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    .line 176
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->isExpended:Z

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->onMultiCardExpended(Z)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 179
    :goto_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->cardArrayAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->cardArrayAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->getItem(I)Lit/gmariotti/cardslib/library/a/b;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    .line 181
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->isExpended:Z

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->onMultiCardExpended(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onAnimatorEndListener()V
    .locals 2

    .line 230
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->setToggleText()V

    .line 231
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->isExpended:Z

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;)V
    .locals 1

    .line 277
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->cardArrayAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->cardArrayAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->cardArrayAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->getItem(I)Lit/gmariotti/cardslib/library/a/b;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->initFooter(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;)V

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

    .line 308
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->newContact:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 309
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->extraCardsToAdd:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 310
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/MultiCard$6;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard$6;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)V

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;
    .locals 4

    .line 163
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCard;Landroid/view/View;)V

    .line 164
    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;)Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    move-result-object p1

    .line 166
    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;->b(Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->bottomLayout:Landroid/view/View;

    .line 167
    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;->c(Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->expandToggle:Landroid/widget/TextView;

    .line 168
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->bottomLayout:Landroid/view/View;

    iget-boolean v2, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->isFooterLayoutVisible:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->setToggleText()V

    .line 170
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->onThemeChangedInner()V

    .line 171
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->expandToggle:Landroid/widget/TextView;

    new-instance v2, Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$MultiCard$P1advJBBd8eS6RtCzrLE9Nk9nws;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/contact/cards/-$$Lambda$MultiCard$P1advJBBd8eS6RtCzrLE9Nk9nws;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/MultiCard$4;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v2

    invoke-interface {v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/callapp/contacts/activity/contact/cards/MultiCard$4;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCard;Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    const/4 v1, 0x0

    .line 221
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$f;)V

    .line 222
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->cardArrayAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->setAdapter(Lit/gmariotti/cardslib/library/recyclerview/a/a;)V

    .line 223
    invoke-virtual {p1, v3}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->setNestedScrollingEnabled(Z)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/MultiCard$MultiCardsViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onThemeChangedInner()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->bottomLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f0a0335

    .line 256
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->cardDividerColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->expandToggle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 259
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f060088

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public removeFromMultiCard(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V
    .locals 2

    .line 51
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/MultiCard$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/MultiCard$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCard;Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic shouldShowCardBackground()Z
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer$-CC;->$default$shouldShowCardBackground(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;)Z

    move-result v0

    return v0
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

    .line 35
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->updateCardData(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;Z)V

    return-void
.end method

.method public updateHeaderTitle(Ljava/lang/String;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->cardTitle:Ljava/lang/String;

    return-void
.end method
