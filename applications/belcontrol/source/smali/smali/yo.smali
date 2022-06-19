.class public Lyo;
.super Luo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyo$f;,
        Lyo$d;,
        Lyo$e;,
        Lyo$c;,
        Lyo$b;,
        Lyo$h;,
        Lyo$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Luo<",
        "Lyo$g;",
        ">;"
    }
.end annotation


# instance fields
.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyo$g;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lyo$f;",
            ">;"
        }
    .end annotation
.end field

.field public m:Landroid/os/Handler;

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyo$g;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lfp;",
            "Lyo$g;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lyo$g;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Z

.field public final r:Z

.field public final s:Lph$c;

.field public final t:Lph$b;

.field public u:Z

.field public v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lyo$f;",
            ">;"
        }
    .end annotation
.end field

.field public w:Lzp;

.field public x:I

.field public y:I


# direct methods
.method public varargs constructor <init>(ZLzp;[Lhp;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lyo;-><init>(ZZLzp;[Lhp;)V

    return-void
.end method

.method public varargs constructor <init>(ZZLzp;[Lhp;)V
    .locals 3

    invoke-direct {p0}, Luo;-><init>()V

    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p4, v1

    invoke-static {v2}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lzp;->getLength()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p3}, Lzp;->cloneAndClear()Lzp;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Lyo;->w:Lzp;

    new-instance p3, Ljava/util/IdentityHashMap;

    invoke-direct {p3}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p3, p0, Lyo;->o:Ljava/util/Map;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lyo;->p:Ljava/util/Map;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lyo;->k:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lyo;->n:Ljava/util/List;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lyo;->v:Ljava/util/Set;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lyo;->l:Ljava/util/Set;

    iput-boolean p1, p0, Lyo;->q:Z

    iput-boolean p2, p0, Lyo;->r:Z

    new-instance p1, Lph$c;

    invoke-direct {p1}, Lph$c;-><init>()V

    iput-object p1, p0, Lyo;->s:Lph$c;

    new-instance p1, Lph$b;

    invoke-direct {p1}, Lph$b;-><init>()V

    iput-object p1, p0, Lyo;->t:Lph$b;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyo;->v(Ljava/util/Collection;)V

    return-void
.end method

.method public varargs constructor <init>(Z[Lhp;)V
    .locals 2

    new-instance v0, Lzp$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzp$a;-><init>(I)V

    invoke-direct {p0, p1, v0, p2}, Lyo;-><init>(ZLzp;[Lhp;)V

    return-void
.end method

.method public varargs constructor <init>([Lhp;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lyo;-><init>(Z[Lhp;)V

    return-void
.end method

.method public static D(Lyo$g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Loo;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lyo$c;->s()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyo$g;->d:Lyo$c;

    invoke-static {p0}, Lyo$c;->t(Lyo$c;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static F(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Loo;->w(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static G(Lyo$g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lyo$g;->d:Lyo$c;

    invoke-static {v0}, Lyo$c;->t(Lyo$c;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lyo$c;->s()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    iget-object p0, p0, Lyo$g;->b:Ljava/lang/Object;

    invoke-static {p0, p1}, Loo;->y(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(IIII)V
    .locals 2

    iget v0, p0, Lyo;->x:I

    add-int/2addr v0, p3

    iput v0, p0, Lyo;->x:I

    iget v0, p0, Lyo;->y:I

    add-int/2addr v0, p4

    iput v0, p0, Lyo;->y:I

    :goto_0
    iget-object v0, p0, Lyo;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lyo;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyo$g;

    iget v1, v0, Lyo$g;->f:I

    add-int/2addr v1, p2

    iput v1, v0, Lyo$g;->f:I

    iget-object v0, p0, Lyo;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyo$g;

    iget v1, v0, Lyo$g;->g:I

    add-int/2addr v1, p3

    iput v1, v0, Lyo$g;->g:I

    iget-object v0, p0, Lyo;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyo$g;

    iget v1, v0, Lyo$g;->h:I

    add-int/2addr v1, p4

    iput v1, v0, Lyo$g;->h:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final B(Landroid/os/Handler;Ljava/lang/Runnable;)Lyo$f;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lyo$f;

    invoke-direct {v0, p1, p2}, Lyo$f;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lyo;->l:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final declared-synchronized C(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lyo$f;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyo$f;

    invoke-virtual {v1}, Lyo$f;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyo;->l:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public E(Lyo$g;Lhp$a;)Lhp$a;
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lyo$g;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Lyo$g;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lap;

    iget-object v1, v1, Lap;->b:Lhp$a;

    iget-wide v1, v1, Lhp$a;->d:J

    iget-wide v3, p2, Lhp$a;->d:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    iget-object v0, p2, Lhp$a;->a:Ljava/lang/Object;

    invoke-static {p1, v0}, Lyo;->G(Lyo$g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lhp$a;->a(Ljava/lang/Object;)Lhp$a;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final H()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lyo;->m:Landroid/os/Handler;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public final declared-synchronized I()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lyo;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public J(Lyo$g;I)I
    .locals 0

    iget p1, p1, Lyo$g;->g:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final K(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lyo;->C(Ljava/util/Set;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lyo;->V()V

    goto/16 :goto_3

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lyo$h;

    iget-object v0, p1, Lyo$h;->b:Ljava/lang/Object;

    check-cast v0, Lzp;

    iput-object v0, p0, Lyo;->w:Lzp;

    goto/16 :goto_2

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lyo$h;

    iget-object v0, p0, Lyo;->w:Lzp;

    iget v2, p1, Lyo$h;->a:I

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0, v2, v3}, Lzp;->a(II)Lzp;

    move-result-object v0

    iput-object v0, p0, Lyo;->w:Lzp;

    iget-object v2, p1, Lyo$h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lzp;->cloneAndInsert(II)Lzp;

    move-result-object v0

    iput-object v0, p0, Lyo;->w:Lzp;

    iget v0, p1, Lyo$h;->a:I

    iget-object v2, p1, Lyo$h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lyo;->M(II)V

    goto :goto_2

    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lyo$h;

    iget v0, p1, Lyo$h;->a:I

    iget-object v2, p1, Lyo$h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v0, :cond_5

    iget-object v3, p0, Lyo;->w:Lzp;

    invoke-interface {v3}, Lzp;->getLength()I

    move-result v3

    if-ne v2, v3, :cond_5

    iget-object v3, p0, Lyo;->w:Lzp;

    invoke-interface {v3}, Lzp;->cloneAndClear()Lzp;

    move-result-object v3

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lyo;->w:Lzp;

    invoke-interface {v3, v0, v2}, Lzp;->a(II)Lzp;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lyo;->w:Lzp;

    sub-int/2addr v2, v1

    :goto_1
    if-lt v2, v0, :cond_7

    invoke-virtual {p0, v2}, Lyo;->P(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lyo$h;

    iget-object v0, p0, Lyo;->w:Lzp;

    iget v2, p1, Lyo$h;->a:I

    iget-object v3, p1, Lyo$h;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lzp;->cloneAndInsert(II)Lzp;

    move-result-object v0

    iput-object v0, p0, Lyo;->w:Lzp;

    iget v0, p1, Lyo$h;->a:I

    iget-object v2, p1, Lyo$h;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {p0, v0, v2}, Lyo;->w(ILjava/util/Collection;)V

    :cond_7
    :goto_2
    iget-object p1, p1, Lyo$h;->c:Lyo$f;

    invoke-virtual {p0, p1}, Lyo;->T(Lyo$f;)V

    :goto_3
    return v1
.end method

.method public final L(Lyo$g;)V
    .locals 1

    iget-boolean v0, p1, Lyo$g;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lyo$g;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lyo$g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Luo;->t(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final M(II)V
    .locals 5

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lyo;->n:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyo$g;

    iget v2, v2, Lyo$g;->g:I

    iget-object v3, p0, Lyo;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyo$g;

    iget v3, v3, Lyo$g;->h:I

    iget-object v4, p0, Lyo;->n:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyo$g;

    invoke-interface {v4, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    if-gt v0, v1, :cond_0

    iget-object p1, p0, Lyo;->n:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyo$g;

    iput v2, p1, Lyo$g;->g:I

    iput v3, p1, Lyo$g;->h:I

    iget-object p2, p1, Lyo$g;->d:Lyo$c;

    invoke-virtual {p2}, Ldp;->p()I

    move-result p2

    add-int/2addr v2, p2

    iget-object p1, p1, Lyo$g;->d:Lyo$c;

    invoke-virtual {p1}, Ldp;->i()I

    move-result p1

    add-int/2addr v3, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final N(Lyo$g;Lhp;Lph;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lyo;->U(Lyo$g;Lph;)V

    return-void
.end method

.method public final declared-synchronized O(I)V
    .locals 2

    monitor-enter p0

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, v1}, Lyo;->R(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final P(I)V
    .locals 4

    iget-object v0, p0, Lyo;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyo$g;

    iget-object v1, p0, Lyo;->p:Ljava/util/Map;

    iget-object v2, v0, Lyo$g;->b:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lyo$g;->d:Lyo$c;

    invoke-virtual {v1}, Lph;->p()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1}, Lph;->i()I

    move-result v1

    neg-int v1, v1

    const/4 v3, -0x1

    invoke-virtual {p0, p1, v3, v2, v1}, Lyo;->A(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, v0, Lyo$g;->l:Z

    invoke-virtual {p0, v0}, Lyo;->L(Lyo$g;)V

    return-void
.end method

.method public final declared-synchronized Q(II)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, v0}, Lyo;->R(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final R(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Lit;->a(Z)V

    iget-object v0, p0, Lyo;->m:Landroid/os/Handler;

    iget-object v2, p0, Lyo;->k:Ljava/util/List;

    invoke-static {v2, p1, p2}, Lnu;->d0(Ljava/util/List;II)V

    if-eqz v0, :cond_3

    invoke-virtual {p0, p3, p4}, Lyo;->B(Landroid/os/Handler;Ljava/lang/Runnable;)Lyo$f;

    move-result-object p3

    new-instance p4, Lyo$h;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p4, p1, p2, p3}, Lyo$h;-><init>(ILjava/lang/Object;Lyo$f;)V

    invoke-virtual {v0, v1, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_3
    if-eqz p4, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public final S()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyo;->T(Lyo$f;)V

    return-void
.end method

.method public final T(Lyo$f;)V
    .locals 2

    iget-boolean v0, p0, Lyo;->u:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lyo;->H()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyo;->u:Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lyo;->v:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final U(Lyo$g;Lph;)V
    .locals 13

    if-eqz p1, :cond_9

    iget-object v0, p1, Lyo$g;->d:Lyo$c;

    invoke-virtual {v0}, Lyo$c;->x()Lph;

    move-result-object v1

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lph;->p()I

    move-result v1

    invoke-virtual {v0}, Ldp;->p()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Lph;->i()I

    move-result v2

    invoke-virtual {v0}, Ldp;->i()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    iget v5, p1, Lyo$g;->f:I

    add-int/2addr v5, v4

    invoke-virtual {p0, v5, v3, v1, v2}, Lyo;->A(IIII)V

    :cond_2
    iget-boolean v1, p1, Lyo$g;->k:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0, p2}, Lyo$c;->u(Lph;)Lyo$c;

    move-result-object p2

    :goto_0
    iput-object p2, p1, Lyo$g;->d:Lyo$c;

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p2}, Lph;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lyo$c;->s()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lyo$c;->w(Lph;Ljava/lang/Object;)Lyo$c;

    move-result-object p2

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lyo$g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v4, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lit;->f(Z)V

    iget-object v0, p1, Lyo$g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    iget-object v0, p1, Lyo$g;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lap;

    :goto_2
    iget-object v1, p0, Lyo;->s:Lph$c;

    invoke-virtual {p2, v3, v1}, Lph;->m(ILph$c;)Lph$c;

    iget-object v1, p0, Lyo;->s:Lph$c;

    invoke-virtual {v1}, Lph$c;->b()J

    move-result-wide v1

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lap;->g()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_7

    move-wide v11, v5

    goto :goto_3

    :cond_7
    move-wide v11, v1

    :goto_3
    iget-object v8, p0, Lyo;->s:Lph$c;

    iget-object v9, p0, Lyo;->t:Lph$b;

    const/4 v10, 0x0

    move-object v7, p2

    invoke-virtual/range {v7 .. v12}, Lph;->j(Lph$c;Lph$b;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {p2, v2}, Lyo$c;->w(Lph;Ljava/lang/Object;)Lyo$c;

    move-result-object p2

    iput-object p2, p1, Lyo$g;->d:Lyo$c;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v5, v6}, Lap;->k(J)V

    iget-object p2, v0, Lap;->b:Lhp$a;

    iget-object v1, p2, Lhp$a;->a:Ljava/lang/Object;

    invoke-static {p1, v1}, Lyo;->D(Lyo$g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lhp$a;->a(Ljava/lang/Object;)Lhp$a;

    move-result-object p2

    invoke-virtual {v0, p2}, Lap;->e(Lhp$a;)V

    :cond_8
    :goto_4
    iput-boolean v4, p1, Lyo$g;->k:Z

    invoke-virtual {p0}, Lyo;->S()V

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final V()V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyo;->u:Z

    iget-object v0, p0, Lyo;->v:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lyo;->v:Ljava/util/Set;

    new-instance v1, Lyo$b;

    iget-object v3, p0, Lyo;->n:Ljava/util/List;

    iget v4, p0, Lyo;->x:I

    iget v5, p0, Lyo;->y:I

    iget-object v6, p0, Lyo;->w:Lzp;

    iget-boolean v7, p0, Lyo;->q:Z

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lyo$b;-><init>(Ljava/util/Collection;IILzp;Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lpo;->l(Lph;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lyo;->H()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final b(Lfp;)V
    .locals 2

    iget-object v0, p0, Lyo;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyo$g;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lyo$g;

    move-object v1, p1

    check-cast v1, Lap;

    invoke-virtual {v1}, Lap;->l()V

    iget-object v1, v0, Lyo$g;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lyo;->L(Lyo$g;)V

    return-void
.end method

.method public final e(Lhp$a;Les;J)Lfp;
    .locals 9

    iget-object v0, p1, Lhp$a;->a:Ljava/lang/Object;

    invoke-static {v0}, Lyo;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lyo;->p:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyo$g;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lyo$g;

    new-instance v2, Lyo$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lyo$d;-><init>(Lyo$a;)V

    invoke-direct {v0, v2}, Lyo$g;-><init>(Lhp;)V

    iput-boolean v1, v0, Lyo$g;->j:Z

    :cond_0
    new-instance v8, Lap;

    iget-object v3, v0, Lyo$g;->a:Lhp;

    move-object v2, v8

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lap;-><init>(Lhp;Lhp$a;Les;J)V

    iget-object p2, p0, Lyo;->o:Ljava/util/Map;

    invoke-interface {p2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, v0, Lyo$g;->c:Ljava/util/List;

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p2, v0, Lyo$g;->j:Z

    if-nez p2, :cond_1

    iput-boolean v1, v0, Lyo$g;->j:Z

    iget-object p1, v0, Lyo$g;->a:Lhp;

    invoke-virtual {p0, v0, p1}, Luo;->s(Ljava/lang/Object;Lhp;)V

    goto :goto_0

    :cond_1
    iget-boolean p2, v0, Lyo$g;->k:Z

    if-eqz p2, :cond_2

    iget-object p2, p1, Lhp$a;->a:Ljava/lang/Object;

    invoke-static {v0, p2}, Lyo;->D(Lyo$g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lhp$a;->a(Ljava/lang/Object;)Lhp$a;

    move-result-object p1

    invoke-virtual {v8, p1}, Lap;->e(Lhp$a;)V

    :cond_2
    :goto_0
    return-object v8
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized k(Lht;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Luo;->k(Lht;)V

    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lxo;

    invoke-direct {v0, p0}, Lxo;-><init>(Lyo;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lyo;->m:Landroid/os/Handler;

    iget-object p1, p0, Lyo;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lyo;->V()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lyo;->w:Lzp;

    iget-object v0, p0, Lyo;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lzp;->cloneAndInsert(II)Lzp;

    move-result-object p1

    iput-object p1, p0, Lyo;->w:Lzp;

    iget-object p1, p0, Lyo;->k:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lyo;->w(ILjava/util/Collection;)V

    invoke-virtual {p0}, Lyo;->S()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized m()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Luo;->m()V

    iget-object v0, p0, Lyo;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lyo;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lyo;->w:Lzp;

    invoke-interface {v0}, Lzp;->cloneAndClear()Lzp;

    move-result-object v0

    iput-object v0, p0, Lyo;->w:Lzp;

    const/4 v0, 0x0

    iput v0, p0, Lyo;->x:I

    iput v0, p0, Lyo;->y:I

    iget-object v1, p0, Lyo;->m:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lyo;->m:Landroid/os/Handler;

    :cond_0
    iput-boolean v0, p0, Lyo;->u:Z

    iget-object v0, p0, Lyo;->v:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lyo;->l:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lyo;->C(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method public bridge synthetic n(Ljava/lang/Object;Lhp$a;)Lhp$a;
    .locals 0

    check-cast p1, Lyo$g;

    invoke-virtual {p0, p1, p2}, Lyo;->E(Lyo$g;Lhp$a;)Lhp$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic p(Ljava/lang/Object;I)I
    .locals 0

    check-cast p1, Lyo$g;

    invoke-virtual {p0, p1, p2}, Lyo;->J(Lyo$g;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic r(Ljava/lang/Object;Lhp;Lph;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lyo$g;

    invoke-virtual {p0, p1, p2, p3, p4}, Lyo;->N(Lyo$g;Lhp;Lph;Ljava/lang/Object;)V

    return-void
.end method

.method public final u(ILyo$g;)V
    .locals 3

    if-lez p1, :cond_0

    iget-object v0, p0, Lyo;->n:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyo$g;

    iget v1, v0, Lyo$g;->g:I

    iget-object v2, v0, Lyo$g;->d:Lyo$c;

    invoke-virtual {v2}, Ldp;->p()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Lyo$g;->h:I

    iget-object v0, v0, Lyo$g;->d:Lyo$c;

    invoke-virtual {v0}, Ldp;->i()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p2, p1, v1, v2}, Lyo$g;->b(III)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0}, Lyo$g;->b(III)V

    :goto_0
    iget-object v0, p2, Lyo$g;->d:Lyo$c;

    invoke-virtual {v0}, Ldp;->p()I

    move-result v0

    iget-object v1, p2, Lyo$g;->d:Lyo$c;

    invoke-virtual {v1}, Ldp;->i()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2, v0, v1}, Lyo;->A(IIII)V

    iget-object v0, p0, Lyo;->n:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lyo;->p:Ljava/util/Map;

    iget-object v0, p2, Lyo$g;->b:Ljava/lang/Object;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lyo;->r:Z

    if-nez p1, :cond_1

    iput-boolean v2, p2, Lyo$g;->j:Z

    iget-object p1, p2, Lyo$g;->a:Lhp;

    invoke-virtual {p0, p2, p1}, Luo;->s(Ljava/lang/Object;Lhp;)V

    :cond_1
    return-void
.end method

.method public final declared-synchronized v(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lhp;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lyo;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lyo;->x(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final w(ILjava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lyo$g;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyo$g;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1, v0}, Lyo;->u(ILyo$g;)V

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final x(ILjava/util/Collection;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lhp;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lit;->a(Z)V

    iget-object v0, p0, Lyo;->m:Landroid/os/Handler;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhp;

    invoke-static {v3}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhp;

    new-instance v5, Lyo$g;

    invoke-direct {v5, v4}, Lyo$g;-><init>(Lhp;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lyo;->k:Ljava/util/List;

    invoke-interface {v3, p1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0, p3, p4}, Lyo;->B(Landroid/os/Handler;Ljava/lang/Runnable;)Lyo$f;

    move-result-object p2

    new-instance p3, Lyo$h;

    invoke-direct {p3, p1, v2, p2}, Lyo$h;-><init>(ILjava/lang/Object;Lyo$f;)V

    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5

    :cond_5
    if-eqz p4, :cond_6

    if-eqz p3, :cond_6

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_5
    return-void
.end method

.method public final bridge synthetic y(Landroid/os/Message;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lyo;->K(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized z()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lyo;->I()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lyo;->Q(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
