.class public Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;
.super Lit/gmariotti/cardslib/library/recyclerview/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;
    }
.end annotation


# instance fields
.field private g:Z

.field private h:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lit/gmariotti/cardslib/library/a/b;",
            ">;",
            "Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Lit/gmariotti/cardslib/library/recyclerview/a/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 37
    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->h:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Lit/gmariotti/cardslib/library/recyclerview/a/a$a;
    .locals 1

    .line 47
    invoke-super {p0, p1, p2}, Lit/gmariotti/cardslib/library/recyclerview/a/b;->a(Landroid/view/ViewGroup;I)Lit/gmariotti/cardslib/library/recyclerview/a/a$a;

    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->h:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;

    if-eqz p2, :cond_0

    .line 49
    iget-object p2, p1, Lit/gmariotti/cardslib/library/recyclerview/a/a$a;->r:Lit/gmariotti/cardslib/library/view/a/a;

    check-cast p2, Lcom/callapp/contacts/activity/contact/cards/framework/CallAppNativeCard;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->h:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CallAppNativeCard;->setCardEventsListener(Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;)V

    :cond_0
    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V
    .locals 5

    .line 125
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->a(Lit/gmariotti/cardslib/library/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getPriority()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 132
    :goto_0
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 133
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->f:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getPriority()I

    move-result v4

    if-ge v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 140
    :goto_1
    invoke-virtual {p0, v3, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->a(ILit/gmariotti/cardslib/library/a/b;)V

    .line 142
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->getCardRecyclerView()Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;

    move-result-object p1

    if-eqz v0, :cond_3

    .line 144
    instance-of v0, p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    if-eqz v0, :cond_3

    .line 145
    move-object v0, p1

    check-cast v0, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    .line 146
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->isUserTouchedItOrItsChildrenOnce()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->isAutoScrolling()Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    invoke-virtual {p1, v1}, Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;->b(I)V

    .line 148
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->h:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;

    if-eqz p1, :cond_3

    .line 149
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority$CardEventsListener;->b()V

    :cond_3
    return-void
.end method

.method public final a(Lit/gmariotti/cardslib/library/recyclerview/a/a$a;I)V
    .locals 3

    .line 57
    iget-object v0, p1, Lit/gmariotti/cardslib/library/recyclerview/a/a$a;->r:Lit/gmariotti/cardslib/library/view/a/a;

    .line 58
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->getItem(I)Lit/gmariotti/cardslib/library/a/b;

    move-result-object p2

    if-eqz v0, :cond_5

    .line 63
    invoke-interface {v0}, Lit/gmariotti/cardslib/library/view/a/a;->getCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object v1

    invoke-static {v1, p2}, Lit/gmariotti/cardslib/library/a/b;->equalsInnerLayout(Lit/gmariotti/cardslib/library/a/b;Lit/gmariotti/cardslib/library/a/b;)Z

    move-result v1

    invoke-interface {v0, v1}, Lit/gmariotti/cardslib/library/view/a/a;->setForceReplaceInnerLayout(Z)V

    .line 66
    iget-boolean v1, p1, Lit/gmariotti/cardslib/library/recyclerview/a/a$a;->s:Z

    invoke-interface {v0, v1}, Lit/gmariotti/cardslib/library/view/a/a;->setRecycle(Z)V

    const/4 v1, 0x1

    .line 73
    iput-boolean v1, p1, Lit/gmariotti/cardslib/library/recyclerview/a/a$a;->s:Z

    .line 75
    invoke-interface {v0, p2}, Lit/gmariotti/cardslib/library/view/a/a;->setCard(Lit/gmariotti/cardslib/library/a/b;)V

    .line 78
    invoke-virtual {p2}, Lit/gmariotti/cardslib/library/a/b;->getCardHeader()Lit/gmariotti/cardslib/library/a/i;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lit/gmariotti/cardslib/library/a/b;->getCardHeader()Lit/gmariotti/cardslib/library/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/i;->d()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p2}, Lit/gmariotti/cardslib/library/a/b;->getViewToClickToExpand()Lit/gmariotti/cardslib/library/a/k;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 79
    :cond_1
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->setupExpandCollapseListAnimation(Lit/gmariotti/cardslib/library/view/a/a;)V

    .line 82
    :cond_2
    invoke-interface {v0}, Lit/gmariotti/cardslib/library/view/a/a;->isNative()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 83
    check-cast v0, Lcom/callapp/contacts/activity/contact/cards/framework/CallAppNativeCard;

    .line 84
    instance-of p1, p2, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    if-eqz p1, :cond_5

    .line 85
    check-cast p2, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    .line 86
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CallAppNativeCard;->getInternalContentLayout()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1118
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getCardInitHeight()I

    move-result v2

    if-lez v2, :cond_3

    .line 1120
    invoke-static {p1, v2}, Lcom/callapp/contacts/util/ViewUtils;->g(Landroid/view/View;I)V

    .line 90
    :cond_3
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->onCardBounded()V

    .line 92
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->isCardLockedWhenScreenIsLocked()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->g:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/CallAppNativeCard;->setLocked(Z)V

    :cond_5
    return-void
.end method

.method public getIsScreenLocked()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->g:Z

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 0

    .line 18
    check-cast p1, Lit/gmariotti/cardslib/library/recyclerview/a/a$a;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->a(Lit/gmariotti/cardslib/library/recyclerview/a/a$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->a(Landroid/view/ViewGroup;I)Lit/gmariotti/cardslib/library/recyclerview/a/a$a;

    move-result-object p1

    return-object p1
.end method

.method public setIsScreenLocked(Z)V
    .locals 5

    .line 101
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->g:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    :goto_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 103
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    .line 104
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->getCardView()Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 106
    instance-of v4, v3, Lcom/callapp/contacts/activity/contact/cards/framework/CallAppNativeCard;

    if-eqz v4, :cond_1

    .line 107
    check-cast v3, Lcom/callapp/contacts/activity/contact/cards/framework/CallAppNativeCard;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->isCardLockedWhenScreenIsLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/CallAppNativeCard;->setLocked(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
