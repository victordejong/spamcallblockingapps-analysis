.class public abstract Lcom/a/a/a/a/b/a/b;
.super Ljava/lang/Object;
.source "BaseItemAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a/a/b/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/a/a/a/a/b/a/e;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static e:Landroid/animation/TimeInterpolator;


# instance fields
.field protected final a:Lcom/a/a/a/a/b/a;

.field protected final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field protected final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/a/a/b/a;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/a/a/a/a/b/a/b;->a:Lcom/a/a/a/a/b/a;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/a/b/a/b;->b:Ljava/util/List;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/a/b/a/b;->d:Ljava/util/List;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/a/b/a/b;->c:Ljava/util/List;

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/a/a/a/a/b/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "item is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected abstract a(Lcom/a/a/a/a/b/a/e;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/recyclerview/widget/RecyclerView$w;",
            ")V"
        }
    .end annotation
.end method

.method protected a(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/core/g/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/recyclerview/widget/RecyclerView$w;",
            "Landroidx/core/g/y;",
            ")V"
        }
    .end annotation

    .line 184
    new-instance v0, Lcom/a/a/a/a/b/a/b$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/a/a/a/a/b/a/b$a;-><init>(Lcom/a/a/a/a/b/a/b;Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/core/g/y;)V

    invoke-virtual {p3, v0}, Landroidx/core/g/y;->a(Landroidx/core/g/z;)Landroidx/core/g/y;

    .line 185
    invoke-direct {p0, p2}, Lcom/a/a/a/a/b/a/b;->a(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 186
    invoke-virtual {p3}, Landroidx/core/g/y;->c()V

    return-void
.end method

.method public a(ZJ)V
    .locals 2

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/a/a/a/a/b/a/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    iget-object v1, p0, Lcom/a/a/a/a/b/a/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/a/a/a/a/b/a/b;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance p1, Lcom/a/a/a/a/b/a/b$1;

    invoke-direct {p1, p0, v0}, Lcom/a/a/a/a/b/a/b$1;-><init>(Lcom/a/a/a/a/b/a/b;Ljava/util/List;)V

    const/4 v1, 0x0

    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a/b/a/e;

    invoke-virtual {v0}, Lcom/a/a/a/a/b/a/e;->a()Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 92
    invoke-static {v0, p1, p2, p3}, Landroidx/core/g/u;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 94
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/a/a/a/a/b/a/e;

    .line 95
    invoke-virtual {p0, p2}, Lcom/a/a/a/a/b/a/b;->b(Lcom/a/a/a/a/b/a/e;)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_1
    return-void
.end method

.method protected final a()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/a/a/a/a/b/a/b;->a:Lcom/a/a/a/a/b/a;

    invoke-virtual {v0}, Lcom/a/a/a/a/b/a;->k()Z

    move-result v0

    return v0
.end method

.method b(Lcom/a/a/a/a/b/a/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 156
    invoke-virtual {p0, p1}, Lcom/a/a/a/a/b/a/b;->a(Lcom/a/a/a/a/b/a/e;)V

    return-void
.end method

.method protected abstract b(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/recyclerview/widget/RecyclerView$w;",
            ")V"
        }
    .end annotation
.end method

.method public b()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/a/a/a/a/b/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$w;)Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/a/a/a/a/b/a/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/a/a/a/a/b/a/b;->b:Ljava/util/List;

    .line 112
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 113
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/a/a/a/b/a/e;

    .line 115
    invoke-virtual {p0, v2, p1}, Lcom/a/a/a/a/b/a/b;->f(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 116
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 121
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method protected c(Lcom/a/a/a/a/b/a/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/a/a/a/a/b/a/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 177
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "info is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract c(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/recyclerview/widget/RecyclerView$w;",
            ")V"
        }
    .end annotation
.end method

.method public c()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/a/a/a/a/b/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/a/b/a/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/a/a/b/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/a/a/a/a/b/a/b;->d:Ljava/util/List;

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 67
    invoke-static {v2}, Landroidx/core/g/u;->n(Landroid/view/View;)Landroidx/core/g/y;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/g/y;->b()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/a/a/a/a/b/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    .line 131
    iget-object v1, p0, Lcom/a/a/a/a/b/a/b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 133
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 134
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/a/a/a/a/b/a/e;

    .line 136
    invoke-virtual {p0, v3, p1}, Lcom/a/a/a/a/b/a/b;->f(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 137
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 142
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 145
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 146
    iget-object v2, p0, Lcom/a/a/a/a/b/a/b;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public abstract d(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/recyclerview/widget/RecyclerView$w;",
            ")V"
        }
    .end annotation
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, v0}, Lcom/a/a/a/a/b/a/b;->c(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method protected e(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/a/a/a/a/b/a/b;->a:Lcom/a/a/a/a/b/a;

    invoke-virtual {v0, p1}, Lcom/a/a/a/a/b/a;->d(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method public abstract e(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/recyclerview/widget/RecyclerView$w;",
            ")V"
        }
    .end annotation
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, v0}, Lcom/a/a/a/a/b/a/b;->d(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method protected f(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 2

    .line 164
    sget-object v0, Lcom/a/a/a/a/b/a/b;->e:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Lcom/a/a/a/a/b/a/b;->e:Landroid/animation/TimeInterpolator;

    .line 167
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/a/a/a/a/b/a/b;->e:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 168
    invoke-virtual {p0, p1}, Lcom/a/a/a/a/b/a/b;->e(Landroidx/recyclerview/widget/RecyclerView$w;)V

    return-void
.end method

.method protected abstract f(Lcom/a/a/a/a/b/a/e;Landroidx/recyclerview/widget/RecyclerView$w;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/recyclerview/widget/RecyclerView$w;",
            ")Z"
        }
    .end annotation
.end method

.method protected g()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/a/a/a/a/b/a/b;->a:Lcom/a/a/a/a/b/a;

    invoke-virtual {v0}, Lcom/a/a/a/a/b/a;->c()Z

    return-void
.end method
