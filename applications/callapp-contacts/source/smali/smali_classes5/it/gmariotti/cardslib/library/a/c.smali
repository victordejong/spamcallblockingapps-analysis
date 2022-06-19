.class public final Lit/gmariotti/cardslib/library/a/c;
.super Lit/gmariotti/cardslib/library/a/a/b;
.source "SourceFile"

# interfaces
.implements Lit/gmariotti/cardslib/library/view/listener/f$d;


# static fields
.field protected static a:Ljava/lang/String; = "CardArrayAdapter"


# instance fields
.field protected b:Lit/gmariotti/cardslib/library/view/CardListView;

.field protected c:Lit/gmariotti/cardslib/library/view/listener/a;

.field protected d:Z

.field protected e:Lit/gmariotti/cardslib/library/view/listener/f;

.field protected f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lit/gmariotti/cardslib/library/a/b;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Lit/gmariotti/cardslib/library/view/listener/a/c;

.field h:Lit/gmariotti/cardslib/library/view/listener/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lit/gmariotti/cardslib/library/a/b;",
            ">;)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Lit/gmariotti/cardslib/library/a/a/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/c;->d:Z

    .line 250
    new-instance p1, Lit/gmariotti/cardslib/library/a/c$1;

    invoke-direct {p1, p0}, Lit/gmariotti/cardslib/library/a/c$1;-><init>(Lit/gmariotti/cardslib/library/a/c;)V

    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/c;->h:Lit/gmariotti/cardslib/library/view/listener/a$a;

    return-void
.end method

.method private a(Lit/gmariotti/cardslib/library/a/b;I)V
    .locals 1

    .line 468
    invoke-super {p0, p1, p2}, Lit/gmariotti/cardslib/library/a/a/b;->insert(Ljava/lang/Object;I)V

    .line 469
    iget-boolean p2, p0, Lit/gmariotti/cardslib/library/a/c;->d:Z

    if-eqz p2, :cond_0

    .line 470
    iget-object p2, p0, Lit/gmariotti/cardslib/library/a/c;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcelable;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 352
    check-cast p1, Lit/gmariotti/cardslib/library/view/listener/UndoCard;

    .line 353
    iget-object v0, p1, Lit/gmariotti/cardslib/library/view/listener/UndoCard;->itemPosition:[I

    .line 354
    iget-object p1, p1, Lit/gmariotti/cardslib/library/view/listener/UndoCard;->itemId:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 357
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 360
    aget v2, v0, v1

    .line 361
    aget-object v3, p1, v1

    if-nez v3, :cond_0

    .line 364
    sget-object v2, Lit/gmariotti/cardslib/library/a/c;->a:Ljava/lang/String;

    const-string v3, "You have to set a id value to use the undo action"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 366
    :cond_0
    iget-object v4, p0, Lit/gmariotti/cardslib/library/a/c;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lit/gmariotti/cardslib/library/a/b;

    if-eqz v3, :cond_1

    .line 368
    invoke-direct {p0, v3, v2}, Lit/gmariotti/cardslib/library/a/c;->a(Lit/gmariotti/cardslib/library/a/b;I)V

    .line 369
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/a/c;->notifyDataSetChanged()V

    .line 370
    invoke-virtual {v3}, Lit/gmariotti/cardslib/library/a/b;->getOnUndoSwipeListListener()Lit/gmariotti/cardslib/library/a/b$i;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 371
    invoke-virtual {v3}, Lit/gmariotti/cardslib/library/a/b;->getOnUndoSwipeListListener()Lit/gmariotti/cardslib/library/a/b$i;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lit/gmariotti/cardslib/library/view/CardListView;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/c;->b:Lit/gmariotti/cardslib/library/view/CardListView;

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 385
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/c;->d:Z

    return v0
.end method

.method public final synthetic add(Ljava/lang/Object;)V
    .locals 2

    .line 81
    check-cast p1, Lit/gmariotti/cardslib/library/a/b;

    .line 5432
    invoke-super {p0, p1}, Lit/gmariotti/cardslib/library/a/a/b;->add(Ljava/lang/Object;)V

    .line 5433
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/c;->d:Z

    if-eqz v0, :cond_0

    .line 5434
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/c;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final addAll(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lit/gmariotti/cardslib/library/a/b;",
            ">;)V"
        }
    .end annotation

    .line 440
    invoke-super {p0, p1}, Lit/gmariotti/cardslib/library/a/a/b;->addAll(Ljava/util/Collection;)V

    .line 441
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/c;->d:Z

    if-eqz v0, :cond_0

    .line 442
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/gmariotti/cardslib/library/a/b;

    .line 443
    iget-object v1, p0, Lit/gmariotti/cardslib/library/a/c;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Lit/gmariotti/cardslib/library/a/b;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic addAll([Ljava/lang/Object;)V
    .locals 5

    .line 81
    check-cast p1, [Lit/gmariotti/cardslib/library/a/b;

    .line 4450
    invoke-super {p0, p1}, Lit/gmariotti/cardslib/library/a/a/b;->addAll([Ljava/lang/Object;)V

    .line 4451
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/c;->d:Z

    if-eqz v0, :cond_0

    .line 4452
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 4453
    iget-object v3, p0, Lit/gmariotti/cardslib/library/a/c;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Lit/gmariotti/cardslib/library/a/b;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()Lit/gmariotti/cardslib/library/view/listener/f;
    .locals 1

    .line 502
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/c;->e:Lit/gmariotti/cardslib/library/view/listener/f;

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .line 460
    invoke-super {p0}, Lit/gmariotti/cardslib/library/a/a/b;->clear()V

    .line 461
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/c;->d:Z

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/c;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 141
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/c;->i:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 144
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/a/c;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lit/gmariotti/cardslib/library/a/b;

    if-eqz p1, :cond_9

    .line 147
    iget v1, p0, Lit/gmariotti/cardslib/library/a/c;->j:I

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 153
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 159
    :goto_0
    sget v0, Lit/gmariotti/cardslib/library/a$c;->list_cardId:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/gmariotti/cardslib/library/view/a/a;

    if-eqz v0, :cond_9

    .line 162
    invoke-interface {v0}, Lit/gmariotti/cardslib/library/view/a/a;->getCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object v1

    invoke-static {v1, p1}, Lit/gmariotti/cardslib/library/a/b;->equalsInnerLayout(Lit/gmariotti/cardslib/library/a/b;Lit/gmariotti/cardslib/library/a/b;)Z

    move-result v1

    invoke-interface {v0, v1}, Lit/gmariotti/cardslib/library/view/a/a;->setForceReplaceInnerLayout(Z)V

    .line 165
    invoke-interface {v0, p3}, Lit/gmariotti/cardslib/library/view/a/a;->setRecycle(Z)V

    .line 168
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->isSwipeable()Z

    move-result p3

    .line 169
    invoke-virtual {p1, v2}, Lit/gmariotti/cardslib/library/a/b;->setSwipeable(Z)V

    .line 171
    invoke-interface {v0, p1}, Lit/gmariotti/cardslib/library/view/a/a;->setCard(Lit/gmariotti/cardslib/library/a/b;)V

    .line 174
    invoke-virtual {p1, p3}, Lit/gmariotti/cardslib/library/a/b;->setSwipeable(Z)V

    .line 177
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardHeader()Lit/gmariotti/cardslib/library/a/i;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardHeader()Lit/gmariotti/cardslib/library/a/i;

    move-result-object p3

    invoke-virtual {p3}, Lit/gmariotti/cardslib/library/a/i;->d()Z

    move-result p3

    if-nez p3, :cond_2

    :cond_1
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getViewToClickToExpand()Lit/gmariotti/cardslib/library/a/k;

    move-result-object p3

    if-eqz p3, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    .line 1241
    iget-object p3, p0, Lit/gmariotti/cardslib/library/a/c;->b:Lit/gmariotti/cardslib/library/view/CardListView;

    invoke-interface {v0, p3}, Lit/gmariotti/cardslib/library/view/a/a;->setOnExpandListAnimatorListener(Lit/gmariotti/cardslib/library/view/a/a$a;)V

    .line 2202
    :cond_3
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->isSwipeable()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2203
    iget-object p1, p0, Lit/gmariotti/cardslib/library/a/c;->c:Lit/gmariotti/cardslib/library/view/listener/a;

    if-nez p1, :cond_7

    .line 2204
    new-instance p1, Lit/gmariotti/cardslib/library/view/listener/a;

    iget-object p3, p0, Lit/gmariotti/cardslib/library/a/c;->b:Lit/gmariotti/cardslib/library/view/CardListView;

    iget-object v1, p0, Lit/gmariotti/cardslib/library/a/c;->h:Lit/gmariotti/cardslib/library/view/listener/a$a;

    invoke-direct {p1, p3, v1}, Lit/gmariotti/cardslib/library/view/listener/a;-><init>(Landroid/widget/ListView;Lit/gmariotti/cardslib/library/view/listener/a$a;)V

    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/c;->c:Lit/gmariotti/cardslib/library/view/listener/a;

    .line 2207
    iget-object p1, p0, Lit/gmariotti/cardslib/library/a/c;->g:Lit/gmariotti/cardslib/library/view/listener/a/c;

    if-nez p1, :cond_4

    new-instance p1, Lit/gmariotti/cardslib/library/view/listener/a/b;

    invoke-direct {p1}, Lit/gmariotti/cardslib/library/view/listener/a/b;-><init>()V

    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/c;->g:Lit/gmariotti/cardslib/library/view/listener/a/c;

    .line 2208
    :cond_4
    iget-object p1, p0, Lit/gmariotti/cardslib/library/a/c;->g:Lit/gmariotti/cardslib/library/view/listener/a/c;

    invoke-interface {p1, p0}, Lit/gmariotti/cardslib/library/view/listener/a/c;->a(Landroid/widget/Adapter;)V

    .line 2209
    iget-object p1, p0, Lit/gmariotti/cardslib/library/a/c;->c:Lit/gmariotti/cardslib/library/view/listener/a;

    iget-object p3, p0, Lit/gmariotti/cardslib/library/a/c;->g:Lit/gmariotti/cardslib/library/view/listener/a/c;

    invoke-virtual {p1, p3}, Lit/gmariotti/cardslib/library/view/listener/a;->a(Lit/gmariotti/cardslib/library/view/listener/a/c;)V

    .line 2213
    iget-object p1, p0, Lit/gmariotti/cardslib/library/a/c;->b:Lit/gmariotti/cardslib/library/view/CardListView;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/view/CardListView;->a()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object p1

    if-nez p1, :cond_5

    .line 2214
    new-instance p1, Lit/gmariotti/cardslib/library/view/listener/e;

    invoke-direct {p1}, Lit/gmariotti/cardslib/library/view/listener/e;-><init>()V

    .line 2215
    iget-object p3, p0, Lit/gmariotti/cardslib/library/a/c;->c:Lit/gmariotti/cardslib/library/view/listener/a;

    .line 3038
    iput-object p3, p1, Lit/gmariotti/cardslib/library/view/listener/e;->a:Lit/gmariotti/cardslib/library/view/listener/a;

    .line 2216
    iget-object p3, p0, Lit/gmariotti/cardslib/library/a/c;->b:Lit/gmariotti/cardslib/library/view/CardListView;

    invoke-virtual {p3, p1}, Lit/gmariotti/cardslib/library/view/CardListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_1

    .line 2218
    :cond_5
    iget-object p1, p0, Lit/gmariotti/cardslib/library/a/c;->b:Lit/gmariotti/cardslib/library/view/CardListView;

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/view/CardListView;->a()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object p1

    .line 2219
    instance-of p3, p1, Lit/gmariotti/cardslib/library/view/listener/e;

    if-eqz p3, :cond_6

    .line 2220
    check-cast p1, Lit/gmariotti/cardslib/library/view/listener/e;

    iget-object p3, p0, Lit/gmariotti/cardslib/library/a/c;->c:Lit/gmariotti/cardslib/library/view/listener/a;

    .line 4038
    iput-object p3, p1, Lit/gmariotti/cardslib/library/view/listener/e;->a:Lit/gmariotti/cardslib/library/view/listener/a;

    .line 2224
    :cond_6
    :goto_1
    iget-object p1, p0, Lit/gmariotti/cardslib/library/a/c;->b:Lit/gmariotti/cardslib/library/view/CardListView;

    iget-object p3, p0, Lit/gmariotti/cardslib/library/a/c;->c:Lit/gmariotti/cardslib/library/view/listener/a;

    invoke-virtual {p1, p3}, Lit/gmariotti/cardslib/library/view/CardListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2226
    :cond_7
    iget-object p1, p0, Lit/gmariotti/cardslib/library/a/c;->c:Lit/gmariotti/cardslib/library/view/listener/a;

    invoke-interface {v0, p1}, Lit/gmariotti/cardslib/library/view/a/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    :cond_8
    const/4 p1, 0x0

    .line 2229
    invoke-interface {v0, p1}, Lit/gmariotti/cardslib/library/view/a/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_9
    :goto_2
    return-object p2
.end method

.method public final synthetic insert(Ljava/lang/Object;I)V
    .locals 0

    .line 81
    check-cast p1, Lit/gmariotti/cardslib/library/a/b;

    invoke-direct {p0, p1, p2}, Lit/gmariotti/cardslib/library/a/c;->a(Lit/gmariotti/cardslib/library/a/b;I)V

    return-void
.end method
