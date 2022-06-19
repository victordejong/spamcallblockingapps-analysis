.class public final Ldz$g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final a:Lzy$e;

.field public final b:I

.field public final c:Ldz$i;

.field public final d:Ldz$i;

.field public final e:Ldz$i;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzy$b$c;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ldz$e;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Ldz$e;Ldz$i;Lzy$e;ILdz$i;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldz$e;",
            "Ldz$i;",
            "Lzy$e;",
            "I",
            "Ldz$i;",
            "Ljava/util/Collection<",
            "Lzy$b$c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldz$g;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x0

    iput-boolean v1, p0, Ldz$g;->i:Z

    iput-boolean v1, p0, Ldz$g;->j:Z

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ldz$g;->g:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Ldz$g;->d:Ldz$i;

    iput-object p3, p0, Ldz$g;->a:Lzy$e;

    iput p4, p0, Ldz$g;->b:I

    iget-object p2, p1, Ldz$e;->r:Ldz$i;

    iput-object p2, p0, Ldz$g;->c:Ldz$i;

    iput-object p5, p0, Ldz$g;->e:Ldz$i;

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Ldz$g;->f:Ljava/util/List;

    iget-object p1, p1, Ldz$e;->k:Ldz$e$b;

    new-instance p2, Lmy;

    invoke-direct {p2, p0}, Lmy;-><init>(Ldz$g;)V

    const-wide/16 p3, 0x3a98

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic c()V
    .locals 0

    invoke-virtual {p0}, Ldz$g;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Ldz$g;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldz$g;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldz$g;->j:Z

    iget-object v0, p0, Ldz$g;->a:Lzy$e;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzy$e;->i(I)V

    iget-object v0, p0, Ldz$g;->a:Lzy$e;

    invoke-virtual {v0}, Lzy$e;->e()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Ldz;->d()V

    iget-boolean v0, p0, Ldz$g;->i:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Ldz$g;->j:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ldz$g;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldz$e;

    if-eqz v0, :cond_2

    iget-object v1, v0, Ldz$e;->A:Ldz$g;

    if-ne v1, p0, :cond_2

    iget-object v1, p0, Ldz$g;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ldz$g;->i:Z

    const/4 v1, 0x0

    iput-object v1, v0, Ldz$e;->A:Ldz$g;

    invoke-virtual {p0}, Ldz$g;->g()V

    invoke-virtual {p0}, Ldz$g;->e()V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ldz$g;->a()V

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic d()V
    .locals 0

    invoke-direct {p0}, Ldz$g;->c()V

    return-void
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Ldz$g;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldz$e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Ldz$g;->d:Ldz$i;

    iput-object v1, v0, Ldz$e;->r:Ldz$i;

    iget-object v2, p0, Ldz$g;->a:Lzy$e;

    iput-object v2, v0, Ldz$e;->s:Lzy$e;

    iget-object v2, p0, Ldz$g;->e:Ldz$i;

    if-nez v2, :cond_1

    iget-object v2, v0, Ldz$e;->k:Ldz$e$b;

    const/16 v3, 0x106

    new-instance v4, Lka;

    iget-object v5, p0, Ldz$g;->c:Ldz$i;

    invoke-direct {v4, v5, v1}, Lka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, p0, Ldz$g;->b:I

    invoke-virtual {v2, v3, v4, v1}, Ldz$e$b;->c(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_1
    iget-object v3, v0, Ldz$e;->k:Ldz$e$b;

    const/16 v4, 0x108

    new-instance v5, Lka;

    invoke-direct {v5, v2, v1}, Lka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, p0, Ldz$g;->b:I

    invoke-virtual {v3, v4, v5, v1}, Ldz$e$b;->c(ILjava/lang/Object;I)V

    :goto_0
    iget-object v1, v0, Ldz$e;->v:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-virtual {v0}, Ldz$e;->A()V

    invoke-virtual {v0}, Ldz$e;->L()V

    iget-object v1, p0, Ldz$g;->f:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v0, v0, Ldz$e;->r:Ldz$i;

    invoke-virtual {v0, v1}, Ldz$i;->K(Ljava/util/Collection;)V

    :cond_2
    return-void
.end method

.method public f(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ldz$g;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldz$e;

    if-eqz v0, :cond_2

    iget-object v1, v0, Ldz$e;->A:Ldz$g;

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ldz$g;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v1, :cond_1

    iput-object p1, p0, Ldz$g;->h:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lgy;

    invoke-direct {v1, p0}, Lgy;-><init>(Ldz$g;)V

    iget-object v0, v0, Ldz$e;->k:Ldz$e$b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lny;

    invoke-direct {v2, v0}, Lny;-><init>(Ldz$e$b;)V

    invoke-interface {p1, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "future is already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const-string p1, "MediaRouter"

    const-string v0, "Router is released. Cancel transfer"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ldz$g;->a()V

    return-void
.end method

.method public final g()V
    .locals 5

    iget-object v0, p0, Ldz$g;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldz$e;

    if-eqz v0, :cond_4

    iget-object v1, v0, Ldz$e;->r:Ldz$i;

    iget-object v2, p0, Ldz$g;->c:Ldz$i;

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Ldz$e;->k:Ldz$e$b;

    const/16 v3, 0x107

    iget v4, p0, Ldz$g;->b:I

    invoke-virtual {v1, v3, v2, v4}, Ldz$e$b;->c(ILjava/lang/Object;I)V

    iget-object v1, v0, Ldz$e;->s:Lzy$e;

    if-eqz v1, :cond_1

    iget v2, p0, Ldz$g;->b:I

    invoke-virtual {v1, v2}, Lzy$e;->i(I)V

    iget-object v1, v0, Ldz$e;->s:Lzy$e;

    invoke-virtual {v1}, Lzy$e;->e()V

    :cond_1
    iget-object v1, v0, Ldz$e;->v:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Ldz$e;->v:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzy$e;

    iget v3, p0, Ldz$g;->b:I

    invoke-virtual {v2, v3}, Lzy$e;->i(I)V

    invoke-virtual {v2}, Lzy$e;->e()V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Ldz$e;->v:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_3
    const/4 v1, 0x0

    iput-object v1, v0, Ldz$e;->s:Lzy$e;

    :cond_4
    :goto_1
    return-void
.end method
