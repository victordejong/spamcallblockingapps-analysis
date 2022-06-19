.class public Lit/gmariotti/cardslib/library/recyclerview/a/b;
.super Lit/gmariotti/cardslib/library/recyclerview/a/a;
.source "SourceFile"


# instance fields
.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lit/gmariotti/cardslib/library/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
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

    .line 53
    invoke-direct {p0, p1}, Lit/gmariotti/cardslib/library/recyclerview/a/a;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 55
    iput-object p2, p0, Lit/gmariotti/cardslib/library/recyclerview/a/b;->f:Ljava/util/List;

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lit/gmariotti/cardslib/library/recyclerview/a/b;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(ILit/gmariotti/cardslib/library/a/b;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lit/gmariotti/cardslib/library/recyclerview/a/b;->f:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 106
    invoke-virtual {p0, p1}, Lit/gmariotti/cardslib/library/recyclerview/a/b;->notifyItemInserted(I)V

    return-void
.end method

.method public final a(Lit/gmariotti/cardslib/library/a/b;)Z
    .locals 1

    .line 129
    iget-object v0, p0, Lit/gmariotti/cardslib/library/recyclerview/a/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Lit/gmariotti/cardslib/library/a/b;)Z
    .locals 1

    .line 148
    iget-object v0, p0, Lit/gmariotti/cardslib/library/recyclerview/a/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 149
    invoke-virtual {p0}, Lit/gmariotti/cardslib/library/recyclerview/a/b;->notifyDataSetChanged()V

    return p1
.end method

.method public getItem(I)Lit/gmariotti/cardslib/library/a/b;
    .locals 1

    .line 73
    iget-object v0, p0, Lit/gmariotti/cardslib/library/recyclerview/a/b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lit/gmariotti/cardslib/library/a/b;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 67
    iget-object v0, p0, Lit/gmariotti/cardslib/library/recyclerview/a/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
