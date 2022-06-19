.class public Lxz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li00$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxz$a;,
        Lxz$b;
    }
.end annotation


# instance fields
.field public a:Lla;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lla<",
            "Lxz$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lxz$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lxz$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lxz$a;

.field public e:Ljava/lang/Runnable;

.field public final f:Z

.field public final g:Li00;

.field public h:I


# direct methods
.method public constructor <init>(Lxz$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lxz;-><init>(Lxz$a;Z)V

    return-void
.end method

.method public constructor <init>(Lxz$a;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lma;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lma;-><init>(I)V

    iput-object v0, p0, Lxz;->a:Lla;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxz;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxz;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lxz;->h:I

    iput-object p1, p0, Lxz;->d:Lxz$a;

    iput-boolean p2, p0, Lxz;->f:Z

    new-instance p1, Li00;

    invoke-direct {p1, p0}, Li00;-><init>(Li00$a;)V

    iput-object p1, p0, Lxz;->g:Li00;

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/Object;)Lxz$b;
    .locals 1

    iget-object v0, p0, Lxz;->a:Lla;

    invoke-interface {v0}, Lla;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxz$b;

    if-nez v0, :cond_0

    new-instance v0, Lxz$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lxz$b;-><init>(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iput p1, v0, Lxz$b;->a:I

    iput p2, v0, Lxz$b;->b:I

    iput p3, v0, Lxz$b;->d:I

    iput-object p4, v0, Lxz$b;->c:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public b(Lxz$b;)V
    .locals 1

    iget-boolean v0, p0, Lxz;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Lxz$b;->c:Ljava/lang/Object;

    iget-object v0, p0, Lxz;->a:Lla;

    invoke-interface {v0, p1}, Lla;->a(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final c(Lxz$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lxz;->v(Lxz$b;)V

    return-void
.end method

.method public final d(Lxz$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lxz;->v(Lxz$b;)V

    return-void
.end method

.method public e(I)I
    .locals 5

    iget-object v0, p0, Lxz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lxz;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxz$b;

    iget v3, v2, Lxz$b;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget v3, v2, Lxz$b;->b:I

    if-ne v3, p1, :cond_1

    iget p1, v2, Lxz$b;->d:I

    goto :goto_1

    :cond_1
    if-ge v3, p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    :cond_2
    iget v2, v2, Lxz$b;->d:I

    if-gt v2, p1, :cond_6

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    iget v3, v2, Lxz$b;->b:I

    if-gt v3, p1, :cond_6

    iget v2, v2, Lxz$b;->d:I

    add-int/2addr v3, v2

    if-le v3, p1, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    sub-int/2addr p1, v2

    goto :goto_1

    :cond_5
    iget v3, v2, Lxz$b;->b:I

    if-gt v3, p1, :cond_6

    iget v2, v2, Lxz$b;->d:I

    add-int/2addr p1, v2

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return p1
.end method

.method public final f(Lxz$b;)V
    .locals 10

    iget v0, p1, Lxz$b;->b:I

    iget v1, p1, Lxz$b;->d:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ge v4, v1, :cond_5

    iget-object v8, p0, Lxz;->d:Lxz$a;

    invoke-interface {v8, v4}, Lxz$a;->f(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v8

    const/4 v9, 0x1

    if-nez v8, :cond_2

    invoke-virtual {p0, v4}, Lxz;->h(I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    if-ne v3, v9, :cond_1

    invoke-virtual {p0, v7, v0, v5, v6}, Lxz;->a(IIILjava/lang/Object;)Lxz$b;

    move-result-object v3

    invoke-virtual {p0, v3}, Lxz;->v(Lxz$b;)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v6, 0x0

    goto :goto_4

    :cond_2
    :goto_2
    if-nez v3, :cond_3

    invoke-virtual {p0, v7, v0, v5, v6}, Lxz;->a(IIILjava/lang/Object;)Lxz$b;

    move-result-object v3

    invoke-virtual {p0, v3}, Lxz;->k(Lxz$b;)V

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    const/4 v6, 0x1

    :goto_4
    if-eqz v3, :cond_4

    sub-int/2addr v4, v5

    sub-int/2addr v1, v5

    const/4 v5, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    :goto_5
    add-int/2addr v4, v9

    move v3, v6

    goto :goto_0

    :cond_5
    iget v1, p1, Lxz$b;->d:I

    if-eq v5, v1, :cond_6

    invoke-virtual {p0, p1}, Lxz;->b(Lxz$b;)V

    invoke-virtual {p0, v7, v0, v5, v6}, Lxz;->a(IIILjava/lang/Object;)Lxz$b;

    move-result-object p1

    :cond_6
    if-nez v3, :cond_7

    invoke-virtual {p0, p1}, Lxz;->k(Lxz$b;)V

    goto :goto_6

    :cond_7
    invoke-virtual {p0, p1}, Lxz;->v(Lxz$b;)V

    :goto_6
    return-void
.end method

.method public final g(Lxz$b;)V
    .locals 9

    iget v0, p1, Lxz$b;->b:I

    iget v1, p1, Lxz$b;->d:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v3, v0

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x4

    if-ge v0, v1, :cond_4

    iget-object v7, p0, Lxz;->d:Lxz$a;

    invoke-interface {v7, v0}, Lxz$a;->f(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    invoke-virtual {p0, v0}, Lxz;->h(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    if-ne v4, v8, :cond_1

    iget-object v4, p1, Lxz$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v6, v3, v5, v4}, Lxz;->a(IIILjava/lang/Object;)Lxz$b;

    move-result-object v3

    invoke-virtual {p0, v3}, Lxz;->v(Lxz$b;)V

    move v3, v0

    const/4 v5, 0x0

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    iget-object v4, p1, Lxz$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v6, v3, v5, v4}, Lxz;->a(IIILjava/lang/Object;)Lxz$b;

    move-result-object v3

    invoke-virtual {p0, v3}, Lxz;->k(Lxz$b;)V

    move v3, v0

    const/4 v5, 0x0

    :cond_3
    const/4 v4, 0x1

    :goto_2
    add-int/2addr v5, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget v0, p1, Lxz$b;->d:I

    if-eq v5, v0, :cond_5

    iget-object v0, p1, Lxz$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lxz;->b(Lxz$b;)V

    invoke-virtual {p0, v6, v3, v5, v0}, Lxz;->a(IIILjava/lang/Object;)Lxz$b;

    move-result-object p1

    :cond_5
    if-nez v4, :cond_6

    invoke-virtual {p0, p1}, Lxz;->k(Lxz$b;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1}, Lxz;->v(Lxz$b;)V

    :goto_3
    return-void
.end method

.method public final h(I)Z
    .locals 7

    iget-object v0, p0, Lxz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lxz;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxz$b;

    iget v4, v3, Lxz$b;->a:I

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    iget v3, v3, Lxz$b;->d:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, Lxz;->n(II)I

    move-result v3

    if-ne v3, p1, :cond_2

    return v6

    :cond_0
    if-ne v4, v6, :cond_2

    iget v4, v3, Lxz$b;->b:I

    iget v3, v3, Lxz$b;->d:I

    add-int/2addr v3, v4

    :goto_1
    if-ge v4, v3, :cond_2

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v4, v5}, Lxz;->n(II)I

    move-result v5

    if-ne v5, p1, :cond_1

    return v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public i()V
    .locals 5

    iget-object v0, p0, Lxz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lxz;->d:Lxz$a;

    iget-object v4, p0, Lxz;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lxz$b;

    invoke-interface {v3, v4}, Lxz$a;->c(Lxz$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lxz;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lxz;->x(Ljava/util/List;)V

    iput v1, p0, Lxz;->h:I

    return-void
.end method

.method public j()V
    .locals 7

    invoke-virtual {p0}, Lxz;->i()V

    iget-object v0, p0, Lxz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lxz;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxz$b;

    iget v4, v3, Lxz$b;->a:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lxz;->d:Lxz$a;

    invoke-interface {v4, v3}, Lxz$a;->c(Lxz$b;)V

    iget-object v4, p0, Lxz;->d:Lxz$a;

    iget v5, v3, Lxz$b;->b:I

    iget v3, v3, Lxz$b;->d:I

    invoke-interface {v4, v5, v3}, Lxz$a;->a(II)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lxz;->d:Lxz$a;

    invoke-interface {v4, v3}, Lxz$a;->c(Lxz$b;)V

    iget-object v4, p0, Lxz;->d:Lxz$a;

    iget v5, v3, Lxz$b;->b:I

    iget v6, v3, Lxz$b;->d:I

    iget-object v3, v3, Lxz$b;->c:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v3}, Lxz$a;->e(IILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lxz;->d:Lxz$a;

    invoke-interface {v4, v3}, Lxz$a;->c(Lxz$b;)V

    iget-object v4, p0, Lxz;->d:Lxz$a;

    iget v5, v3, Lxz$b;->b:I

    iget v3, v3, Lxz$b;->d:I

    invoke-interface {v4, v5, v3}, Lxz$a;->h(II)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lxz;->d:Lxz$a;

    invoke-interface {v4, v3}, Lxz$a;->c(Lxz$b;)V

    iget-object v4, p0, Lxz;->d:Lxz$a;

    iget v5, v3, Lxz$b;->b:I

    iget v3, v3, Lxz$b;->d:I

    invoke-interface {v4, v5, v3}, Lxz$a;->g(II)V

    :goto_1
    iget-object v3, p0, Lxz;->e:Ljava/lang/Runnable;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lxz;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lxz;->x(Ljava/util/List;)V

    iput v1, p0, Lxz;->h:I

    return-void
.end method

.method public final k(Lxz$b;)V
    .locals 12

    iget v0, p1, Lxz$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/16 v2, 0x8

    if-eq v0, v2, :cond_9

    iget v2, p1, Lxz$b;->b:I

    invoke-virtual {p0, v2, v0}, Lxz;->z(II)I

    move-result v0

    iget v2, p1, Lxz$b;->b:I

    iget v3, p1, Lxz$b;->a:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op should be remove or update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v7, 0x1

    const/4 v8, 0x1

    :goto_1
    iget v9, p1, Lxz$b;->d:I

    if-ge v7, v9, :cond_7

    iget v9, p1, Lxz$b;->b:I

    mul-int v10, v3, v7

    add-int/2addr v9, v10

    iget v10, p1, Lxz$b;->a:I

    invoke-virtual {p0, v9, v10}, Lxz;->z(II)I

    move-result v9

    iget v10, p1, Lxz$b;->a:I

    if-eq v10, v4, :cond_4

    if-eq v10, v5, :cond_3

    :cond_2
    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v11, v0, 0x1

    if-ne v9, v11, :cond_2

    :goto_2
    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    if-ne v9, v0, :cond_2

    goto :goto_2

    :goto_3
    if-eqz v11, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    iget-object v11, p1, Lxz$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v10, v0, v8, v11}, Lxz;->a(IIILjava/lang/Object;)Lxz$b;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lxz;->l(Lxz$b;I)V

    invoke-virtual {p0, v0}, Lxz;->b(Lxz$b;)V

    iget v0, p1, Lxz$b;->a:I

    if-ne v0, v5, :cond_6

    add-int/2addr v2, v8

    :cond_6
    move v0, v9

    const/4 v8, 0x1

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    iget-object v1, p1, Lxz$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lxz;->b(Lxz$b;)V

    if-lez v8, :cond_8

    iget p1, p1, Lxz$b;->a:I

    invoke-virtual {p0, p1, v0, v8, v1}, Lxz;->a(IIILjava/lang/Object;)Lxz$b;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lxz;->l(Lxz$b;I)V

    invoke-virtual {p0, p1}, Lxz;->b(Lxz$b;)V

    :cond_8
    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(Lxz$b;I)V
    .locals 2

    iget-object v0, p0, Lxz;->d:Lxz$a;

    invoke-interface {v0, p1}, Lxz$a;->b(Lxz$b;)V

    iget v0, p1, Lxz$b;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lxz;->d:Lxz$a;

    iget v1, p1, Lxz$b;->d:I

    iget-object p1, p1, Lxz$b;->c:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, p1}, Lxz$a;->e(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lxz;->d:Lxz$a;

    iget p1, p1, Lxz$b;->d:I

    invoke-interface {v0, p2, p1}, Lxz$a;->h(II)V

    :goto_0
    return-void
.end method

.method public m(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lxz;->n(II)I

    move-result p1

    return p1
.end method

.method public n(II)I
    .locals 5

    iget-object v0, p0, Lxz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_6

    iget-object v1, p0, Lxz;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxz$b;

    iget v2, v1, Lxz$b;->a:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    iget v2, v1, Lxz$b;->b:I

    if-ne v2, p1, :cond_0

    iget p1, v1, Lxz$b;->d:I

    goto :goto_1

    :cond_0
    if-ge v2, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget v1, v1, Lxz$b;->d:I

    if-gt v1, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget v3, v1, Lxz$b;->b:I

    if-gt v3, p1, :cond_5

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    iget v1, v1, Lxz$b;->d:I

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    sub-int/2addr p1, v1

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    iget v1, v1, Lxz$b;->d:I

    add-int/2addr p1, v1

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method public o(I)Z
    .locals 1

    iget v0, p0, Lxz;->h:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lxz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lxz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lxz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r(IILjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lxz;->b:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, p1, p2, p3}, Lxz;->a(IIILjava/lang/Object;)Lxz$b;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lxz;->h:I

    or-int/2addr p1, v3

    iput p1, p0, Lxz;->h:I

    iget-object p1, p0, Lxz;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public s(II)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lxz;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, p2, v3}, Lxz;->a(IIILjava/lang/Object;)Lxz$b;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lxz;->h:I

    or-int/2addr p1, v1

    iput p1, p0, Lxz;->h:I

    iget-object p1, p0, Lxz;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public t(III)Z
    .locals 4

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    iget-object p3, p0, Lxz;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {p0, v3, p1, p2, v2}, Lxz;->a(IIILjava/lang/Object;)Lxz$b;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lxz;->h:I

    or-int/2addr p1, v3

    iput p1, p0, Lxz;->h:I

    iget-object p1, p0, Lxz;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Moving more than 1 item is not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(II)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lxz;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1, p2, v3}, Lxz;->a(IIILjava/lang/Object;)Lxz$b;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lxz;->h:I

    or-int/2addr p1, v4

    iput p1, p0, Lxz;->h:I

    iget-object p1, p0, Lxz;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final v(Lxz$b;)V
    .locals 3

    iget-object v0, p0, Lxz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, Lxz$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lxz;->d:Lxz$a;

    iget v1, p1, Lxz$b;->b:I

    iget p1, p1, Lxz$b;->d:I

    invoke-interface {v0, v1, p1}, Lxz$a;->a(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lxz;->d:Lxz$a;

    iget v1, p1, Lxz$b;->b:I

    iget v2, p1, Lxz$b;->d:I

    iget-object p1, p1, Lxz$b;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, Lxz$a;->e(IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lxz;->d:Lxz$a;

    iget v1, p1, Lxz$b;->b:I

    iget p1, p1, Lxz$b;->d:I

    invoke-interface {v0, v1, p1}, Lxz$a;->d(II)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lxz;->d:Lxz$a;

    iget v1, p1, Lxz$b;->b:I

    iget p1, p1, Lxz$b;->d:I

    invoke-interface {v0, v1, p1}, Lxz$a;->g(II)V

    :goto_0
    return-void
.end method

.method public w()V
    .locals 5

    iget-object v0, p0, Lxz;->g:Li00;

    iget-object v1, p0, Lxz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Li00;->b(Ljava/util/List;)V

    iget-object v0, p0, Lxz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lxz;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxz$b;

    iget v3, v2, Lxz$b;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lxz;->d(Lxz$b;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lxz;->g(Lxz$b;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lxz;->f(Lxz$b;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lxz;->c(Lxz$b;)V

    :goto_1
    iget-object v2, p0, Lxz;->e:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lxz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public x(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lxz$b;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxz$b;

    invoke-virtual {p0, v2}, Lxz;->b(Lxz$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Lxz;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lxz;->x(Ljava/util/List;)V

    iget-object v0, p0, Lxz;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lxz;->x(Ljava/util/List;)V

    const/4 v0, 0x0

    iput v0, p0, Lxz;->h:I

    return-void
.end method

.method public final z(II)I
    .locals 8

    iget-object v0, p0, Lxz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/16 v2, 0x8

    if-ltz v0, :cond_d

    iget-object v3, p0, Lxz;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxz$b;

    iget v4, v3, Lxz$b;->a:I

    const/4 v5, 0x2

    if-ne v4, v2, :cond_8

    iget v2, v3, Lxz$b;->b:I

    iget v4, v3, Lxz$b;->d:I

    if-ge v2, v4, :cond_0

    move v6, v2

    move v7, v4

    goto :goto_1

    :cond_0
    move v7, v2

    move v6, v4

    :goto_1
    if-lt p1, v6, :cond_6

    if-gt p1, v7, :cond_6

    if-ne v6, v2, :cond_3

    if-ne p2, v1, :cond_1

    add-int/lit8 v4, v4, 0x1

    :goto_2
    iput v4, v3, Lxz$b;->d:I

    goto :goto_3

    :cond_1
    if-ne p2, v5, :cond_2

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_3
    if-ne p2, v1, :cond_4

    add-int/lit8 v2, v2, 0x1

    :goto_4
    iput v2, v3, Lxz$b;->b:I

    goto :goto_5

    :cond_4
    if-ne p2, v5, :cond_5

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    :cond_6
    if-ge p1, v2, :cond_c

    if-ne p2, v1, :cond_7

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Lxz$b;->b:I

    add-int/lit8 v4, v4, 0x1

    :goto_6
    iput v4, v3, Lxz$b;->d:I

    goto :goto_8

    :cond_7
    if-ne p2, v5, :cond_c

    add-int/lit8 v2, v2, -0x1

    iput v2, v3, Lxz$b;->b:I

    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_8
    iget v2, v3, Lxz$b;->b:I

    if-gt v2, p1, :cond_a

    if-ne v4, v1, :cond_9

    iget v2, v3, Lxz$b;->d:I

    sub-int/2addr p1, v2

    goto :goto_8

    :cond_9
    if-ne v4, v5, :cond_c

    iget v2, v3, Lxz$b;->d:I

    add-int/2addr p1, v2

    goto :goto_8

    :cond_a
    if-ne p2, v1, :cond_b

    add-int/lit8 v2, v2, 0x1

    :goto_7
    iput v2, v3, Lxz$b;->b:I

    goto :goto_8

    :cond_b
    if-ne p2, v5, :cond_c

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_c
    :goto_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_d
    iget-object p2, p0, Lxz;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_9
    if-ltz p2, :cond_11

    iget-object v0, p0, Lxz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxz$b;

    iget v1, v0, Lxz$b;->a:I

    if-ne v1, v2, :cond_e

    iget v1, v0, Lxz$b;->d:I

    iget v3, v0, Lxz$b;->b:I

    if-eq v1, v3, :cond_f

    if-gez v1, :cond_10

    goto :goto_a

    :cond_e
    iget v1, v0, Lxz$b;->d:I

    if-gtz v1, :cond_10

    :cond_f
    :goto_a
    iget-object v1, p0, Lxz;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lxz;->b(Lxz$b;)V

    :cond_10
    add-int/lit8 p2, p2, -0x1

    goto :goto_9

    :cond_11
    return p1
.end method
