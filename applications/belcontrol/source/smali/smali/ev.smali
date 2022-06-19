.class public final Lev;
.super Landroidx/media2/common/SessionPlayer;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lev$c0;,
        Lev$b0;,
        Lev$a0;,
        Lev$k0;,
        Lev$i0;,
        Lev$e0;,
        Lev$f0;,
        Lev$d0;,
        Lev$j0;,
        Lev$h0;,
        Lev$g0;
    }
.end annotation


# static fields
.field public static v:Lb4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb4<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static w:Lb4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb4<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static x:Lb4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb4<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static y:Lb4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb4<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static z:Lb4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb4<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Lfv;

.field public d:Ljava/util/concurrent/ExecutorService;

.field public final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lev$g0;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lev$h0<",
            "-",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/Object;

.field public j:I

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media2/common/MediaItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public l:Z

.field public final m:Ldv;

.field public final n:Ljava/lang/Object;

.field public o:Lev$c0;

.field public p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public q:I

.field public r:I

.field public s:Landroidx/media2/common/MediaItem;

.field public t:Landroidx/media2/common/MediaItem;

.field public u:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lhv$a;

    invoke-direct {v0}, Lhv$a;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lhv$a;->d(F)Lhv$a;

    invoke-virtual {v0, v1}, Lhv$a;->c(F)Lhv$a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1}, Lhv$a;->b(I)Lhv$a;

    invoke-virtual {v0}, Lhv$a;->a()Lhv;

    new-instance v0, Lb4;

    invoke-direct {v0}, Lb4;-><init>()V

    sput-object v0, Lev;->v:Lb4;

    invoke-virtual {v0, v2, v2}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->v:Lb4;

    const/high16 v1, -0x80000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->v:Lb4;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->v:Lb4;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->v:Lb4;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, -0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->v:Lb4;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->v:Lb4;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lb4;

    invoke-direct {v0}, Lb4;-><init>()V

    sput-object v0, Lev;->w:Lb4;

    invoke-virtual {v0, v1, v1}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->w:Lb4;

    const/16 v7, -0x3ec

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v7}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->w:Lb4;

    const/16 v8, -0x3ef

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->w:Lb4;

    const/16 v8, -0x3f2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->w:Lb4;

    const/16 v8, -0x6e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lb4;

    invoke-direct {v0}, Lb4;-><init>()V

    sput-object v0, Lev;->x:Lb4;

    invoke-virtual {v0, v4, v4}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->x:Lb4;

    const/16 v8, 0x2bc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->x:Lb4;

    const/16 v8, 0x2c0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->x:Lb4;

    const/16 v8, 0x320

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->x:Lb4;

    const/16 v8, 0x321

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->x:Lb4;

    const/16 v8, 0x322

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->x:Lb4;

    const/16 v8, 0x324

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->x:Lb4;

    const/16 v8, 0x325

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lb4;

    invoke-direct {v0}, Lb4;-><init>()V

    sput-object v0, Lev;->y:Lb4;

    invoke-virtual {v0, v2, v2}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->y:Lb4;

    invoke-virtual {v0, v1, v1}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->y:Lb4;

    invoke-virtual {v0, v3, v3}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->y:Lb4;

    invoke-virtual {v0, v4, v4}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lb4;

    invoke-direct {v0}, Lb4;-><init>()V

    sput-object v0, Lev;->z:Lb4;

    invoke-virtual {v0, v2, v2}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->z:Lb4;

    const/16 v2, -0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->z:Lb4;

    const/16 v1, -0x3eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->z:Lb4;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->z:Lb4;

    invoke-virtual {v0, v5, v7}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lev;->z:Lb4;

    const/16 v1, -0x3ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroidx/media2/common/SessionPlayer;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lev;->f:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lev;->g:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lev;->h:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lev;->k:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lev;->n:Ljava/lang/Object;

    new-instance v0, Lev$c0;

    invoke-direct {v0}, Lev$c0;-><init>()V

    iput-object v0, p0, Lev;->o:Lev$c0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lev;->p:Ljava/util/ArrayList;

    const-string v0, "context shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lev;->j:I

    invoke-static {p1}, Lfv;->t(Landroid/content/Context;)Lfv;

    move-result-object v0

    iput-object v0, p0, Lev;->c:Lfv;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lev;->d:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lev;->c:Lfv;

    new-instance v2, Lev$e0;

    invoke-direct {v2, p0}, Lev$e0;-><init>(Lev;)V

    invoke-virtual {v1, v0, v2}, Lfv;->P(Ljava/util/concurrent/Executor;Lfv$b;)V

    iget-object v0, p0, Lev;->c:Lfv;

    iget-object v1, p0, Lev;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lev$f0;

    invoke-direct {v2, p0}, Lev$f0;-><init>(Lev;)V

    invoke-virtual {v0, v1, v2}, Lfv;->O(Ljava/util/concurrent/Executor;Lfv$a;)V

    const/4 v0, -0x2

    iput v0, p0, Lev;->r:I

    new-instance v0, Ldv;

    invoke-direct {v0, p1, p0}, Ldv;-><init>(Landroid/content/Context;Lev;)V

    iput-object v0, p0, Lev;->m:Ldv;

    return-void
.end method


# virtual methods
.method public A()I
    .locals 4

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lev;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v0, p0, Lev;->r:I

    if-gez v0, :cond_1

    monitor-exit v1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_4

    iget v0, p0, Lev;->q:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    monitor-exit v1

    return v2

    :cond_3
    :goto_0
    iget-object v0, p0, Lev;->o:Lev$c0;

    iget-object v2, p0, Lev;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lev$c0;->b(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    :cond_4
    iget-object v2, p0, Lev;->o:Lev$c0;

    iget-object v3, p0, Lev;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lev$c0;->b(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public A0()Lxv;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxv<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lxv;->r()Lxv;

    move-result-object v0

    iget-object v1, p0, Lev;->f:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lev;->c:Lfv;

    invoke-virtual {v2}, Lfv;->V()Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-virtual {p0, v3, v0, v2}, Lev;->P(ILxv;Ljava/lang/Object;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public B(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 0

    invoke-virtual {p0, p1}, Lev;->e0(I)Lev$k0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lev;->Y(Lev$k0;)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object p1

    return-object p1
.end method

.method public B0()Lka;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lka<",
            "Landroidx/media2/common/MediaItem;",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lev;->r:I

    const/4 v1, 0x0

    if-gez v0, :cond_1

    iget-object v0, p0, Lev;->s:Landroidx/media2/common/MediaItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lev;->t:Landroidx/media2/common/MediaItem;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iput-object v1, p0, Lev;->s:Landroidx/media2/common/MediaItem;

    iput-object v1, p0, Lev;->t:Landroidx/media2/common/MediaItem;

    new-instance v0, Lka;

    invoke-direct {v0, v1, v1}, Lka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    iget-object v2, p0, Lev;->s:Landroidx/media2/common/MediaItem;

    iget-object v3, p0, Lev;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lev;->p:Ljava/util/ArrayList;

    iget v2, p0, Lev;->r:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/MediaItem;

    iput-object v0, p0, Lev;->s:Landroidx/media2/common/MediaItem;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    iget v2, p0, Lev;->r:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lev;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, -0x1

    if-lt v2, v3, :cond_5

    iget v2, p0, Lev;->q:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x0

    :cond_5
    :goto_2
    if-ne v2, v4, :cond_6

    iput-object v1, p0, Lev;->t:Landroidx/media2/common/MediaItem;

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lev;->t:Landroidx/media2/common/MediaItem;

    iget-object v4, p0, Lev;->p:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lev;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaItem;

    iput-object v2, p0, Lev;->t:Landroidx/media2/common/MediaItem;

    goto :goto_4

    :cond_7
    :goto_3
    move-object v2, v1

    :goto_4
    if-nez v0, :cond_8

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    new-instance v1, Lka;

    invoke-direct {v1, v0, v2}, Lka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    return-object v1
.end method

.method public C()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lev;->g0()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lev$k0;

    invoke-virtual {p0, v3}, Lev;->Y(Lev$k0;)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public D()Landroidx/media2/common/VideoSize;
    .locals 3

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/media2/common/VideoSize;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroidx/media2/common/VideoSize;-><init>(II)V

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroidx/media2/common/VideoSize;

    iget-object v1, p0, Lev;->c:Lfv;

    invoke-virtual {v1}, Lfv;->F()I

    move-result v1

    iget-object v2, p0, Lev;->c:Lfv;

    invoke-virtual {v2}, Lfv;->E()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media2/common/VideoSize;-><init>(II)V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public E()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lev;->S()Lxv;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lev$u;

    iget-object v1, p0, Lev;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Lev$u;-><init>(Lev;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0, v0}, Lev;->R(Lev$h0;)V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public F()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lev;->S()Lxv;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lev$j;

    iget-object v1, p0, Lev;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Lev$j;-><init>(Lev;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0, v0}, Lev;->R(Lev$h0;)V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public H(J)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lev;->S()Lxv;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lev$w;

    iget-object v3, p0, Lev;->d:Ljava/util/concurrent/ExecutorService;

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lev$w;-><init>(Lev;Ljava/util/concurrent/Executor;ZJ)V

    invoke-virtual {p0, v0}, Lev;->R(Lev$h0;)V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public I(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lev;->X(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lev$k0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lev;->o0(Lev$k0;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public J(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lev;->S()Lxv;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lev$x;

    iget-object v1, p0, Lev;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Lev$x;-><init>(Lev;Ljava/util/concurrent/Executor;F)V

    invoke-virtual {p0, v0}, Lev;->R(Lev$h0;)V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public K(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lev;->z0(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public L()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lev;->S()Lxv;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lev$b;

    iget-object v1, p0, Lev;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Lev$b;-><init>(Lev;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0, v0}, Lev;->R(Lev$h0;)V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public M()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lev;->S()Lxv;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lev$a;

    iget-object v1, p0, Lev;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Lev$a;-><init>(Lev;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0, v0}, Lev;->R(Lev$h0;)V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public O(Lev$g0;Lxv;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lev$d;

    invoke-direct {v0, p0, p2, p3, p1}, Lev$d;-><init>(Lev;Lxv;Ljava/lang/Object;Lev$g0;)V

    iget-object p1, p0, Lev;->d:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p2, v0, p1}, Lwv;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public P(ILxv;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lev$g0;

    invoke-direct {v0, p1, p2}, Lev$g0;-><init>(ILxv;)V

    iget-object p1, p0, Lev;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2, p3}, Lev;->O(Lev$g0;Lxv;Ljava/lang/Object;)V

    return-void
.end method

.method public Q(ILxv;Lev$k0;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lev$g0;

    invoke-direct {v0, p1, p2, p3}, Lev$g0;-><init>(ILxv;Lev$k0;)V

    iget-object p1, p0, Lev;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2, p4}, Lev;->O(Lev$g0;Lxv;Ljava/lang/Object;)V

    return-void
.end method

.method public R(Lev$h0;)V
    .locals 2

    iget-object v0, p0, Lev;->g:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lev;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lev;->a0()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public S()Lxv;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxv<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lxv;->r()Lxv;

    move-result-object v0

    new-instance v1, Landroidx/media2/common/SessionPlayer$b;

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/media2/common/SessionPlayer$b;-><init>(ILandroidx/media2/common/MediaItem;)V

    invoke-virtual {v0, v1}, Lxv;->o(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public T(I)Lxv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lxv<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lev;->U(ILandroidx/media2/common/MediaItem;)Lxv;

    move-result-object p1

    return-object p1
.end method

.method public U(ILandroidx/media2/common/MediaItem;)Lxv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Lxv<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lxv;->r()Lxv;

    move-result-object v0

    new-instance v1, Landroidx/media2/common/SessionPlayer$b;

    if-nez p2, :cond_0

    iget-object p2, p0, Lev;->c:Lfv;

    invoke-virtual {p2}, Lfv;->x()Landroidx/media2/common/MediaItem;

    move-result-object p2

    :cond_0
    invoke-direct {v1, p1, p2}, Landroidx/media2/common/SessionPlayer$b;-><init>(ILandroidx/media2/common/MediaItem;)V

    invoke-virtual {v0, v1}, Lxv;->o(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public V(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lxv<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lev;->W(ILandroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public W(ILandroidx/media2/common/MediaItem;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Ljava/util/List<",
            "Lxv<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Lev;->U(ILandroidx/media2/common/MediaItem;)Lxv;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final X(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lev$k0;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lev$k0;

    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->g()I

    move-result v1

    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->i()Landroidx/media2/common/MediaItem;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->j()I

    move-result v3

    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->f()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lev$k0;-><init>(ILandroidx/media2/common/MediaItem;ILandroid/media/MediaFormat;)V

    return-object v0
.end method

.method public Y(Lev$k0;)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {p1}, Lev$k0;->b()I

    move-result v1

    invoke-virtual {p1}, Lev$k0;->c()Landroidx/media2/common/MediaItem;

    move-result-object v2

    invoke-virtual {p1}, Lev$k0;->d()I

    move-result v3

    invoke-virtual {p1}, Lev$k0;->a()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;-><init>(ILandroidx/media2/common/MediaItem;ILandroid/media/MediaFormat;)V

    return-object v0
.end method

.method public Z(Lev$k0;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lev$k0;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    const-string v0, "trackInfo shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lev;->S()Lxv;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lev$k0;->b()I

    move-result v0

    new-instance v1, Lev$i;

    iget-object v2, p0, Lev;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, p0, v2, v0, p1}, Lev$i;-><init>(Lev;Ljava/util/concurrent/Executor;ILev$k0;)V

    invoke-virtual {p0, v1}, Lev;->R(Lev$h0;)V

    return-object v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lev;->X(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lev$k0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lev;->Z(Lev$k0;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final a0()V
    .locals 4

    iget-object v0, p0, Lev;->g:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lev;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lev$h0;

    invoke-virtual {v2}, Lwv;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lev$h0;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lev;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lev$h0;

    iget-boolean v3, v2, Lev$h0;->j:Z

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lev$h0;->s()Z

    goto :goto_1

    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b0()Landroidx/media/AudioAttributesCompat;
    .locals 3

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lev;->c:Lfv;

    invoke-virtual {v0}, Lfv;->v()Landroidx/media/AudioAttributesCompat;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    return-object v2

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public c0()Ldv;
    .locals 1

    iget-object v0, p0, Lev;->m:Ldv;

    return-object v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lev;->l:Z

    invoke-virtual {p0}, Lev;->m0()V

    iget-object v1, p0, Lev;->m:Ldv;

    invoke-virtual {v1}, Ldv;->a()V

    iget-object v1, p0, Lev;->c:Lfv;

    invoke-virtual {v1}, Lfv;->s()V

    iget-object v1, p0, Lev;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d0()F
    .locals 2

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    monitor-exit v0

    return v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lev;->c:Lfv;

    invoke-virtual {v0}, Lfv;->B()F

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public e()J
    .locals 7

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    monitor-exit v0

    return-wide v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lev;->c:Lfv;

    invoke-virtual {v0}, Lfv;->w()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    return-wide v0

    :catch_0
    :cond_1
    return-wide v2

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public e0(I)Lev$k0;
    .locals 3

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lev;->c:Lfv;

    invoke-virtual {v0, p1}, Lfv;->C(I)I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lev;->f0(I)Lev$k0;

    move-result-object v2

    :goto_0
    return-object v2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public f0(I)Lev$k0;
    .locals 4

    iget-object v0, p0, Lev;->c:Lfv;

    invoke-virtual {v0}, Lfv;->D()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfv$c;

    iget-object v1, p0, Lev;->c:Lfv;

    invoke-virtual {v1}, Lfv;->x()Landroidx/media2/common/MediaItem;

    move-result-object v1

    new-instance v2, Lev$k0;

    invoke-virtual {v0}, Lfv$c;->b()I

    move-result v3

    invoke-virtual {v0}, Lfv$c;->a()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-direct {v2, p1, v1, v3, v0}, Lev$k0;-><init>(ILandroidx/media2/common/MediaItem;ILandroid/media/MediaFormat;)V

    return-object v2
.end method

.method public g0()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lev$k0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lev;->c:Lfv;

    invoke-virtual {v0}, Lfv;->D()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lev;->c:Lfv;

    invoke-virtual {v1}, Lfv;->x()Landroidx/media2/common/MediaItem;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfv$c;

    new-instance v5, Lev$k0;

    invoke-virtual {v4}, Lfv$c;->b()I

    move-result v6

    invoke-virtual {v4}, Lfv$c;->a()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-direct {v5, v3, v1, v6, v4}, Lev$k0;-><init>(ILandroidx/media2/common/MediaItem;ILandroid/media/MediaFormat;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public h()Landroidx/media2/common/MediaItem;
    .locals 2

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lev;->c:Lfv;

    invoke-virtual {v0}, Lfv;->x()Landroidx/media2/common/MediaItem;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public h0(Lfv;Landroidx/media2/common/MediaItem;II)V
    .locals 3

    iget-object p1, p0, Lev;->f:Ljava/util/ArrayDeque;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lev;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lev$g0;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-string p1, "MediaPlayer"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No matching call type for "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ". Possibly because of reset()."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, v0, Lev$g0;->c:Lev$k0;

    iget v1, v0, Lev$g0;->a:I

    if-eq p3, v1, :cond_1

    const-string p4, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call type does not match. expeced:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lev$g0;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p4, -0x80000000

    :cond_1
    if-nez p4, :cond_7

    const/4 v1, 0x2

    if-eq p3, v1, :cond_6

    const/16 v2, 0x13

    if-eq p3, v2, :cond_5

    const/16 v2, 0x18

    if-eq p3, v2, :cond_4

    const/4 v2, 0x4

    if-eq p3, v2, :cond_3

    const/4 v2, 0x5

    if-eq p3, v2, :cond_2

    const/4 v1, 0x6

    if-eq p3, v1, :cond_3

    packed-switch p3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object p1, p0, Lev;->c:Lfv;

    invoke-virtual {p1}, Lfv;->v()Landroidx/media/AudioAttributesCompat;

    move-result-object p1

    new-instance v1, Lev$r;

    invoke-direct {v1, p0, p1}, Lev$r;-><init>(Lev;Landroidx/media/AudioAttributesCompat;)V

    goto :goto_1

    :pswitch_1
    new-instance v1, Lev$s;

    invoke-direct {v1, p0, p1}, Lev$s;-><init>(Lev;Lev$k0;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lev;->l()J

    move-result-wide v1

    new-instance p1, Lev$o;

    invoke-direct {p1, p0, v1, v2}, Lev$o;-><init>(Lev;J)V

    :goto_0
    invoke-virtual {p0, p1}, Lev;->j0(Lev$j0;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v1}, Lev;->y0(I)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lev;->y0(I)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lev;->c:Lfv;

    invoke-virtual {p1}, Lfv;->A()Lhv;

    move-result-object p1

    invoke-virtual {p1}, Lhv;->d()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    new-instance v1, Lev$q;

    invoke-direct {v1, p0, p1}, Lev$q;-><init>(Lev;F)V

    goto :goto_1

    :cond_5
    new-instance p1, Lev$p;

    invoke-direct {p1, p0, p2}, Lev$p;-><init>(Lev;Landroidx/media2/common/MediaItem;)V

    goto :goto_0

    :cond_6
    new-instance v1, Lev$t;

    invoke-direct {v1, p0, p1}, Lev$t;-><init>(Lev;Lev$k0;)V

    :goto_1
    invoke-virtual {p0, v1}, Lev;->j0(Lev$j0;)V

    :cond_7
    :goto_2
    const/16 p1, 0x3e9

    if-eq p3, p1, :cond_9

    sget-object p1, Lev;->v:Lb4;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lh4;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lev;->v:Lb4;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lh4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_8
    const/4 p1, -0x1

    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p3, v0, Lev$g0;->b:Lxv;

    new-instance p4, Landroidx/media2/common/SessionPlayer$b;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p4, p1, p2}, Landroidx/media2/common/SessionPlayer$b;-><init>(ILandroidx/media2/common/MediaItem;)V

    goto :goto_5

    :cond_9
    sget-object p1, Lev;->z:Lb4;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lh4;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lev;->z:Lb4;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lh4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4

    :cond_a
    const/16 p1, -0x3eb

    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p3, v0, Lev$g0;->b:Lxv;

    new-instance p4, Lev$b0;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p4, p1, p2}, Lev$b0;-><init>(ILandroidx/media2/common/MediaItem;)V

    :goto_5
    invoke-virtual {p3, p4}, Lxv;->o(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lev;->a0()V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i0(Lev$d0;)V
    .locals 4

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/media2/common/SessionPlayer;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lka;

    iget-object v2, v1, Lka;->a:Ljava/lang/Object;

    instance-of v3, v2, Lev$i0;

    if-eqz v3, :cond_1

    check-cast v2, Lev$i0;

    iget-object v1, v1, Lka;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v3, Lev$n;

    invoke-direct {v3, p0, p1, v2}, Lev$n;-><init>(Lev;Lev$d0;Lev$i0;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public j0(Lev$j0;)V
    .locals 4

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/media2/common/SessionPlayer;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lka;

    iget-object v2, v1, Lka;->a:Ljava/lang/Object;

    check-cast v2, Landroidx/media2/common/SessionPlayer$a;

    iget-object v1, v1, Lka;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v3, Lev$m;

    invoke-direct {v3, p0, p1, v2}, Lev$m;-><init>(Lev;Lev$j0;Landroidx/media2/common/SessionPlayer$a;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public k0()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lev;->S()Lxv;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lev$v;

    iget-object v1, p0, Lev;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Lev$v;-><init>(Lev;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0, v0}, Lev;->R(Lev$h0;)V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public l()J
    .locals 7

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    monitor-exit v0

    return-wide v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lev;->c:Lfv;

    invoke-virtual {v0}, Lfv;->y()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    return-wide v0

    :catch_0
    :cond_1
    return-wide v2

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public l0(Ljava/util/concurrent/Executor;Lev$i0;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/media2/common/SessionPlayer;->G(Ljava/util/concurrent/Executor;Landroidx/media2/common/SessionPlayer$a;)V

    return-void
.end method

.method public m()J
    .locals 7

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    monitor-exit v0

    return-wide v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lev;->c:Lfv;

    invoke-virtual {v0}, Lfv;->z()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    return-wide v0

    :catch_0
    :cond_1
    return-wide v2

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public m0()V
    .locals 5

    iget-object v0, p0, Lev;->f:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lev;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lev$g0;

    iget-object v2, v2, Lev$g0;->b:Lxv;

    invoke-virtual {v2, v3}, Lwv;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lev;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v1, p0, Lev;->g:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lev;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lev$h0;

    iget-boolean v4, v2, Lev$h0;->k:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lwv;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lwv;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v3}, Lwv;->cancel(Z)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lev;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Lev;->j:I

    iget-object v2, p0, Lev;->k:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v2, p0, Lev;->n:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lev;->o:Lev$c0;

    invoke-virtual {v0}, Lev$c0;->a()V

    iget-object v0, p0, Lev;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lev;->s:Landroidx/media2/common/MediaItem;

    iput-object v0, p0, Lev;->t:Landroidx/media2/common/MediaItem;

    const/4 v0, -0x1

    iput v0, p0, Lev;->r:I

    iput-boolean v1, p0, Lev;->u:Z

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lev;->m:Ldv;

    invoke-virtual {v0}, Ldv;->d()V

    iget-object v0, p0, Lev;->c:Lfv;

    invoke-virtual {v0}, Lfv;->J()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1
.end method

.method public n0(JI)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lev;->S()Lxv;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lev$g;

    iget-object v3, p0, Lev;->d:Ljava/util/concurrent/ExecutorService;

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    move v5, p3

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lev$g;-><init>(Lev;Ljava/util/concurrent/Executor;ZIJ)V

    invoke-virtual {p0, v0}, Lev;->R(Lev$h0;)V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public o0(Lev$k0;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lev$k0;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    const-string v0, "trackInfo shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lev;->S()Lxv;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lev$k0;->b()I

    move-result v0

    new-instance v1, Lev$h;

    iget-object v2, p0, Lev;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, p0, v2, v0, p1}, Lev$h;-><init>(Lev;Ljava/util/concurrent/Executor;ILev$k0;)V

    invoke-virtual {p0, v1}, Lev;->R(Lev$h0;)V

    return-object v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public p0(Landroidx/media/AudioAttributesCompat;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media/AudioAttributesCompat;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    const-string v0, "attr shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lev;->S()Lxv;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lev$y;

    iget-object v1, p0, Lev;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Lev$y;-><init>(Lev;Ljava/util/concurrent/Executor;Landroidx/media/AudioAttributesCompat;)V

    invoke-virtual {p0, v0}, Lev;->R(Lev$h0;)V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public q0(Landroidx/media2/common/MediaItem;I)V
    .locals 3

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lev;->k:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_1

    :cond_0
    new-instance v0, Lev$l;

    invoke-direct {v0, p0, p1, p2}, Lev$l;-><init>(Lev;Landroidx/media2/common/MediaItem;I)V

    invoke-virtual {p0, v0}, Lev;->j0(Lev$j0;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public r()I
    .locals 4

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lev;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v0, p0, Lev;->r:I

    if-gez v0, :cond_1

    monitor-exit v1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lev;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    iget v0, p0, Lev;->q:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    monitor-exit v1

    return v2

    :cond_3
    :goto_0
    iget-object v0, p0, Lev;->o:Lev$c0;

    iget-object v2, p0, Lev;->p:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lev$c0;->b(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    :cond_4
    iget-object v2, p0, Lev;->o:Lev$c0;

    iget-object v3, p0, Lev;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lev$c0;->b(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public r0(Landroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    const-string v0, "item shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Landroidx/media2/common/FileMediaItem;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v0}, Landroidx/media2/common/FileMediaItem;->o()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File descriptor is closed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lev;->S()Lxv;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lev$z;

    iget-object v1, p0, Lev;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Lev$z;-><init>(Lev;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem;)V

    invoke-virtual {p0, v0}, Lev;->R(Lev$h0;)V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final s0(Landroidx/media2/common/MediaItem;)Lxv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Lxv<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lxv;->r()Lxv;

    move-result-object v0

    iget-object v1, p0, Lev;->f:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lev;->c:Lfv;

    invoke-virtual {v2, p1}, Lfv;->Q(Landroidx/media2/common/MediaItem;)Ljava/lang/Object;

    move-result-object p1

    const/16 v2, 0x13

    invoke-virtual {p0, v2, v0, p1}, Lev;->P(ILxv;Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p0, Lev;->n:Ljava/lang/Object;

    monitor-enter p1

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lev;->u:Z

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public t0(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Ljava/util/List<",
            "Lxv<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation

    const-string v0, "curItem shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lev;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->u:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lev;->u0(Landroidx/media2/common/MediaItem;)Lxv;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lev;->A0()Lxv;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lev;->s0(Landroidx/media2/common/MediaItem;)Lxv;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lev;->u0(Landroidx/media2/common/MediaItem;)Lxv;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public u0(Landroidx/media2/common/MediaItem;)Lxv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Lxv<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lxv;->r()Lxv;

    move-result-object v0

    iget-object v1, p0, Lev;->f:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lev;->c:Lfv;

    invoke-virtual {v2, p1}, Lfv;->R(Landroidx/media2/common/MediaItem;)Ljava/lang/Object;

    move-result-object p1

    const/16 v2, 0x16

    invoke-virtual {p0, v2, v0, p1}, Lev;->P(ILxv;Ljava/lang/Object;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public v()F
    .locals 3

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lev;->c:Lfv;

    invoke-virtual {v0}, Lfv;->A()Lhv;

    move-result-object v0

    invoke-virtual {v0}, Lhv;->d()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    return v2

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public v0(Lhv;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhv;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    const-string v0, "params shouldn\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lev;->S()Lxv;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lev$f;

    iget-object v1, p0, Lev;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Lev$f;-><init>(Lev;Ljava/util/concurrent/Executor;Lhv;)V

    invoke-virtual {p0, v0}, Lev;->R(Lev$h0;)V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public w0(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lev;->S()Lxv;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lev$e;

    iget-object v1, p0, Lev;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Lev$e;-><init>(Lev;Ljava/util/concurrent/Executor;F)V

    invoke-virtual {p0, v0}, Lev;->R(Lev$h0;)V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "volume should be between 0.0 and 1.0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x0(F)Lxv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lxv<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lxv;->r()Lxv;

    move-result-object v0

    iget-object v1, p0, Lev;->f:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lev;->c:Lfv;

    invoke-virtual {v2, p1}, Lfv;->T(F)Ljava/lang/Object;

    move-result-object p1

    const/16 v2, 0x1a

    invoke-virtual {p0, v2, v0, p1}, Lev;->P(ILxv;Ljava/lang/Object;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public y()I
    .locals 2

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lev;->j:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public y0(I)V
    .locals 2

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lev;->j:I

    if-eq v1, p1, :cond_0

    iput p1, p0, Lev;->j:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    new-instance v0, Lev$k;

    invoke-direct {v0, p0, p1}, Lev$k;-><init>(Lev;I)V

    invoke-virtual {p0, v0}, Lev;->j0(Lev$j0;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public z0(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lev;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lev;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lev;->S()Lxv;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lev$c;

    iget-object v1, p0, Lev;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Lev$c;-><init>(Lev;Ljava/util/concurrent/Executor;Landroid/view/Surface;)V

    invoke-virtual {p0, v0}, Lev;->R(Lev$h0;)V

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
