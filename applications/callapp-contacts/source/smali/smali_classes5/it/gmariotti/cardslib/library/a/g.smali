.class public final Lit/gmariotti/cardslib/library/a/g;
.super Lit/gmariotti/cardslib/library/a/a/b;
.source "SourceFile"


# static fields
.field protected static a:Ljava/lang/String; = "CardGridArrayAdapter"


# instance fields
.field protected b:Lit/gmariotti/cardslib/library/view/CardGridView;


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

    .line 101
    invoke-direct {p0, p1, p2}, Lit/gmariotti/cardslib/library/a/a/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Lit/gmariotti/cardslib/library/view/CardGridView;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/g;->b:Lit/gmariotti/cardslib/library/view/CardGridView;

    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 115
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/g;->i:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 118
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/a/g;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lit/gmariotti/cardslib/library/a/b;

    if-eqz p1, :cond_2

    .line 121
    iget v1, p0, Lit/gmariotti/cardslib/library/a/g;->j:I

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 127
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 133
    :goto_0
    sget v0, Lit/gmariotti/cardslib/library/a$c;->list_cardId:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/gmariotti/cardslib/library/view/a/a;

    if-eqz v0, :cond_2

    .line 136
    invoke-interface {v0}, Lit/gmariotti/cardslib/library/view/a/a;->getCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object v1

    invoke-static {v1, p1}, Lit/gmariotti/cardslib/library/a/b;->equalsInnerLayout(Lit/gmariotti/cardslib/library/a/b;Lit/gmariotti/cardslib/library/a/b;)Z

    move-result v1

    invoke-interface {v0, v1}, Lit/gmariotti/cardslib/library/view/a/a;->setForceReplaceInnerLayout(Z)V

    .line 139
    invoke-interface {v0, p3}, Lit/gmariotti/cardslib/library/view/a/a;->setRecycle(Z)V

    .line 142
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->isSwipeable()Z

    .line 144
    invoke-virtual {p1, v2}, Lit/gmariotti/cardslib/library/a/b;->setSwipeable(Z)V

    .line 145
    invoke-interface {v0, p1}, Lit/gmariotti/cardslib/library/view/a/a;->setCard(Lit/gmariotti/cardslib/library/a/b;)V

    .line 152
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardHeader()Lit/gmariotti/cardslib/library/a/i;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getCardHeader()Lit/gmariotti/cardslib/library/a/i;

    move-result-object p1

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/i;->d()Z

    :cond_1
    const/4 p1, 0x0

    .line 1176
    invoke-interface {v0, p1}, Lit/gmariotti/cardslib/library/view/a/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    return-object p2
.end method
