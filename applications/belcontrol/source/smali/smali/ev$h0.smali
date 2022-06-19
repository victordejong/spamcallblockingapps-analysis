.class public abstract Lev$h0;
.super Lwv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "h0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroidx/media2/common/SessionPlayer$b;",
        ">",
        "Lwv<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final j:Z

.field public k:Z

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxv<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lev$h0;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .locals 1

    invoke-direct {p0}, Lwv;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lev$h0;->k:Z

    iput-boolean p2, p0, Lev$h0;->j:Z

    new-instance p2, Lev$h0$a;

    invoke-direct {p2, p0}, Lev$h0$a;-><init>(Lev$h0;)V

    invoke-virtual {p0, p2, p1}, Lwv;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public p(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-super {p0, p1}, Lwv;->p(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public r()V
    .locals 3

    iget-object v0, p0, Lev$h0;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxv;

    invoke-virtual {v1}, Lwv;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lwv;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lwv;->cancel(Z)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public s()Z
    .locals 2

    iget-boolean v0, p0, Lev$h0;->k:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lwv;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lev$h0;->k:Z

    invoke-virtual {p0}, Lev$h0;->t()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lev$h0;->l:Ljava/util/List;

    :cond_0
    invoke-virtual {p0}, Lwv;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lwv;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lev$h0;->v()V

    :cond_1
    invoke-virtual {p0}, Lwv;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lwv;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public abstract t()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lxv<",
            "TV;>;>;"
        }
    .end annotation
.end method

.method public u(Landroidx/media2/common/SessionPlayer$b;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lwv;->o(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final v()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lev$h0;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lev$h0;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    invoke-virtual {v0}, Lwv;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lwv;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lwv;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/SessionPlayer$b;

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer$b;->c()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Lev$h0;->r()V

    invoke-virtual {p0, v0}, Lev$h0;->u(Landroidx/media2/common/SessionPlayer$b;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lev$h0;->r()V

    invoke-virtual {p0, v0}, Lev$h0;->p(Ljava/lang/Throwable;)Z

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0, v0}, Lev$h0;->u(Landroidx/media2/common/SessionPlayer$b;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lev$h0;->p(Ljava/lang/Throwable;)Z

    :goto_1
    return-void
.end method
