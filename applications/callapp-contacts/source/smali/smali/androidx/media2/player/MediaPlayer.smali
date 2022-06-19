.class public final Landroidx/media2/player/MediaPlayer;
.super Landroidx/media2/common/SessionPlayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/MediaPlayer$c;,
        Landroidx/media2/player/MediaPlayer$b;,
        Landroidx/media2/player/MediaPlayer$NoDrmSchemeException;,
        Landroidx/media2/player/MediaPlayer$a;,
        Landroidx/media2/player/MediaPlayer$TrackInfo;,
        Landroidx/media2/player/MediaPlayer$i;,
        Landroidx/media2/player/MediaPlayer$e;,
        Landroidx/media2/player/MediaPlayer$f;,
        Landroidx/media2/player/MediaPlayer$d;,
        Landroidx/media2/player/MediaPlayer$j;,
        Landroidx/media2/player/MediaPlayer$h;,
        Landroidx/media2/player/MediaPlayer$g;
    }
.end annotation


# static fields
.field static final a:Landroidx/media2/player/j;

.field static b:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static c:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static d:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static e:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static f:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field g:Landroidx/media2/player/MediaPlayer2;

.field h:Ljava/util/concurrent/ExecutorService;

.field final i:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/player/MediaPlayer$g;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/player/MediaPlayer$h<",
            "+",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public final k:Landroidx/media2/player/a;

.field final l:Ljava/lang/Object;

.field m:Landroidx/media2/player/MediaPlayer$c;

.field n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field o:Landroidx/media2/common/MediaMetadata;

.field p:I

.field q:I

.field r:I

.field s:Landroidx/media2/common/MediaItem;

.field t:Landroidx/media2/common/MediaItem;

.field private final u:Ljava/lang/Object;

.field private v:I

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media2/common/MediaItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private x:Z

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 421
    new-instance v0, Landroidx/media2/player/j$a;

    invoke-direct {v0}, Landroidx/media2/player/j$a;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 422
    invoke-virtual {v0, v1}, Landroidx/media2/player/j$a;->a(F)Landroidx/media2/player/j$a;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Landroidx/media2/player/j$a;->b()Landroidx/media2/player/j$a;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Landroidx/media2/player/j$a;->a()Landroidx/media2/player/j$a;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Landroidx/media2/player/j$a;->c()Landroidx/media2/player/j;

    move-result-object v0

    sput-object v0, Landroidx/media2/player/MediaPlayer;->a:Landroidx/media2/player/j;

    .line 442
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    .line 443
    sput-object v0, Landroidx/media2/player/MediaPlayer;->b:Landroidx/b/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Landroidx/media2/player/MediaPlayer;->b:Landroidx/b/a;

    const/high16 v2, -0x80000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Landroidx/media2/player/MediaPlayer;->b:Landroidx/b/a;

    const/4 v2, 0x1

    .line 446
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 445
    invoke-virtual {v0, v2, v3}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Landroidx/media2/player/MediaPlayer;->b:Landroidx/b/a;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Landroidx/media2/player/MediaPlayer;->b:Landroidx/b/a;

    const/4 v4, 0x3

    .line 449
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, -0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 448
    invoke-virtual {v0, v4, v5}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Landroidx/media2/player/MediaPlayer;->b:Landroidx/b/a;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Landroidx/media2/player/MediaPlayer;->b:Landroidx/b/a;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    .line 454
    sput-object v0, Landroidx/media2/player/MediaPlayer;->c:Landroidx/b/a;

    invoke-virtual {v0, v2, v2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Landroidx/media2/player/MediaPlayer;->c:Landroidx/b/a;

    const/16 v7, -0x3ec

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v7}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Landroidx/media2/player/MediaPlayer;->c:Landroidx/b/a;

    const/16 v8, -0x3ef

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Landroidx/media2/player/MediaPlayer;->c:Landroidx/b/a;

    const/16 v8, -0x3f2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Landroidx/media2/player/MediaPlayer;->c:Landroidx/b/a;

    const/16 v8, -0x6e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    .line 461
    sput-object v0, Landroidx/media2/player/MediaPlayer;->d:Landroidx/b/a;

    invoke-virtual {v0, v4, v4}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Landroidx/media2/player/MediaPlayer;->d:Landroidx/b/a;

    const/16 v8, 0x2bc

    .line 464
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 463
    invoke-virtual {v0, v8, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Landroidx/media2/player/MediaPlayer;->d:Landroidx/b/a;

    const/16 v8, 0x2c0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Landroidx/media2/player/MediaPlayer;->d:Landroidx/b/a;

    const/16 v8, 0x320

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Landroidx/media2/player/MediaPlayer;->d:Landroidx/b/a;

    const/16 v8, 0x321

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Landroidx/media2/player/MediaPlayer;->d:Landroidx/b/a;

    const/16 v8, 0x322

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Landroidx/media2/player/MediaPlayer;->d:Landroidx/b/a;

    const/16 v8, 0x324

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Landroidx/media2/player/MediaPlayer;->d:Landroidx/b/a;

    const/16 v8, 0x325

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    .line 473
    sput-object v0, Landroidx/media2/player/MediaPlayer;->e:Landroidx/b/a;

    invoke-virtual {v0, v1, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Landroidx/media2/player/MediaPlayer;->e:Landroidx/b/a;

    invoke-virtual {v0, v2, v2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Landroidx/media2/player/MediaPlayer;->e:Landroidx/b/a;

    invoke-virtual {v0, v3, v3}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Landroidx/media2/player/MediaPlayer;->e:Landroidx/b/a;

    invoke-virtual {v0, v4, v4}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    .line 479
    sput-object v0, Landroidx/media2/player/MediaPlayer;->f:Landroidx/b/a;

    invoke-virtual {v0, v1, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Landroidx/media2/player/MediaPlayer;->f:Landroidx/b/a;

    const/16 v1, -0x3e9

    .line 482
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 481
    invoke-virtual {v0, v2, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Landroidx/media2/player/MediaPlayer;->f:Landroidx/b/a;

    const/16 v1, -0x3eb

    .line 484
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 483
    invoke-virtual {v0, v3, v2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Landroidx/media2/player/MediaPlayer;->f:Landroidx/b/a;

    .line 486
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 485
    invoke-virtual {v0, v4, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Landroidx/media2/player/MediaPlayer;->f:Landroidx/b/a;

    invoke-virtual {v0, v5, v7}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Landroidx/media2/player/MediaPlayer;->f:Landroidx/b/a;

    const/16 v1, -0x3ed

    .line 490
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 489
    invoke-virtual {v0, v6, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 675
    invoke-direct {p0}, Landroidx/media2/common/SessionPlayer;-><init>()V

    .line 527
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/ArrayDeque;

    .line 625
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->j:Ljava/util/ArrayDeque;

    .line 629
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    .line 633
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->w:Ljava/util/Map;

    .line 641
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    .line 643
    new-instance v0, Landroidx/media2/player/MediaPlayer$c;

    invoke-direct {v0}, Landroidx/media2/player/MediaPlayer$c;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    const-string v0, "context shouldn\'t be null"

    .line 677
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 679
    iput v0, p0, Landroidx/media2/player/MediaPlayer;->v:I

    .line 4235
    new-instance v0, Landroidx/media2/player/c;

    invoke-direct {v0, p1}, Landroidx/media2/player/c;-><init>(Landroid/content/Context;)V

    .line 680
    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    const/4 v0, 0x1

    .line 681
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    .line 682
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    new-instance v2, Landroidx/media2/player/MediaPlayer$e;

    invoke-direct {v2, p0}, Landroidx/media2/player/MediaPlayer$e;-><init>(Landroidx/media2/player/MediaPlayer;)V

    invoke-virtual {v1, v0, v2}, Landroidx/media2/player/MediaPlayer2;->a(Ljava/util/concurrent/Executor;Landroidx/media2/player/MediaPlayer2$c;)V

    .line 683
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Landroidx/media2/player/MediaPlayer$f;

    invoke-direct {v2, p0}, Landroidx/media2/player/MediaPlayer$f;-><init>(Landroidx/media2/player/MediaPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroidx/media2/player/MediaPlayer2;->a(Ljava/util/concurrent/Executor;Landroidx/media2/player/MediaPlayer2$a;)V

    const/4 v0, -0x2

    .line 684
    iput v0, p0, Landroidx/media2/player/MediaPlayer;->r:I

    .line 685
    new-instance v0, Landroidx/media2/player/a;

    invoke-direct {v0, p1, p0}, Landroidx/media2/player/a;-><init>(Landroid/content/Context;Landroidx/media2/player/MediaPlayer;)V

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->k:Landroidx/media2/player/a;

    return-void
.end method

.method private C()Landroidx/media2/player/VideoSize;
    .locals 3

    .line 2153
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 2154
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 2155
    new-instance v1, Landroidx/media2/player/VideoSize;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroidx/media2/player/VideoSize;-><init>(II)V

    monitor-exit v0

    return-object v1

    .line 2157
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2158
    new-instance v0, Landroidx/media2/player/VideoSize;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer2;->l()I

    move-result v1

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer2;->m()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media2/player/VideoSize;-><init>(II)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 2157
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static D()Landroidx/c/a/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/c/a/b<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 3076
    invoke-static {}, Landroidx/c/a/b;->a()Landroidx/c/a/b;

    move-result-object v0

    .line 3077
    new-instance v1, Landroidx/media2/common/SessionPlayer$b;

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/media2/common/SessionPlayer$b;-><init>(ILandroidx/media2/common/MediaItem;)V

    invoke-virtual {v0, v1}, Landroidx/c/a/b;->a(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private a(Landroidx/media2/player/MediaPlayer$g;Landroidx/c/a/b;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/player/MediaPlayer$g;",
            "Landroidx/c/a/b<",
            "+",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 711
    new-instance v0, Landroidx/media2/player/MediaPlayer$1;

    invoke-direct {v0, p0, p2, p3, p1}, Landroidx/media2/player/MediaPlayer$1;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/c/a/b;Ljava/lang/Object;Landroidx/media2/player/MediaPlayer$g;)V

    iget-object p1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p2, v0, p1}, Landroidx/c/a/b;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static b(II)I
    .locals 0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method private c(Landroidx/media2/common/MediaItem;)Landroidx/c/a/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Landroidx/c/a/b<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 3030
    invoke-static {}, Landroidx/c/a/b;->a()Landroidx/c/a/b;

    move-result-object v0

    .line 3031
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 3032
    :try_start_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v2, p1}, Landroidx/media2/player/MediaPlayer2;->a(Landroidx/media2/common/MediaItem;)Ljava/lang/Object;

    move-result-object p1

    const/16 v2, 0x13

    .line 3033
    invoke-virtual {p0, v2, v0, p1}, Landroidx/media2/player/MediaPlayer;->a(ILandroidx/c/a/b;Ljava/lang/Object;)V

    .line 3034
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3035
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter p1

    const/4 v1, 0x1

    .line 3036
    :try_start_1
    iput-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->y:Z

    .line 3037
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

    .line 3034
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private g(I)Landroidx/media2/player/MediaPlayer$TrackInfo;
    .locals 3

    .line 2521
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 2522
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2523
    monitor-exit v0

    return-object v2

    .line 2525
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2526
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0, p1}, Landroidx/media2/player/MediaPlayer2;->a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v2

    .line 2527
    :cond_1
    new-instance v0, Landroidx/media2/player/MediaPlayer$TrackInfo;

    invoke-direct {v0, p1}, Landroidx/media2/player/MediaPlayer$TrackInfo;-><init>(Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 2525
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method final A()Landroidx/core/e/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/e/b<",
            "Landroidx/media2/common/MediaItem;",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 3129
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->r:I

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 3130
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->s:Landroidx/media2/common/MediaItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->t:Landroidx/media2/common/MediaItem;

    if-nez v0, :cond_0

    return-object v1

    .line 3133
    :cond_0
    iput-object v1, p0, Landroidx/media2/player/MediaPlayer;->s:Landroidx/media2/common/MediaItem;

    .line 3134
    iput-object v1, p0, Landroidx/media2/player/MediaPlayer;->t:Landroidx/media2/common/MediaItem;

    .line 3135
    new-instance v0, Landroidx/core/e/b;

    invoke-direct {v0, v1, v1}, Landroidx/core/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 3137
    :cond_1
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->s:Landroidx/media2/common/MediaItem;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3138
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    iget v2, p0, Landroidx/media2/player/MediaPlayer;->r:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/MediaItem;

    iput-object v0, p0, Landroidx/media2/player/MediaPlayer;->s:Landroidx/media2/common/MediaItem;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 3140
    :goto_0
    iget v2, p0, Landroidx/media2/player/MediaPlayer;->r:I

    add-int/lit8 v2, v2, 0x1

    .line 3141
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, -0x1

    if-lt v2, v3, :cond_5

    .line 3142
    iget v2, p0, Landroidx/media2/player/MediaPlayer;->p:I

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

    .line 3150
    iput-object v1, p0, Landroidx/media2/player/MediaPlayer;->t:Landroidx/media2/common/MediaItem;

    goto :goto_3

    .line 3151
    :cond_6
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->t:Landroidx/media2/common/MediaItem;

    iget-object v4, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3152
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaItem;

    iput-object v2, p0, Landroidx/media2/player/MediaPlayer;->t:Landroidx/media2/common/MediaItem;

    goto :goto_4

    :cond_7
    :goto_3
    move-object v2, v1

    :goto_4
    if-nez v0, :cond_8

    if-nez v2, :cond_8

    return-object v1

    .line 3156
    :cond_8
    new-instance v1, Landroidx/core/e/b;

    invoke-direct {v1, v0, v2}, Landroidx/core/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method final B()V
    .locals 4

    .line 3264
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->j:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 3265
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3266
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3267
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/MediaPlayer$h;

    .line 3268
    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer$h;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer$h;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3269
    :cond_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 3275
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3276
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/MediaPlayer$h;

    .line 3277
    iget-boolean v3, v2, Landroidx/media2/player/MediaPlayer$h;->i:Z

    if-eqz v3, :cond_2

    .line 3280
    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer$h;->b()Z

    goto :goto_1

    .line 3282
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a()Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 748
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 749
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 750
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 752
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    new-instance v0, Landroidx/media2/player/MediaPlayer$11;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Landroidx/media2/player/MediaPlayer$11;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V

    .line 774
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 752
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a(F)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 915
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 916
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 917
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 919
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    new-instance v0, Landroidx/media2/player/MediaPlayer$31;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$31;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;F)V

    .line 939
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 919
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(I)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 1339
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1340
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 1341
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1343
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1345
    new-instance v0, Landroidx/media2/player/MediaPlayer$3;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$3;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;I)V

    .line 1390
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 1343
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1337
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index shouldn\'t be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(II)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    .line 1486
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1487
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 1488
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1490
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1492
    new-instance v0, Landroidx/media2/player/MediaPlayer$4;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/media2/player/MediaPlayer$4;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;II)V

    .line 1540
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 1490
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1484
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "indices shouldn\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(ILandroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    const-string v0, "item shouldn\'t be null"

    .line 1264
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1266
    instance-of v0, p2, Landroidx/media2/common/FileMediaItem;

    if-eqz v0, :cond_1

    .line 1267
    move-object v0, p2

    check-cast v0, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v0}, Landroidx/media2/common/FileMediaItem;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1268
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "File descriptor is closed. "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ltz p1, :cond_3

    .line 1274
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1275
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_2

    .line 1276
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1278
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1280
    new-instance v0, Landroidx/media2/player/MediaPlayer$2;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p2, p1}, Landroidx/media2/player/MediaPlayer$2;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem;I)V

    .line 1321
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 1278
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1272
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index shouldn\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(J)Lcom/google/common/util/concurrent/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 875
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 876
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 877
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 879
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    new-instance v0, Landroidx/media2/player/MediaPlayer$30;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Landroidx/media2/player/MediaPlayer$30;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;ZJ)V

    .line 894
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 879
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Landroid/view/Surface;)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 2051
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 2052
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 2053
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 2055
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2056
    new-instance v0, Landroidx/media2/player/MediaPlayer$12;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$12;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroid/view/Surface;)V

    .line 2069
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 2055
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Landroidx/media/AudioAttributesCompat;)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media/AudioAttributesCompat;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    const-string v0, "attr shouldn\'t be null"

    .line 961
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 963
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 964
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 965
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 967
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    new-instance v0, Landroidx/media2/player/MediaPlayer$32;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$32;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media/AudioAttributesCompat;)V

    .line 982
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 967
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Landroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    const-string v0, "item shouldn\'t be null"

    .line 1120
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1122
    instance-of v0, p1, Landroidx/media2/common/FileMediaItem;

    if-eqz v0, :cond_1

    .line 1123
    move-object v0, p1

    check-cast v0, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v0}, Landroidx/media2/common/FileMediaItem;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1124
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptor is closed. "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1127
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1128
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_2

    .line 1129
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1131
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    new-instance v0, Landroidx/media2/player/MediaPlayer$33;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$33;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem;)V

    .line 1150
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 1131
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Landroidx/media2/common/MediaMetadata;)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaMetadata;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 1696
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1697
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 1698
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1700
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1701
    new-instance v0, Landroidx/media2/player/MediaPlayer$8;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$8;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaMetadata;)V

    .line 1717
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 1700
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    const-string v0, "trackInfo shouldn\'t be null"

    .line 2560
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2562
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 2563
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 2564
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 2566
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2567
    new-instance v0, Landroidx/media2/player/MediaPlayer$16;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$16;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    .line 2581
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 2566
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Landroidx/media2/player/j;)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/player/j;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    const-string v0, "params shouldn\'t be null"

    .line 2192
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2194
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 2195
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 2196
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 2198
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2199
    new-instance v0, Landroidx/media2/player/MediaPlayer$14;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$14;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/player/j;)V

    .line 2213
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 2198
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/List;Landroidx/media2/common/MediaMetadata;)Lcom/google/common/util/concurrent/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    const-string v0, "list shouldn\'t be null"

    .line 1185
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1186
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1189
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1190
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 1191
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1193
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 1195
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaItem;

    if-nez v2, :cond_2

    const-string v0, "list shouldn\'t contain null item"

    goto :goto_0

    .line 1200
    :cond_2
    instance-of v3, v2, Landroidx/media2/common/FileMediaItem;

    if-eqz v3, :cond_1

    .line 1201
    move-object v3, v2

    check-cast v3, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v3}, Landroidx/media2/common/FileMediaItem;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "File descriptor is closed. "

    .line 1202
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    if-eqz v0, :cond_6

    .line 1209
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/common/MediaItem;

    .line 1210
    instance-of v1, p2, Landroidx/media2/common/FileMediaItem;

    if-eqz v1, :cond_4

    .line 1211
    check-cast p2, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {p2}, Landroidx/media2/common/FileMediaItem;->a()V

    .line 1212
    invoke-virtual {p2}, Landroidx/media2/common/FileMediaItem;->b()V

    goto :goto_1

    .line 1215
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1218
    :cond_6
    new-instance v0, Landroidx/media2/player/MediaPlayer$34;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p2, p1}, Landroidx/media2/player/MediaPlayer$34;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaMetadata;Ljava/util/List;)V

    .line 1241
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 1193
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1187
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "list shouldn\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Ljava/util/List<",
            "Landroidx/c/a/b<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation

    const-string v0, "curItem shouldn\'t be null"

    .line 3008
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3011
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 3012
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->y:Z

    .line 3013
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3015
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    .line 3017
    invoke-virtual {p0, p1}, Landroidx/media2/player/MediaPlayer;->b(Landroidx/media2/common/MediaItem;)Landroidx/c/a/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3018
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->y()Landroidx/c/a/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3020
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/player/MediaPlayer;->c(Landroidx/media2/common/MediaItem;)Landroidx/c/a/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p2, :cond_1

    .line 3024
    invoke-virtual {p0, p2}, Landroidx/media2/player/MediaPlayer;->b(Landroidx/media2/common/MediaItem;)Landroidx/c/a/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 3013
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final a(ILandroidx/c/a/b;Landroidx/media2/common/SessionPlayer$TrackInfo;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/c/a/b<",
            "+",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 703
    new-instance v0, Landroidx/media2/player/MediaPlayer$g;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media2/player/MediaPlayer$g;-><init>(ILandroidx/c/a/b;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    .line 704
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 705
    invoke-direct {p0, v0, p2, p4}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$g;Landroidx/c/a/b;Ljava/lang/Object;)V

    return-void
.end method

.method final a(ILandroidx/c/a/b;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/c/a/b<",
            "+",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 693
    new-instance v0, Landroidx/media2/player/MediaPlayer$g;

    invoke-direct {v0, p1, p2}, Landroidx/media2/player/MediaPlayer$g;-><init>(ILandroidx/c/a/b;)V

    .line 694
    iget-object p1, p0, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 695
    invoke-direct {p0, v0, p2, p3}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$g;Landroidx/c/a/b;Ljava/lang/Object;)V

    return-void
.end method

.method final a(Landroidx/media2/common/MediaItem;I)V
    .locals 3

    .line 2943
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 2944
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->w:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2945
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2946
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 2947
    :cond_0
    new-instance v0, Landroidx/media2/player/MediaPlayer$20;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/player/MediaPlayer$20;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/common/MediaItem;I)V

    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 2945
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final a(Landroidx/media2/player/MediaPlayer$d;)V
    .locals 4

    .line 2977
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 2978
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 2979
    monitor-exit v0

    return-void

    .line 2981
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2982
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->v()Ljava/util/List;

    move-result-object v0

    .line 2983
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/e/b;

    .line 2984
    iget-object v2, v1, Landroidx/core/e/b;->a:Ljava/lang/Object;

    instance-of v2, v2, Landroidx/media2/player/MediaPlayer$i;

    if-eqz v2, :cond_1

    .line 2985
    iget-object v2, v1, Landroidx/core/e/b;->a:Ljava/lang/Object;

    check-cast v2, Landroidx/media2/player/MediaPlayer$i;

    .line 2986
    iget-object v1, v1, Landroidx/core/e/b;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/media2/player/MediaPlayer$22;

    invoke-direct {v3, p0, p1, v2}, Landroidx/media2/player/MediaPlayer$22;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$d;Landroidx/media2/player/MediaPlayer$i;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 2981
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final a(Landroidx/media2/player/MediaPlayer$h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/player/MediaPlayer$h<",
            "+",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;)V"
        }
    .end annotation

    .line 728
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->j:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 729
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 730
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->B()V

    .line 731
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final a(Landroidx/media2/player/MediaPlayer$j;)V
    .locals 4

    .line 2958
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 2959
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 2960
    monitor-exit v0

    return-void

    .line 2962
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2963
    invoke-virtual {p0}, Landroidx/media2/player/MediaPlayer;->v()Ljava/util/List;

    move-result-object v0

    .line 2964
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/e/b;

    .line 2965
    iget-object v2, v1, Landroidx/core/e/b;->a:Ljava/lang/Object;

    check-cast v2, Landroidx/media2/common/SessionPlayer$a;

    .line 2966
    iget-object v1, v1, Landroidx/core/e/b;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/media2/player/MediaPlayer$21;

    invoke-direct {v3, p0, p1, v2}, Landroidx/media2/player/MediaPlayer$21;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$j;Landroidx/media2/common/SessionPlayer$a;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 2962
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/concurrent/Executor;Landroidx/media2/player/MediaPlayer$i;)V
    .locals 0

    .line 2651
    invoke-super {p0, p1, p2}, Landroidx/media2/common/SessionPlayer;->a(Ljava/util/concurrent/Executor;Landroidx/media2/common/SessionPlayer$a;)V

    return-void
.end method

.method final b(ILandroidx/media2/common/MediaItem;)Landroidx/c/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Landroidx/c/a/b<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 3088
    invoke-static {}, Landroidx/c/a/b;->a()Landroidx/c/a/b;

    move-result-object v0

    .line 3089
    new-instance v1, Landroidx/media2/common/SessionPlayer$b;

    if-nez p2, :cond_0

    .line 3090
    iget-object p2, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {p2}, Landroidx/media2/player/MediaPlayer2;->b()Landroidx/media2/common/MediaItem;

    move-result-object p2

    :cond_0
    invoke-direct {v1, p1, p2}, Landroidx/media2/common/SessionPlayer$b;-><init>(ILandroidx/media2/common/MediaItem;)V

    .line 3089
    invoke-virtual {v0, v1}, Landroidx/c/a/b;->a(Ljava/lang/Object;)Z

    return-object v0
.end method

.method final b(Landroidx/media2/common/MediaItem;)Landroidx/c/a/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Landroidx/c/a/b<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 3043
    invoke-static {}, Landroidx/c/a/b;->a()Landroidx/c/a/b;

    move-result-object v0

    .line 3044
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 3045
    :try_start_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v2, p1}, Landroidx/media2/player/MediaPlayer2;->b(Landroidx/media2/common/MediaItem;)Ljava/lang/Object;

    move-result-object p1

    const/16 v2, 0x16

    .line 3046
    invoke-virtual {p0, v2, v0, p1}, Landroidx/media2/player/MediaPlayer;->a(ILandroidx/c/a/b;Ljava/lang/Object;)V

    .line 3048
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 792
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 793
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 794
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 796
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    new-instance v0, Landroidx/media2/player/MediaPlayer$18;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Landroidx/media2/player/MediaPlayer$18;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V

    .line 811
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 796
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final b(F)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/a<",
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

    .line 2099
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 2100
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 2101
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 2103
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2104
    new-instance v0, Landroidx/media2/player/MediaPlayer$13;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$13;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;F)V

    .line 2112
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 2103
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 2097
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "volume should be between 0.0 and 1.0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(I)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 1656
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1657
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 1658
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1660
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1662
    new-instance v0, Landroidx/media2/player/MediaPlayer$7;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$7;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;I)V

    .line 1679
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 1660
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1654
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index shouldn\'t be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(J)Lcom/google/common/util/concurrent/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 2255
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 2256
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 2257
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 2259
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2260
    new-instance v0, Landroidx/media2/player/MediaPlayer$15;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object v1, v0

    move-object v2, p0

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Landroidx/media2/player/MediaPlayer$15;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;ZIJ)V

    .line 2276
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 2259
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    const-string v0, "trackInfo shouldn\'t be null"

    .line 2616
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2618
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 2619
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 2620
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 2622
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2623
    new-instance v0, Landroidx/media2/player/MediaPlayer$17;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$17;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    .line 2637
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 2622
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final c(F)Landroidx/c/a/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Landroidx/c/a/b<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 3065
    invoke-static {}, Landroidx/c/a/b;->a()Landroidx/c/a/b;

    move-result-object v0

    .line 3066
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 3067
    :try_start_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v2, p1}, Landroidx/media2/player/MediaPlayer2;->a(F)Ljava/lang/Object;

    move-result-object p1

    const/16 v2, 0x1a

    .line 3068
    invoke-virtual {p0, v2, v0, p1}, Landroidx/media2/player/MediaPlayer;->a(ILandroidx/c/a/b;Ljava/lang/Object;)V

    .line 3070
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 831
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 832
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 833
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 835
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    new-instance v0, Landroidx/media2/player/MediaPlayer$28;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Landroidx/media2/player/MediaPlayer$28;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V

    .line 853
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 835
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final c(I)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 1737
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1738
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 1739
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1741
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1742
    new-instance v0, Landroidx/media2/player/MediaPlayer$9;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$9;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;I)V

    .line 1767
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 1741
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final c(ILandroidx/media2/common/MediaItem;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Ljava/util/List<",
            "Landroidx/c/a/b<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation

    .line 3102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3103
    invoke-virtual {p0, p1, p2}, Landroidx/media2/player/MediaPlayer;->b(ILandroidx/media2/common/MediaItem;)Landroidx/c/a/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final close()V
    .locals 6

    .line 1973
    invoke-super {p0}, Landroidx/media2/common/SessionPlayer;->close()V

    .line 1975
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1976
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 1977
    iput-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    .line 4994
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/ArrayDeque;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 4995
    :try_start_1
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/player/MediaPlayer$g;

    .line 4996
    iget-object v4, v4, Landroidx/media2/player/MediaPlayer$g;->b:Landroidx/c/a/b;

    invoke-virtual {v4, v1}, Landroidx/c/a/b;->cancel(Z)Z

    goto :goto_0

    .line 4998
    :cond_0
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->clear()V

    .line 4999
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 5001
    :try_start_2
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->j:Ljava/util/ArrayDeque;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 5002
    :try_start_3
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/player/MediaPlayer$h;

    .line 5003
    iget-boolean v5, v4, Landroidx/media2/player/MediaPlayer$h;->j:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroidx/media2/player/MediaPlayer$h;->isDone()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Landroidx/media2/player/MediaPlayer$h;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 5004
    invoke-virtual {v4, v1}, Landroidx/media2/player/MediaPlayer$h;->cancel(Z)Z

    goto :goto_1

    .line 5007
    :cond_2
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 5008
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 5009
    :try_start_4
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v2, 0x0

    .line 5010
    :try_start_5
    iput v2, p0, Landroidx/media2/player/MediaPlayer;->v:I

    .line 5011
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->w:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 5012
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5013
    :try_start_6
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 5014
    :try_start_7
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    invoke-virtual {v3}, Landroidx/media2/player/MediaPlayer$c;->a()V

    .line 5015
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    .line 5016
    iput-object v3, p0, Landroidx/media2/player/MediaPlayer;->s:Landroidx/media2/common/MediaItem;

    .line 5017
    iput-object v3, p0, Landroidx/media2/player/MediaPlayer;->t:Landroidx/media2/common/MediaItem;

    const/4 v3, -0x1

    .line 5018
    iput v3, p0, Landroidx/media2/player/MediaPlayer;->r:I

    .line 5019
    iput-boolean v2, p0, Landroidx/media2/player/MediaPlayer;->y:Z

    .line 5020
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5021
    :try_start_8
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->k:Landroidx/media2/player/a;

    .line 5083
    iget-object v1, v1, Landroidx/media2/player/a;->a:Landroidx/media2/player/a$a;

    invoke-interface {v1}, Landroidx/media2/player/a$a;->c()V

    .line 5022
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer2;->p()V

    .line 1979
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->k:Landroidx/media2/player/a;

    .line 5090
    iget-object v1, v1, Landroidx/media2/player/a;->a:Landroidx/media2/player/a$a;

    invoke-interface {v1}, Landroidx/media2/player/a$a;->d()V

    .line 1980
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer2;->q()V

    .line 1981
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 5020
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_1
    move-exception v2

    .line 5012
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_2
    move-exception v1

    .line 5008
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_3
    move-exception v1

    .line 4999
    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v1

    .line 1983
    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v1
.end method

.method public final d()I
    .locals 2

    .line 989
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 990
    :try_start_0
    iget v1, p0, Landroidx/media2/player/MediaPlayer;->v:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 991
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d(I)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 1787
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1788
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 1789
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1791
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1792
    new-instance v0, Landroidx/media2/player/MediaPlayer$10;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, p1}, Landroidx/media2/player/MediaPlayer$10;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;I)V

    .line 1818
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 1791
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e()J
    .locals 7

    .line 996
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 997
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    .line 998
    monitor-exit v0

    return-wide v2

    .line 1000
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->f()J

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

    .line 1000
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final synthetic e(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Landroidx/media2/player/MediaPlayer;->g(I)Landroidx/media2/player/MediaPlayer$TrackInfo;

    move-result-object p1

    return-object p1
.end method

.method public final f()J
    .locals 7

    .line 1014
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1015
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    .line 1016
    monitor-exit v0

    return-wide v2

    .line 1018
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->g()J

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

    .line 1018
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method final f(I)V
    .locals 2

    .line 2924
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 2925
    :try_start_0
    iget v1, p0, Landroidx/media2/player/MediaPlayer;->v:I

    if-eq v1, p1, :cond_0

    .line 2926
    iput p1, p0, Landroidx/media2/player/MediaPlayer;->v:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2929
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 2931
    new-instance v0, Landroidx/media2/player/MediaPlayer$19;

    invoke-direct {v0, p0, p1}, Landroidx/media2/player/MediaPlayer$19;-><init>(Landroidx/media2/player/MediaPlayer;I)V

    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 2929
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final g()J
    .locals 7

    .line 1032
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1033
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    const-wide/high16 v2, -0x8000000000000000L

    if-eqz v1, :cond_0

    .line 1034
    monitor-exit v0

    return-wide v2

    .line 1036
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->h()J

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

    .line 1036
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final h()I
    .locals 4

    .line 1051
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1052
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1053
    monitor-exit v0

    return v2

    .line 1055
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1057
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 1058
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->w:Ljava/util/Map;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v3}, Landroidx/media2/player/MediaPlayer2;->b()Landroidx/media2/common/MediaItem;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1059
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    return v2

    .line 1060
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    .line 1059
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 1055
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public final i()F
    .locals 3

    .line 1066
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1067
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    .line 1068
    monitor-exit v0

    return v2

    .line 1070
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->k()Landroidx/media2/player/j;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/player/j;->c()Ljava/lang/Float;

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

    .line 1070
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final synthetic j()Landroidx/media2/common/VideoSize;
    .locals 1

    .line 141
    invoke-direct {p0}, Landroidx/media2/player/MediaPlayer;->C()Landroidx/media2/player/VideoSize;

    move-result-object v0

    return-object v0
.end method

.method public final k()Landroidx/media/AudioAttributesCompat;
    .locals 3

    .line 1081
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1082
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1083
    monitor-exit v0

    return-object v2

    .line 1085
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->j()Landroidx/media/AudioAttributesCompat;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    return-object v2

    :catchall_0
    move-exception v1

    .line 1085
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final l()Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 1556
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1557
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 1558
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1560
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1561
    new-instance v0, Landroidx/media2/player/MediaPlayer$5;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Landroidx/media2/player/MediaPlayer$5;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V

    .line 1586
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 1560
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final m()Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 1602
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1603
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 1604
    invoke-static {}, Landroidx/media2/player/MediaPlayer;->D()Landroidx/c/a/b;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1606
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1607
    new-instance v0, Landroidx/media2/player/MediaPlayer$6;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1}, Landroidx/media2/player/MediaPlayer$6;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V

    .line 1637
    invoke-virtual {p0, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 1606
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final n()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation

    .line 1825
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1826
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1827
    monitor-exit v0

    return-object v2

    .line 1829
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1830
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 1831
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    .line 4921
    iget-object v0, v0, Landroidx/media2/player/MediaPlayer$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1831
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    .line 4925
    iget-object v0, v0, Landroidx/media2/player/MediaPlayer$c;->a:Ljava/util/ArrayList;

    .line 1831
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    .line 1832
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 1829
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final o()Landroidx/media2/common/MediaMetadata;
    .locals 2

    .line 1838
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1839
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1840
    monitor-exit v0

    return-object v1

    .line 1842
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1843
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 1844
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->o:Landroidx/media2/common/MediaMetadata;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 1845
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 1842
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final p()I
    .locals 2

    .line 1850
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1851
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1852
    monitor-exit v0

    return v1

    .line 1854
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1855
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 1856
    :try_start_1
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->p:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 1857
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 1854
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final q()I
    .locals 2

    .line 1862
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1863
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1864
    monitor-exit v0

    return v1

    .line 1866
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1867
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 1868
    :try_start_1
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->q:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 1869
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 1866
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final r()Landroidx/media2/common/MediaItem;
    .locals 2

    .line 1875
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1876
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1877
    monitor-exit v0

    return-object v1

    .line 1879
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1880
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->b()Landroidx/media2/common/MediaItem;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 1879
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final s()I
    .locals 4

    .line 1893
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1894
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 1895
    monitor-exit v0

    return v2

    .line 1897
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1898
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 1899
    :try_start_1
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->r:I

    if-gez v0, :cond_1

    .line 1900
    monitor-exit v1

    return v2

    .line 1902
    :cond_1
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/media2/player/MediaPlayer$c;->b(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 1903
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 1897
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final t()I
    .locals 4

    .line 1916
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1917
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 1918
    monitor-exit v0

    return v2

    .line 1920
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1921
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 1922
    :try_start_1
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->r:I

    if-gez v0, :cond_1

    .line 1923
    monitor-exit v1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_4

    .line 1927
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->p:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 1930
    :cond_2
    monitor-exit v1

    return v2

    .line 1928
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media2/player/MediaPlayer$c;->b(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 1933
    :cond_4
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/media2/player/MediaPlayer$c;->b(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 1934
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 1920
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final u()I
    .locals 4

    .line 1947
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 1948
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 1949
    monitor-exit v0

    return v2

    .line 1951
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1952
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 1953
    :try_start_1
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->r:I

    if-gez v0, :cond_1

    .line 1954
    monitor-exit v1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1957
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    .line 1958
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->p:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 1961
    :cond_2
    monitor-exit v1

    return v2

    .line 1959
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media2/player/MediaPlayer$c;->b(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 1964
    :cond_4
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/media2/player/MediaPlayer$c;->b(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 1965
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 1951
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final w()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 2481
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 2482
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    .line 2483
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2485
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2486
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->o()Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 2485
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final x()F
    .locals 2

    .line 2121
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 2122
    :try_start_0
    iget-boolean v1, p0, Landroidx/media2/player/MediaPlayer;->x:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2123
    monitor-exit v0

    return v1

    .line 2125
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2126
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer2;->n()F

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    .line 2125
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method final y()Landroidx/c/a/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/c/a/b<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 3054
    invoke-static {}, Landroidx/c/a/b;->a()Landroidx/c/a/b;

    move-result-object v0

    .line 3055
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 3056
    :try_start_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer2;->i()Ljava/lang/Object;

    move-result-object v2

    const/16 v3, 0x1d

    .line 3057
    invoke-virtual {p0, v3, v0, v2}, Landroidx/media2/player/MediaPlayer;->a(ILandroidx/c/a/b;Ljava/lang/Object;)V

    .line 3059
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final z()V
    .locals 2

    .line 3109
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3110
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    .line 5925
    iget-object v1, v1, Landroidx/media2/player/MediaPlayer$c;->a:Ljava/util/ArrayList;

    .line 3110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3111
    iget v0, p0, Landroidx/media2/player/MediaPlayer;->q:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3113
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    :cond_1
    return-void
.end method
