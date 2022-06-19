.class public Lev$e0;
.super Lfv$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e0"
.end annotation


# instance fields
.field public final synthetic a:Lev;


# direct methods
.method public constructor <init>(Lev;)V
    .locals 0

    iput-object p1, p0, Lev$e0;->a:Lev;

    invoke-direct {p0}, Lfv$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfv;Landroidx/media2/common/MediaItem;II)V
    .locals 1

    iget-object v0, p0, Lev$e0;->a:Lev;

    invoke-virtual {v0, p1, p2, p3, p4}, Lev;->h0(Lfv;Landroidx/media2/common/MediaItem;II)V

    return-void
.end method

.method public b(Lfv;Landroidx/media2/common/MediaItem;II)V
    .locals 1

    iget-object p1, p0, Lev$e0;->a:Lev;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lev;->y0(I)V

    iget-object p1, p0, Lev$e0;->a:Lev;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lev;->q0(Landroidx/media2/common/MediaItem;I)V

    iget-object p1, p0, Lev$e0;->a:Lev;

    new-instance v0, Lev$e0$e;

    invoke-direct {v0, p0, p2, p3, p4}, Lev$e0$e;-><init>(Lev$e0;Landroidx/media2/common/MediaItem;II)V

    invoke-virtual {p1, v0}, Lev;->i0(Lev$d0;)V

    return-void
.end method

.method public c(Lfv;Landroidx/media2/common/MediaItem;II)V
    .locals 4

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-eq p3, p1, :cond_7

    const/4 v1, 0x6

    const/4 v2, 0x3

    if-eq p3, v1, :cond_5

    const/16 v1, 0x64

    if-eq p3, v1, :cond_3

    const/16 v3, 0x2c0

    if-eq p3, v3, :cond_2

    const/16 v1, 0x322

    if-eq p3, v1, :cond_1

    const/16 v1, 0x2bd

    if-eq p3, v1, :cond_0

    const/16 p1, 0x2be

    if-eq p3, p1, :cond_4

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lev$e0;->a:Lev;

    invoke-virtual {v0, p2, p1}, Lev;->q0(Landroidx/media2/common/MediaItem;I)V

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lev$e0;->a:Lev;

    new-instance v0, Lev$e0$j;

    invoke-direct {v0, p0}, Lev$e0$j;-><init>(Lev$e0;)V

    :goto_0
    invoke-virtual {p1, v0}, Lev;->j0(Lev$j0;)V

    goto/16 :goto_2

    :cond_2
    if-lt p4, v1, :cond_9

    iget-object p1, p0, Lev$e0;->a:Lev;

    invoke-virtual {p1, p2, v2}, Lev;->q0(Landroidx/media2/common/MediaItem;I)V

    goto/16 :goto_2

    :cond_3
    iget-object p1, p0, Lev$e0;->a:Lev;

    new-instance v1, Lev$e0$f;

    invoke-direct {v1, p0}, Lev$e0$f;-><init>(Lev$e0;)V

    invoke-virtual {p1, v1}, Lev;->j0(Lev$j0;)V

    :cond_4
    iget-object p1, p0, Lev$e0;->a:Lev;

    invoke-virtual {p1, p2, v0}, Lev;->q0(Landroidx/media2/common/MediaItem;I)V

    goto/16 :goto_2

    :cond_5
    iget-object p1, p0, Lev$e0;->a:Lev;

    iget-object p1, p1, Lev;->n:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lev$e0;->a:Lev;

    iget-object v3, v1, Lev;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, v1, Lev;->r:I

    iget-object v1, p0, Lev$e0;->a:Lev;

    iget-object v3, v1, Lev;->t:Landroidx/media2/common/MediaItem;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lev;->L()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    if-nez p1, :cond_9

    const-string p1, "MediaPlayer"

    const-string v0, "Cannot play next media item"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lev$e0;->a:Lev;

    invoke-virtual {p1, v2}, Lev;->y0(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v0}, Lev;->y0(I)V

    iget-object p1, p0, Lev$e0;->a:Lev;

    new-instance v0, Lev$e0$i;

    invoke-direct {v0, p0}, Lev$e0$i;-><init>(Lev$e0;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_7
    iget-object p1, p0, Lev$e0;->a:Lev;

    iget-object p1, p1, Lev;->n:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-object v1, p0, Lev$e0;->a:Lev;

    iget-object v2, v1, Lev;->s:Landroidx/media2/common/MediaItem;

    if-ne v2, p2, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_1

    :cond_8
    iget-object v2, v1, Lev;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Lev;->r:I

    iget-object v1, p0, Lev$e0;->a:Lev;

    invoke-virtual {v1}, Lev;->B0()Lka;

    iget-object v1, p0, Lev$e0;->a:Lev;

    iget-object v1, v1, Lev;->t:Landroidx/media2/common/MediaItem;

    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_9

    iget-object p1, p0, Lev$e0;->a:Lev;

    new-instance v0, Lev$e0$g;

    invoke-direct {v0, p0, p2}, Lev$e0$g;-><init>(Lev$e0;Landroidx/media2/common/MediaItem;)V

    invoke-virtual {p1, v0}, Lev;->j0(Lev$j0;)V

    if-eqz v1, :cond_9

    new-instance p1, Lev$e0$h;

    iget-object v0, p0, Lev$e0;->a:Lev;

    iget-object v0, v0, Lev;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, p0, v0, v1}, Lev$e0$h;-><init>(Lev$e0;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem;)V

    iget-object v0, p0, Lev$e0;->a:Lev;

    invoke-virtual {v0, p1}, Lev;->R(Lev$h0;)V

    :cond_9
    :goto_2
    sget-object p1, Lev;->x:Lb4;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh4;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lev;->x:Lb4;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lh4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p3, p0, Lev$e0;->a:Lev;

    new-instance v0, Lev$e0$k;

    invoke-direct {v0, p0, p2, p1, p4}, Lev$e0$k;-><init>(Lev$e0;Landroidx/media2/common/MediaItem;II)V

    invoke-virtual {p3, v0}, Lev;->i0(Lev$d0;)V

    :cond_a
    return-void

    :catchall_1
    move-exception p2

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2
.end method

.method public d(Lfv;Landroidx/media2/common/MediaItem;Lgv;)V
    .locals 1

    iget-object p1, p0, Lev$e0;->a:Lev;

    new-instance v0, Lev$e0$a;

    invoke-direct {v0, p0, p2, p3}, Lev$e0$a;-><init>(Lev$e0;Landroidx/media2/common/MediaItem;Lgv;)V

    invoke-virtual {p1, v0}, Lev;->i0(Lev$d0;)V

    return-void
.end method

.method public e(Lfv;Landroidx/media2/common/MediaItem;ILandroidx/media2/common/SubtitleData;)V
    .locals 1

    iget-object p1, p0, Lev$e0;->a:Lev;

    new-instance v0, Lev$e0$b;

    invoke-direct {v0, p0, p3, p2, p4}, Lev$e0$b;-><init>(Lev$e0;ILandroidx/media2/common/MediaItem;Landroidx/media2/common/SubtitleData;)V

    invoke-virtual {p1, v0}, Lev;->j0(Lev$j0;)V

    return-void
.end method

.method public f(Lfv;Landroidx/media2/common/MediaItem;Liv;)V
    .locals 1

    iget-object p1, p0, Lev$e0;->a:Lev;

    new-instance v0, Lev$e0$d;

    invoke-direct {v0, p0, p2, p3}, Lev$e0$d;-><init>(Lev$e0;Landroidx/media2/common/MediaItem;Liv;)V

    invoke-virtual {p1, v0}, Lev;->i0(Lev$d0;)V

    return-void
.end method

.method public g(Lfv;Landroidx/media2/common/MediaItem;II)V
    .locals 0

    new-instance p1, Landroidx/media2/common/VideoSize;

    invoke-direct {p1, p3, p4}, Landroidx/media2/common/VideoSize;-><init>(II)V

    iget-object p3, p0, Lev$e0;->a:Lev;

    new-instance p4, Lev$e0$c;

    invoke-direct {p4, p0, p2, p1}, Lev$e0$c;-><init>(Lev$e0;Landroidx/media2/common/MediaItem;Landroidx/media2/common/VideoSize;)V

    invoke-virtual {p3, p4}, Lev;->j0(Lev$j0;)V

    return-void
.end method
