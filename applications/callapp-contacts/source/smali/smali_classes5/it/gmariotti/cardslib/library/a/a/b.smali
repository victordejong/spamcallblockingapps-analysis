.class public abstract Lit/gmariotti/cardslib/library/a/a/b;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lit/gmariotti/cardslib/library/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field protected i:Landroid/content/Context;

.field protected j:I

.field protected k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lit/gmariotti/cardslib/library/a/b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 47
    sget p2, Lit/gmariotti/cardslib/library/a$e;->list_card_layout:I

    iput p2, p0, Lit/gmariotti/cardslib/library/a/a/b;->j:I

    const/4 p2, 0x1

    .line 52
    iput p2, p0, Lit/gmariotti/cardslib/library/a/a/b;->k:I

    .line 71
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/a/b;->i:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 127
    iput p1, p0, Lit/gmariotti/cardslib/library/a/a/b;->j:I

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 118
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/a/b;->i:Landroid/content/Context;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/a/a/b;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lit/gmariotti/cardslib/library/a/b;

    .line 86
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getType()I

    move-result p1

    return p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 80
    iget v0, p0, Lit/gmariotti/cardslib/library/a/a/b;->k:I

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 92
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/a/a/b;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lit/gmariotti/cardslib/library/a/b;

    .line 93
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
