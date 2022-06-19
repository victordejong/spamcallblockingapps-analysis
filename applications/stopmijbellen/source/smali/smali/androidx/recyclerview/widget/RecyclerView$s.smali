.class public final Landroidx/recyclerview/widget/RecyclerView$s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "s"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$a0;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$a0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$a0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$a0;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:I

.field public g:Landroidx/recyclerview/widget/RecyclerView$r;

.field public final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->b:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->c:Ljava/util/ArrayList;

    .line 5
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->d:Ljava/util/List;

    const/4 p1, 0x2

    .line 6
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->e:I

    .line 7
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->f:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$a0;Z)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->k(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->n0:Landroidx/recyclerview/widget/y;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, v1, Landroidx/recyclerview/widget/y;->e:Landroidx/recyclerview/widget/y$a;

    .line 5
    instance-of v3, v1, Landroidx/recyclerview/widget/y$a;

    if-eqz v3, :cond_0

    .line 6
    iget-object v1, v1, Landroidx/recyclerview/widget/y$a;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm0/a;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 7
    :goto_0
    invoke-static {v0, v1}, Lm0/v;->u(Landroid/view/View;Lm0/a;)V

    :cond_1
    if-eqz p2, :cond_4

    .line 8
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$t;

    if-eqz p2, :cond_2

    .line 9
    invoke-interface {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$t;->a(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    .line 10
    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$e;

    if-eqz p2, :cond_3

    .line 11
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->f(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    .line 12
    :cond_3
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$x;

    if-eqz v0, :cond_4

    .line 13
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d0;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/d0;->g(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    .line 14
    :cond_4
    iput-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$s;->d()Landroidx/recyclerview/widget/RecyclerView$r;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->f:I

    .line 17
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$r;->a(I)Landroidx/recyclerview/widget/RecyclerView$r$a;

    move-result-object v1

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$r$a;->a:Ljava/util/ArrayList;

    .line 18
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$r;->a:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$r$a;

    iget p2, p2, Landroidx/recyclerview/widget/RecyclerView$r$a;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p2, v0, :cond_5

    goto :goto_1

    .line 19
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->r()V

    .line 20
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$s;->e()V

    return-void
.end method

.method public c(I)I
    .locals 3

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$x;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->b()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 3
    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$x;->g:Z

    if-nez v1, :cond_0

    return p1

    .line 4
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/a;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/a;->f(II)I

    move-result p1

    return p1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "invalid position "

    const-string v2, ". State item count is "

    invoke-static {v1, p1, v2}, Landroid/support/v4/media/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 7
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$x;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, p1}, Landroidx/recyclerview/widget/b;->h(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Landroidx/recyclerview/widget/RecyclerView$r;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->g:Landroidx/recyclerview/widget/RecyclerView$r;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->g:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->g:Landroidx/recyclerview/widget/RecyclerView$r;

    return-object v0
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$s;->f(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->A0:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/n$b;

    .line 6
    iget-object v2, v0, Landroidx/recyclerview/widget/n$b;->c:[I

    if-eqz v2, :cond_1

    .line 7
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v1, 0x0

    .line 8
    iput v1, v0, Landroidx/recyclerview/widget/n$b;->d:I

    :cond_2
    return-void
.end method

.method public f(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$a0;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$s;->a(Landroidx/recyclerview/widget/RecyclerView$a0;Z)V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$a0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->n:Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$s;->k(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->d()V

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$s;->h(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    .line 9
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/RecyclerView$j;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->l()Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$j;->e(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    :cond_3
    return-void
.end method

.method public h(Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->n()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_c

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->o()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->u()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->j:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    sget-object v3, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {v0}, Lm0/v$d;->i(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$e;

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->l()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 8
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$s;->f:I

    if-lez v3, :cond_6

    const/16 v3, 0x20e

    .line 9
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$a0;->h(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 10
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$s;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 11
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView$s;->f:I

    if-lt v3, v4, :cond_2

    if-lez v3, :cond_2

    .line 12
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$s;->f(I)V

    add-int/lit8 v3, v3, -0x1

    .line 13
    :cond_2
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->A0:Z

    if-eqz v2, :cond_5

    if-lez v3, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/n$b;

    iget v4, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->c:I

    .line 14
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/n$b;->c(I)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_4

    .line 15
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$a0;

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$a0;->c:I

    .line 16
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->f0:Landroidx/recyclerview/widget/n$b;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/n$b;->c(I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_4
    add-int/2addr v3, v1

    .line 17
    :cond_5
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_8

    .line 18
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$s;->a(Landroidx/recyclerview/widget/RecyclerView$a0;Z)V

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :cond_8
    const/4 v1, 0x0

    .line 19
    :goto_2
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/d0;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/d0;->g(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    if-nez v2, :cond_9

    if-nez v1, :cond_9

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 20
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->r:Landroidx/recyclerview/widget/RecyclerView;

    :cond_9
    return-void

    .line 21
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    invoke-static {v1, v0}, Landroidx/recyclerview/widget/b;->h(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    invoke-static {p1, v1}, Landroidx/recyclerview/widget/b;->h(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_c
    :goto_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-static {v2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 26
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->n()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isAttached:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v2}, Landroidx/recyclerview/widget/b;->h(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$a0;

    move-result-object p1

    const/16 v0, 0xc

    .line 2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->h(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->p()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/RecyclerView$j;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->g()Ljava/util/List;

    move-result-object v3

    .line 6
    check-cast v0, Landroidx/recyclerview/widget/l;

    .line 7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    iget-boolean v0, v0, Landroidx/recyclerview/widget/a0;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_6

    goto :goto_6

    .line 9
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->b:Ljava/util/ArrayList;

    .line 11
    :cond_7
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->n:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 12
    iput-boolean v2, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->o:Z

    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 14
    :cond_8
    :goto_6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->m()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$e;

    .line 15
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$e;->b:Z

    if-eqz v0, :cond_9

    goto :goto_7

    .line 16
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    invoke-static {v1, v0}, Landroidx/recyclerview/widget/b;->h(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_a
    :goto_7
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->n:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 19
    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->o:Z

    .line 20
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    return-void
.end method

.method public j(IZJ)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    if-ltz v0, :cond_45

    .line 1
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$x;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$x;->b()I

    move-result v2

    if-ge v0, v2, :cond_45

    .line 2
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 3
    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView$x;->g:Z

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    .line 4
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$s;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_2

    .line 5
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$s;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 6
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$a0;->v()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$a0;->f()I

    move-result v8

    if-ne v8, v0, :cond_1

    .line 7
    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/RecyclerView$a0;->b(I)V

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$e;

    .line 9
    iget-boolean v7, v7, Landroidx/recyclerview/widget/RecyclerView$e;->b:Z

    if-eqz v7, :cond_4

    .line 10
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/a;

    .line 11
    invoke-virtual {v6, v0, v5}, Landroidx/recyclerview/widget/a;->f(II)I

    move-result v6

    if-lez v6, :cond_4

    .line 12
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$e;->a()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 13
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView$e;->b(I)J

    move-result-wide v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v2, :cond_4

    .line 14
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$s;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 15
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$a0;->v()Z

    move-result v10

    if-nez v10, :cond_3

    .line 16
    iget-wide v10, v9, Landroidx/recyclerview/widget/RecyclerView$a0;->e:J

    cmp-long v12, v10, v6

    if-nez v12, :cond_3

    .line 17
    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/RecyclerView$a0;->b(I)V

    move-object v7, v9

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    move-object v7, v4

    :goto_3
    if-eqz v7, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    move-object v7, v4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    const/4 v6, -0x1

    if-nez v7, :cond_1c

    .line 18
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$s;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v7, :cond_9

    .line 19
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$s;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 20
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$a0;->v()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$a0;->f()I

    move-result v10

    if-ne v10, v0, :cond_8

    .line 21
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$a0;->k()Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$x;

    iget-boolean v10, v10, Landroidx/recyclerview/widget/RecyclerView$x;->g:Z

    if-nez v10, :cond_7

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$a0;->m()Z

    move-result v10

    if-nez v10, :cond_8

    .line 22
    :cond_7
    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/RecyclerView$a0;->b(I)V

    goto/16 :goto_9

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    if-nez p2, :cond_f

    .line 23
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/c;

    .line 24
    iget-object v8, v7, Landroidx/recyclerview/widget/c;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_b

    .line 25
    iget-object v10, v7, Landroidx/recyclerview/widget/c;->c:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 26
    iget-object v11, v7, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/c$b;

    check-cast v11, Landroidx/recyclerview/widget/w;

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$a0;

    move-result-object v11

    .line 28
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$a0;->f()I

    move-result v12

    if-ne v12, v0, :cond_a

    .line 29
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$a0;->k()Z

    move-result v12

    if-nez v12, :cond_a

    .line 30
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$a0;->m()Z

    move-result v11

    if-nez v11, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    move-object v10, v4

    :goto_7
    if-eqz v10, :cond_f

    .line 31
    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$a0;

    move-result-object v7

    .line 32
    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/c;

    .line 33
    iget-object v9, v8, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/c$b;

    check-cast v9, Landroidx/recyclerview/widget/w;

    .line 34
    iget-object v9, v9, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v9

    if-ltz v9, :cond_e

    .line 35
    iget-object v11, v8, Landroidx/recyclerview/widget/c;->b:Landroidx/recyclerview/widget/c$a;

    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/c$a;->d(I)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 36
    iget-object v11, v8, Landroidx/recyclerview/widget/c;->b:Landroidx/recyclerview/widget/c$a;

    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/c$a;->a(I)V

    .line 37
    invoke-virtual {v8, v10}, Landroidx/recyclerview/widget/c;->l(Landroid/view/View;)Z

    .line 38
    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/c;

    invoke-virtual {v8, v10}, Landroidx/recyclerview/widget/c;->j(Landroid/view/View;)I

    move-result v8

    if-eq v8, v6, :cond_c

    .line 39
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/c;

    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/c;->c(I)V

    .line 40
    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/RecyclerView$s;->i(Landroid/view/View;)V

    const/16 v8, 0x2020

    .line 41
    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView$a0;->b(I)V

    goto/16 :goto_a

    .line 42
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    invoke-static {v3, v2}, Landroidx/recyclerview/widget/b;->h(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trying to unhide a view that was not hidden"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "view is not a child, cannot hide "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_f
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$s;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v7, :cond_12

    .line 47
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$s;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 48
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$a0;->k()Z

    move-result v10

    if-nez v10, :cond_11

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$a0;->f()I

    move-result v10

    if-ne v10, v0, :cond_11

    .line 49
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$a0;->i()Z

    move-result v10

    if-nez v10, :cond_11

    if-nez p2, :cond_10

    .line 50
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$s;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_10
    :goto_9
    move-object v7, v9

    goto :goto_a

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_12
    move-object v7, v4

    :goto_a
    if-eqz v7, :cond_1c

    .line 51
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$a0;->m()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 52
    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 53
    iget-boolean v8, v8, Landroidx/recyclerview/widget/RecyclerView$x;->g:Z

    goto :goto_d

    .line 54
    :cond_13
    iget v8, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->c:I

    if-ltz v8, :cond_1b

    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$e;->a()I

    move-result v9

    if-ge v8, v9, :cond_1b

    .line 55
    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 56
    iget-boolean v9, v9, Landroidx/recyclerview/widget/RecyclerView$x;->g:Z

    if-nez v9, :cond_14

    .line 57
    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$e;

    iget v9, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->c:I

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$e;->c(I)I

    move-result v8

    .line 58
    iget v9, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->f:I

    if-eq v8, v9, :cond_14

    goto :goto_b

    .line 59
    :cond_14
    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v8, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$e;

    .line 60
    iget-boolean v9, v8, Landroidx/recyclerview/widget/RecyclerView$e;->b:Z

    if-eqz v9, :cond_16

    .line 61
    iget-wide v9, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->e:J

    .line 62
    iget v11, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->c:I

    invoke-virtual {v8, v11}, Landroidx/recyclerview/widget/RecyclerView$e;->b(I)J

    move-result-wide v11

    cmp-long v8, v9, v11

    if-nez v8, :cond_15

    goto :goto_c

    :cond_15
    :goto_b
    const/4 v8, 0x0

    goto :goto_d

    :cond_16
    :goto_c
    const/4 v8, 0x1

    :goto_d
    if-nez v8, :cond_1a

    if-nez p2, :cond_19

    const/4 v8, 0x4

    .line 63
    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView$a0;->b(I)V

    .line 64
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$a0;->n()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 65
    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    invoke-virtual {v8, v9, v5}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 66
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->n:Landroidx/recyclerview/widget/RecyclerView$s;

    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/RecyclerView$s;->k(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    goto :goto_e

    .line 67
    :cond_17
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$a0;->v()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 68
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$a0;->d()V

    .line 69
    :cond_18
    :goto_e
    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView$s;->h(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    :cond_19
    move-object v7, v4

    goto :goto_f

    :cond_1a
    const/4 v2, 0x1

    goto :goto_f

    .line 70
    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    invoke-static {v3, v2}, Landroidx/recyclerview/widget/b;->h(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_f
    const/4 v8, 0x2

    if-nez v7, :cond_30

    .line 72
    iget-object v9, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/a;

    .line 73
    invoke-virtual {v9, v0, v5}, Landroidx/recyclerview/widget/a;->f(II)I

    move-result v9

    if-ltz v9, :cond_2f

    .line 74
    iget-object v10, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$e;->a()I

    move-result v10

    if-ge v9, v10, :cond_2f

    .line 75
    iget-object v10, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-virtual {v10, v9}, Landroidx/recyclerview/widget/RecyclerView$e;->c(I)I

    move-result v10

    .line 76
    iget-object v11, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$e;

    .line 77
    iget-boolean v12, v11, Landroidx/recyclerview/widget/RecyclerView$e;->b:Z

    if-eqz v12, :cond_25

    .line 78
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/RecyclerView$e;->b(I)J

    move-result-wide v11

    .line 79
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$s;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v6

    :goto_10
    if-ltz v7, :cond_20

    .line 80
    iget-object v13, v1, Landroidx/recyclerview/widget/RecyclerView$s;->a:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 81
    iget-wide v14, v13, Landroidx/recyclerview/widget/RecyclerView$a0;->e:J

    cmp-long v16, v14, v11

    if-nez v16, :cond_1f

    .line 82
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$a0;->v()Z

    move-result v14

    if-nez v14, :cond_1f

    .line 83
    iget v14, v13, Landroidx/recyclerview/widget/RecyclerView$a0;->f:I

    if-ne v10, v14, :cond_1e

    .line 84
    invoke-virtual {v13, v3}, Landroidx/recyclerview/widget/RecyclerView$a0;->b(I)V

    .line 85
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$a0;->m()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 86
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 87
    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView$x;->g:Z

    if-nez v3, :cond_1d

    const/16 v3, 0xe

    .line 88
    invoke-virtual {v13, v8, v3}, Landroidx/recyclerview/widget/RecyclerView$a0;->s(II)V

    :cond_1d
    move-object v7, v13

    goto :goto_13

    :cond_1e
    if-nez p2, :cond_1f

    .line 89
    iget-object v14, v1, Landroidx/recyclerview/widget/RecyclerView$s;->a:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 90
    iget-object v14, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v15, v13, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    invoke-virtual {v14, v15, v5}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 91
    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    .line 92
    invoke-static {v13}, Landroidx/recyclerview/widget/RecyclerView;->K(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$a0;

    move-result-object v13

    .line 93
    iput-object v4, v13, Landroidx/recyclerview/widget/RecyclerView$a0;->n:Landroidx/recyclerview/widget/RecyclerView$s;

    .line 94
    iput-boolean v5, v13, Landroidx/recyclerview/widget/RecyclerView$a0;->o:Z

    .line 95
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$a0;->d()V

    .line 96
    invoke-virtual {v1, v13}, Landroidx/recyclerview/widget/RecyclerView$s;->h(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    :cond_1f
    add-int/lit8 v7, v7, -0x1

    goto :goto_10

    .line 97
    :cond_20
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$s;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v6

    :goto_11
    if-ltz v3, :cond_23

    .line 98
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView$s;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$a0;

    .line 99
    iget-wide v13, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->e:J

    cmp-long v15, v13, v11

    if-nez v15, :cond_22

    .line 100
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$a0;->i()Z

    move-result v13

    if-nez v13, :cond_22

    .line 101
    iget v13, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->f:I

    if-ne v10, v13, :cond_21

    if-nez p2, :cond_24

    .line 102
    iget-object v11, v1, Landroidx/recyclerview/widget/RecyclerView$s;->c:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_13

    :cond_21
    if-nez p2, :cond_22

    .line 103
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$s;->f(I)V

    goto :goto_12

    :cond_22
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    :cond_23
    :goto_12
    move-object v7, v4

    :cond_24
    :goto_13
    if-eqz v7, :cond_25

    .line 104
    iput v9, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->c:I

    const/4 v2, 0x1

    :cond_25
    if-nez v7, :cond_29

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$s;->d()Landroidx/recyclerview/widget/RecyclerView$r;

    move-result-object v3

    .line 106
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$r;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$r$a;

    if-eqz v3, :cond_27

    .line 107
    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView$r$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_27

    .line 108
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$r$a;->a:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v6

    :goto_14
    if-ltz v7, :cond_27

    .line 110
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$a0;->i()Z

    move-result v6

    if-nez v6, :cond_26

    .line 111
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$a0;

    goto :goto_15

    :cond_26
    add-int/lit8 v7, v7, -0x1

    goto :goto_14

    :cond_27
    move-object v3, v4

    :goto_15
    if-eqz v3, :cond_28

    .line 112
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$a0;->r()V

    .line 113
    sget-object v6, Landroidx/recyclerview/widget/RecyclerView;->x0:[I

    :cond_28
    move-object v7, v3

    :cond_29
    if-nez v7, :cond_30

    .line 114
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v6

    const-wide v11, 0x7fffffffffffffffL

    cmp-long v3, p3, v11

    if-eqz v3, :cond_2c

    .line 115
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$s;->g:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 116
    invoke-virtual {v3, v10}, Landroidx/recyclerview/widget/RecyclerView$r;->a(I)Landroidx/recyclerview/widget/RecyclerView$r$a;

    move-result-object v3

    iget-wide v11, v3, Landroidx/recyclerview/widget/RecyclerView$r$a;->c:J

    const-wide/16 v13, 0x0

    cmp-long v3, v11, v13

    if-eqz v3, :cond_2b

    add-long/2addr v11, v6

    cmp-long v3, v11, p3

    if-gez v3, :cond_2a

    goto :goto_16

    :cond_2a
    const/4 v3, 0x0

    goto :goto_17

    :cond_2b
    :goto_16
    const/4 v3, 0x1

    :goto_17
    if-nez v3, :cond_2c

    return-object v4

    .line 117
    :cond_2c
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v9, "RV CreateView"

    .line 118
    sget v11, Li0/g;->a:I

    .line 119
    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v4, v3, v10}, Landroidx/recyclerview/widget/RecyclerView$e;->e(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;

    move-result-object v3

    .line 121
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_2e

    .line 122
    iput v10, v3, Landroidx/recyclerview/widget/RecyclerView$a0;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 124
    sget-boolean v4, Landroidx/recyclerview/widget/RecyclerView;->A0:Z

    if-eqz v4, :cond_2d

    .line 125
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    invoke-static {v4}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 126
    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v9, v3, Landroidx/recyclerview/widget/RecyclerView$a0;->b:Ljava/lang/ref/WeakReference;

    .line 127
    :cond_2d
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v11

    .line 128
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$s;->g:Landroidx/recyclerview/widget/RecyclerView$r;

    sub-long/2addr v11, v6

    .line 129
    invoke-virtual {v4, v10}, Landroidx/recyclerview/widget/RecyclerView$r;->a(I)Landroidx/recyclerview/widget/RecyclerView$r$a;

    move-result-object v6

    .line 130
    iget-wide v9, v6, Landroidx/recyclerview/widget/RecyclerView$r$a;->c:J

    invoke-virtual {v4, v9, v10, v11, v12}, Landroidx/recyclerview/widget/RecyclerView$r;->b(JJ)J

    move-result-wide v9

    iput-wide v9, v6, Landroidx/recyclerview/widget/RecyclerView$r$a;->c:J

    move-object v7, v3

    goto :goto_18

    .line 131
    :cond_2e
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 132
    sget v2, Li0/g;->a:I

    .line 133
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 134
    throw v0

    .line 135
    :cond_2f
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistency detected. Invalid item position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "(offset:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ").state:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 136
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->b()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v3}, Landroidx/recyclerview/widget/b;->h(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_30
    :goto_18
    if-eqz v2, :cond_31

    .line 137
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 138
    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView$x;->g:Z

    if-nez v3, :cond_31

    const/16 v3, 0x2000

    .line 139
    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/RecyclerView$a0;->h(I)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 140
    invoke-virtual {v7, v5, v3}, Landroidx/recyclerview/widget/RecyclerView$a0;->s(II)V

    .line 141
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$x;

    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView$x;->j:Z

    if-eqz v3, :cond_31

    .line 142
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView$j;->b(Landroidx/recyclerview/widget/RecyclerView$a0;)I

    .line 143
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->K:Landroidx/recyclerview/widget/RecyclerView$j;

    .line 144
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$a0;->g()Ljava/util/List;

    .line 145
    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView$j;->h(Landroidx/recyclerview/widget/RecyclerView$a0;)Landroidx/recyclerview/widget/RecyclerView$j$c;

    move-result-object v3

    .line 146
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v7, v3}, Landroidx/recyclerview/widget/RecyclerView;->Y(Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/RecyclerView$j$c;)V

    .line 147
    :cond_31
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 148
    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView$x;->g:Z

    if-eqz v3, :cond_32

    .line 149
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$a0;->j()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 150
    iput v0, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->g:I

    goto :goto_1c

    .line 151
    :cond_32
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$a0;->j()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 152
    iget v3, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->j:I

    and-int/2addr v3, v8

    if-eqz v3, :cond_33

    const/4 v3, 0x1

    goto :goto_19

    :cond_33
    const/4 v3, 0x0

    :goto_19
    if-nez v3, :cond_34

    .line 153
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$a0;->k()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 154
    :cond_34
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->d:Landroidx/recyclerview/widget/a;

    .line 155
    invoke-virtual {v3, v0, v5}, Landroidx/recyclerview/widget/a;->f(II)I

    move-result v3

    .line 156
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 157
    iget v6, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->f:I

    .line 158
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v8

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v4, p3, v10

    if-eqz v4, :cond_38

    .line 159
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$s;->g:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 160
    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView$r;->a(I)Landroidx/recyclerview/widget/RecyclerView$r$a;

    move-result-object v4

    iget-wide v10, v4, Landroidx/recyclerview/widget/RecyclerView$r$a;->d:J

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-eqz v4, :cond_36

    add-long/2addr v10, v8

    cmp-long v4, v10, p3

    if-gez v4, :cond_35

    goto :goto_1a

    :cond_35
    const/4 v4, 0x0

    goto :goto_1b

    :cond_36
    :goto_1a
    const/4 v4, 0x1

    :goto_1b
    if-nez v4, :cond_38

    :cond_37
    :goto_1c
    const/4 v0, 0x0

    goto/16 :goto_1f

    .line 161
    :cond_38
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$e;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iput v3, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->c:I

    .line 163
    iget-boolean v6, v4, Landroidx/recyclerview/widget/RecyclerView$e;->b:Z

    if-eqz v6, :cond_39

    .line 164
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$e;->b(I)J

    move-result-wide v10

    iput-wide v10, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->e:J

    :cond_39
    const/16 v6, 0x207

    const/4 v10, 0x1

    .line 165
    invoke-virtual {v7, v10, v6}, Landroidx/recyclerview/widget/RecyclerView$a0;->s(II)V

    .line 166
    sget v6, Li0/g;->a:I

    const-string v6, "RV OnBindView"

    .line 167
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$a0;->g()Ljava/util/List;

    .line 169
    invoke-virtual {v4, v7, v3}, Landroidx/recyclerview/widget/RecyclerView$e;->d(Landroidx/recyclerview/widget/RecyclerView$a0;I)V

    .line 170
    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->k:Ljava/util/List;

    if-eqz v3, :cond_3a

    .line 171
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 172
    :cond_3a
    iget v3, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->j:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->j:I

    .line 173
    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 174
    instance-of v4, v3, Landroidx/recyclerview/widget/RecyclerView$n;

    if-eqz v4, :cond_3b

    .line 175
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$n;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/recyclerview/widget/RecyclerView$n;->c:Z

    .line 176
    :cond_3b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 177
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v3

    .line 178
    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$s;->g:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 179
    iget v10, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->f:I

    sub-long/2addr v3, v8

    .line 180
    invoke-virtual {v6, v10}, Landroidx/recyclerview/widget/RecyclerView$r;->a(I)Landroidx/recyclerview/widget/RecyclerView$r$a;

    move-result-object v8

    .line 181
    iget-wide v9, v8, Landroidx/recyclerview/widget/RecyclerView$r$a;->d:J

    invoke-virtual {v6, v9, v10, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$r;->b(JJ)J

    move-result-wide v3

    iput-wide v3, v8, Landroidx/recyclerview/widget/RecyclerView$r$a;->d:J

    .line 182
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 183
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->A:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3c

    const/4 v3, 0x1

    goto :goto_1d

    :cond_3c
    const/4 v3, 0x0

    :goto_1d
    if-eqz v3, :cond_40

    .line 184
    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    .line 185
    sget-object v4, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 186
    invoke-static {v3}, Lm0/v$d;->c(Landroid/view/View;)I

    move-result v4

    const/4 v6, 0x1

    if-nez v4, :cond_3d

    .line 187
    invoke-static {v3, v6}, Lm0/v$d;->s(Landroid/view/View;I)V

    .line 188
    :cond_3d
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->n0:Landroidx/recyclerview/widget/y;

    if-nez v4, :cond_3e

    goto :goto_1e

    .line 189
    :cond_3e
    iget-object v4, v4, Landroidx/recyclerview/widget/y;->e:Landroidx/recyclerview/widget/y$a;

    .line 190
    instance-of v6, v4, Landroidx/recyclerview/widget/y$a;

    if-eqz v6, :cond_3f

    .line 191
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {v3}, Lm0/v;->g(Landroid/view/View;)Lm0/a;

    move-result-object v6

    if-eqz v6, :cond_3f

    if-eq v6, v4, :cond_3f

    .line 193
    iget-object v8, v4, Landroidx/recyclerview/widget/y$a;->e:Ljava/util/Map;

    invoke-interface {v8, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_3f
    invoke-static {v3, v4}, Lm0/v;->u(Landroid/view/View;Lm0/a;)V

    .line 195
    :cond_40
    :goto_1e
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 196
    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView$x;->g:Z

    if-eqz v3, :cond_41

    .line 197
    iput v0, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->g:I

    :cond_41
    const/4 v0, 0x1

    .line 198
    :goto_1f
    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_42

    .line 199
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$n;

    .line 200
    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_20

    .line 201
    :cond_42
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 202
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$n;

    .line 203
    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$a0;->a:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_20

    .line 204
    :cond_43
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$n;

    .line 205
    :goto_20
    iput-object v7, v3, Landroidx/recyclerview/widget/RecyclerView$n;->a:Landroidx/recyclerview/widget/RecyclerView$a0;

    if-eqz v2, :cond_44

    if-eqz v0, :cond_44

    const/4 v5, 0x1

    .line 206
    :cond_44
    iput-boolean v5, v3, Landroidx/recyclerview/widget/RecyclerView$n;->d:Z

    return-object v7

    .line 207
    :cond_45
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid item position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "). Item count:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$x;

    .line 208
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->b()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 209
    invoke-static {v0, v3}, Landroidx/recyclerview/widget/b;->h(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public k(Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->o:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->n:Landroidx/recyclerview/widget/RecyclerView$s;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->o:Z

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->d()V

    return-void
.end method

.method public l()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->m:Landroidx/recyclerview/widget/RecyclerView$m;

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$m;->j:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->f:I

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$s;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$s;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$s;->f:I

    if-le v1, v2, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$s;->f(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method
