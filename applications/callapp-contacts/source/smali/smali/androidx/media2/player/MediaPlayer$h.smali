.class abstract Landroidx/media2/player/MediaPlayer$h;
.super Landroidx/c/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroidx/media2/common/SessionPlayer$b;",
        ">",
        "Landroidx/c/a/a<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final i:Z

.field j:Z

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/c/a/b<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    const/4 v0, 0x0

    .line 546
    invoke-direct {p0, p1, v0}, Landroidx/media2/player/MediaPlayer$h;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .locals 1

    .line 549
    invoke-direct {p0}, Landroidx/c/a/a;-><init>()V

    const/4 v0, 0x0

    .line 540
    iput-boolean v0, p0, Landroidx/media2/player/MediaPlayer$h;->j:Z

    .line 550
    iput-boolean p2, p0, Landroidx/media2/player/MediaPlayer$h;->i:Z

    .line 551
    new-instance p2, Landroidx/media2/player/MediaPlayer$h$1;

    invoke-direct {p2, p0}, Landroidx/media2/player/MediaPlayer$h$1;-><init>(Landroidx/media2/player/MediaPlayer$h;)V

    invoke-virtual {p0, p2, p1}, Landroidx/media2/player/MediaPlayer$h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private d()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 584
    :goto_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$h;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 585
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$h;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/c/a/b;

    .line 586
    invoke-virtual {v0}, Landroidx/c/a/b;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroidx/c/a/b;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 590
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroidx/c/a/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/SessionPlayer$b;

    .line 591
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer$b;->a()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 593
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$h;->c()V

    .line 1563
    invoke-super {p0, v0}, Landroidx/c/a/a;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 598
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$h;->c()V

    .line 599
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer$h;->a(Ljava/lang/Throwable;)Z

    return-void

    .line 2563
    :cond_2
    :try_start_1
    invoke-super {p0, v0}, Landroidx/c/a/a;->a(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 606
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer$h;->a(Ljava/lang/Throwable;)Z

    return-void
.end method


# virtual methods
.method abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/c/a/b<",
            "TV;>;>;"
        }
    .end annotation
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 535
    check-cast p1, Landroidx/media2/common/SessionPlayer$b;

    .line 3563
    invoke-super {p0, p1}, Landroidx/c/a/a;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .locals 0

    .line 568
    invoke-super {p0, p1}, Landroidx/c/a/a;->a(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final b()Z
    .locals 2

    .line 572
    iget-boolean v0, p0, Landroidx/media2/player/MediaPlayer$h;->j:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$h;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    iput-boolean v1, p0, Landroidx/media2/player/MediaPlayer$h;->j:Z

    .line 574
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$h;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer$h;->k:Ljava/util/List;

    .line 576
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$h;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$h;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 577
    invoke-direct {p0}, Landroidx/media2/player/MediaPlayer$h;->d()V

    .line 579
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$h;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer$h;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method final c()V
    .locals 3

    .line 614
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$h;->k:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 615
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/c/a/b;

    .line 616
    invoke-virtual {v1}, Landroidx/c/a/b;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroidx/c/a/b;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 617
    invoke-virtual {v1, v2}, Landroidx/c/a/b;->cancel(Z)Z

    goto :goto_0

    :cond_1
    return-void
.end method
