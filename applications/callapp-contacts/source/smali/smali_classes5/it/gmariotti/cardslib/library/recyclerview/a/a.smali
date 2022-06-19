.class public abstract Lit/gmariotti/cardslib/library/recyclerview/a/a;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/gmariotti/cardslib/library/recyclerview/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lit/gmariotti/cardslib/library/recyclerview/a/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:I

.field protected c:I

.field protected d:[I

.field protected e:Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 48
    sget v0, Lit/gmariotti/cardslib/library/recyclerview/a$b;->list_card_layout:I

    iput v0, p0, Lit/gmariotti/cardslib/library/recyclerview/a/a;->b:I

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lit/gmariotti/cardslib/library/recyclerview/a/a;->c:I

    .line 76
    iput-object p1, p0, Lit/gmariotti/cardslib/library/recyclerview/a/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lit/gmariotti/cardslib/library/recyclerview/a/a$a;
    .locals 3

    .line 97
    iget-object v0, p0, Lit/gmariotti/cardslib/library/recyclerview/a/a;->d:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/recyclerview/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lit/gmariotti/cardslib/library/recyclerview/a/a;->d:[I

    aget p2, v2, p2

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 102
    new-instance p2, Lit/gmariotti/cardslib/library/recyclerview/a/a$a;

    invoke-direct {p2, p1}, Lit/gmariotti/cardslib/library/recyclerview/a/a$a;-><init>(Landroid/view/View;)V

    return-object p2

    .line 98
    :cond_1
    :goto_0
    iget-object p2, p0, Lit/gmariotti/cardslib/library/recyclerview/a/a;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lit/gmariotti/cardslib/library/recyclerview/a/a;->b:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 99
    new-instance p2, Lit/gmariotti/cardslib/library/recyclerview/a/a$a;

    invoke-direct {p2, p1}, Lit/gmariotti/cardslib/library/recyclerview/a/a$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lit/gmariotti/cardslib/library/recyclerview/a/a$a;I)V
    .locals 2

    .line 109
    iget-object v0, p1, Lit/gmariotti/cardslib/library/recyclerview/a/a$a;->r:Lit/gmariotti/cardslib/library/view/a/a;

    .line 110
    invoke-virtual {p0, p2}, Lit/gmariotti/cardslib/library/recyclerview/a/a;->getItem(I)Lit/gmariotti/cardslib/library/a/b;

    move-result-object p2

    if-eqz v0, :cond_2

    .line 115
    invoke-interface {v0}, Lit/gmariotti/cardslib/library/view/a/a;->getCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object v1

    invoke-static {v1, p2}, Lit/gmariotti/cardslib/library/a/b;->equalsInnerLayout(Lit/gmariotti/cardslib/library/a/b;Lit/gmariotti/cardslib/library/a/b;)Z

    move-result v1

    invoke-interface {v0, v1}, Lit/gmariotti/cardslib/library/view/a/a;->setForceReplaceInnerLayout(Z)V

    .line 118
    iget-boolean p1, p1, Lit/gmariotti/cardslib/library/recyclerview/a/a$a;->s:Z

    invoke-interface {v0, p1}, Lit/gmariotti/cardslib/library/view/a/a;->setRecycle(Z)V

    .line 121
    invoke-virtual {p2}, Lit/gmariotti/cardslib/library/a/b;->isSwipeable()Z

    move-result p1

    const/4 v1, 0x0

    .line 122
    invoke-virtual {p2, v1}, Lit/gmariotti/cardslib/library/a/b;->setSwipeable(Z)V

    .line 124
    invoke-interface {v0, p2}, Lit/gmariotti/cardslib/library/view/a/a;->setCard(Lit/gmariotti/cardslib/library/a/b;)V

    .line 127
    invoke-virtual {p2, p1}, Lit/gmariotti/cardslib/library/a/b;->setSwipeable(Z)V

    .line 130
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

    .line 131
    :cond_1
    invoke-virtual {p0, v0}, Lit/gmariotti/cardslib/library/recyclerview/a/a;->setupExpandCollapseListAnimation(Lit/gmariotti/cardslib/library/view/a/a;)V

    :cond_2
    return-void
.end method

.method public getCardRecyclerView()Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;
    .locals 1

    .line 199
    iget-object v0, p0, Lit/gmariotti/cardslib/library/recyclerview/a/a;->e:Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;

    return-object v0
.end method

.method public abstract getItem(I)Lit/gmariotti/cardslib/library/a/b;
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/recyclerview/a/a;->getItem(I)Lit/gmariotti/cardslib/library/a/b;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getType()I

    move-result p1

    return p1
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 0

    .line 38
    check-cast p1, Lit/gmariotti/cardslib/library/recyclerview/a/a$a;

    invoke-virtual {p0, p1, p2}, Lit/gmariotti/cardslib/library/recyclerview/a/a;->a(Lit/gmariotti/cardslib/library/recyclerview/a/a$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lit/gmariotti/cardslib/library/recyclerview/a/a;->a(Landroid/view/ViewGroup;I)Lit/gmariotti/cardslib/library/recyclerview/a/a$a;

    move-result-object p1

    return-object p1
.end method

.method public setCardRecyclerView(Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lit/gmariotti/cardslib/library/recyclerview/a/a;->e:Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;

    return-void
.end method

.method public setRowLayoutId(I)V
    .locals 0

    .line 178
    iput p1, p0, Lit/gmariotti/cardslib/library/recyclerview/a/a;->b:I

    return-void
.end method

.method public setRowLayoutIds([I)V
    .locals 0

    .line 187
    iput-object p1, p0, Lit/gmariotti/cardslib/library/recyclerview/a/a;->d:[I

    if-eqz p1, :cond_0

    .line 189
    array-length p1, p1

    iput p1, p0, Lit/gmariotti/cardslib/library/recyclerview/a/a;->c:I

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 191
    iput p1, p0, Lit/gmariotti/cardslib/library/recyclerview/a/a;->c:I

    return-void
.end method

.method protected setupExpandCollapseListAnimation(Lit/gmariotti/cardslib/library/view/a/a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lit/gmariotti/cardslib/library/recyclerview/a/a;->e:Lit/gmariotti/cardslib/library/recyclerview/view/CardRecyclerView;

    invoke-interface {p1, v0}, Lit/gmariotti/cardslib/library/view/a/a;->setOnExpandListAnimatorListener(Lit/gmariotti/cardslib/library/view/a/a$a;)V

    return-void
.end method
