.class final Landroidx/media2/player/MediaPlayer$e;
.super Landroidx/media2/player/MediaPlayer2$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;)V
    .locals 0

    .line 3306
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    invoke-direct {p0}, Landroidx/media2/player/MediaPlayer2$c;-><init>()V

    return-void
.end method

.method private synthetic a(Ljava/util/List;Landroidx/media2/common/SessionPlayer$a;)V
    .locals 1

    .line 3487
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p2, v0, p1}, Landroidx/media2/common/SessionPlayer$a;->onTracksChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$xYyo39nrW1hJ_7VlmsMJPeFoFz4(Landroidx/media2/player/MediaPlayer$e;Ljava/util/List;Landroidx/media2/common/SessionPlayer$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media2/player/MediaPlayer$e;->a(Ljava/util/List;Landroidx/media2/common/SessionPlayer$a;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/common/MediaItem;I)V
    .locals 3

    .line 3337
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->f(I)V

    .line 3338
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/common/MediaItem;I)V

    .line 3339
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    new-instance v2, Landroidx/media2/player/MediaPlayer$e$3;

    invoke-direct {v2, p0, p1, p2, v1}, Landroidx/media2/player/MediaPlayer$e$3;-><init>(Landroidx/media2/player/MediaPlayer$e;Landroidx/media2/common/MediaItem;II)V

    invoke-virtual {v0, v2}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$d;)V

    return-void
.end method

.method public final a(Landroidx/media2/common/MediaItem;II)V
    .locals 1

    .line 3310
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer;->r()Landroidx/media2/common/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 3312
    new-instance p1, Landroidx/media2/common/VideoSize;

    invoke-direct {p1, p2, p3}, Landroidx/media2/common/VideoSize;-><init>(II)V

    .line 3314
    iget-object p2, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    new-instance p3, Landroidx/media2/player/MediaPlayer$e$1;

    invoke-direct {p3, p0, p1}, Landroidx/media2/player/MediaPlayer$e$1;-><init>(Landroidx/media2/player/MediaPlayer$e;Landroidx/media2/common/VideoSize;)V

    invoke-virtual {p2, p3}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 2

    .line 3476
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    new-instance v1, Landroidx/media2/player/MediaPlayer$e$9;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/media2/player/MediaPlayer$e$9;-><init>(Landroidx/media2/player/MediaPlayer$e;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V

    return-void
.end method

.method public final a(Landroidx/media2/common/MediaItem;Landroidx/media2/player/i;)V
    .locals 2

    .line 3460
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    new-instance v1, Landroidx/media2/player/MediaPlayer$e$8;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media2/player/MediaPlayer$e$8;-><init>(Landroidx/media2/player/MediaPlayer$e;Landroidx/media2/common/MediaItem;Landroidx/media2/player/i;)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$d;)V

    return-void
.end method

.method public final a(Landroidx/media2/common/MediaItem;Landroidx/media2/player/m;)V
    .locals 2

    .line 3326
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    new-instance v1, Landroidx/media2/player/MediaPlayer$e$2;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media2/player/MediaPlayer$e$2;-><init>(Landroidx/media2/player/MediaPlayer$e;Landroidx/media2/common/MediaItem;Landroidx/media2/player/m;)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$d;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 3487
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    new-instance v1, Landroidx/media2/player/-$$Lambda$MediaPlayer$e$xYyo39nrW1hJ_7VlmsMJPeFoFz4;

    invoke-direct {v1, p0, p1}, Landroidx/media2/player/-$$Lambda$MediaPlayer$e$xYyo39nrW1hJ_7VlmsMJPeFoFz4;-><init>(Landroidx/media2/player/MediaPlayer$e;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V

    return-void
.end method

.method public final b(Landroidx/media2/common/MediaItem;II)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_5

    const/4 v2, 0x6

    const/4 v3, 0x3

    if-eq p2, v2, :cond_3

    const/16 v2, 0x64

    if-eq p2, v2, :cond_2

    const/16 v4, 0x2c0

    if-eq p2, v4, :cond_1

    const/16 v2, 0x2bd

    if-eq p2, v2, :cond_0

    const/16 v0, 0x2be

    if-eq p2, v0, :cond_2

    goto/16 :goto_1

    .line 3352
    :cond_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1, p1, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/common/MediaItem;I)V

    goto/16 :goto_1

    :cond_1
    if-lt p3, v2, :cond_7

    .line 3360
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, p1, v3}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/common/MediaItem;I)V

    goto/16 :goto_1

    .line 3356
    :cond_2
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, p1, v1}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/common/MediaItem;I)V

    goto/16 :goto_1

    .line 3413
    :cond_3
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 3414
    :try_start_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v4, v2, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, v2, Landroidx/media2/player/MediaPlayer;->r:I

    .line 3415
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->t:Landroidx/media2/common/MediaItem;

    .line 3416
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 3423
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer;->m()Lcom/google/common/util/concurrent/a;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "MediaPlayer"

    const-string v1, "Cannot play next media item"

    .line 3425
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3426
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, v3}, Landroidx/media2/player/MediaPlayer;->f(I)V

    goto :goto_1

    .line 3430
    :cond_4
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->f(I)V

    .line 3431
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    new-instance v1, Landroidx/media2/player/MediaPlayer$e$6;

    invoke-direct {v1, p0}, Landroidx/media2/player/MediaPlayer$e$6;-><init>(Landroidx/media2/player/MediaPlayer$e;)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 3416
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 3366
    :cond_5
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 3367
    :try_start_2
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->s:Landroidx/media2/common/MediaItem;

    if-ne v2, p1, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_0

    .line 3381
    :cond_6
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v2, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, v2, Landroidx/media2/player/MediaPlayer;->r:I

    .line 3382
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer;->A()Landroidx/core/e/b;

    .line 3383
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->t:Landroidx/media2/common/MediaItem;

    .line 3385
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_7

    .line 3387
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    new-instance v1, Landroidx/media2/player/MediaPlayer$e$4;

    invoke-direct {v1, p0, p1}, Landroidx/media2/player/MediaPlayer$e$4;-><init>(Landroidx/media2/player/MediaPlayer$e;Landroidx/media2/common/MediaItem;)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V

    if-eqz v2, :cond_7

    .line 3397
    new-instance v0, Landroidx/media2/player/MediaPlayer$e$5;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p0, v1, v2}, Landroidx/media2/player/MediaPlayer$e$5;-><init>(Landroidx/media2/player/MediaPlayer$e;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem;)V

    .line 3407
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1, v0}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$h;)V

    .line 3440
    :cond_7
    :goto_1
    sget-object v0, Landroidx/media2/player/MediaPlayer;->d:Landroidx/b/a;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/b/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3441
    sget-object v0, Landroidx/media2/player/MediaPlayer;->d:Landroidx/b/a;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 3442
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    new-instance v1, Landroidx/media2/player/MediaPlayer$e$7;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/media2/player/MediaPlayer$e$7;-><init>(Landroidx/media2/player/MediaPlayer$e;Landroidx/media2/common/MediaItem;II)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$d;)V

    :cond_8
    return-void

    :catchall_1
    move-exception p1

    .line 3385
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final c(Landroidx/media2/common/MediaItem;II)V
    .locals 5

    .line 3454
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$e;->a:Landroidx/media2/player/MediaPlayer;

    .line 4171
    iget-object v1, v0, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 4172
    :try_start_0
    iget-object v2, v0, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/MediaPlayer$g;

    .line 4173
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 4175
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "No matching call type for "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". Possibly because of reset()."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 4179
    :cond_0
    iget v1, v2, Landroidx/media2/player/MediaPlayer$g;->a:I

    if-eq p2, v1, :cond_1

    const-string p3, "MediaPlayer"

    .line 4180
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Call type does not match. expected:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v2, Landroidx/media2/player/MediaPlayer$g;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " actual:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p3, -0x80000000

    :cond_1
    if-nez p3, :cond_7

    const/4 v1, 0x2

    if-eq p2, v1, :cond_6

    const/16 v3, 0x13

    if-eq p2, v3, :cond_5

    const/16 v3, 0x18

    if-eq p2, v3, :cond_4

    const/16 v3, 0x1d

    if-eq p2, v3, :cond_5

    const/4 v3, 0x4

    if-eq p2, v3, :cond_3

    const/4 v3, 0x5

    if-eq p2, v3, :cond_2

    const/4 v1, 0x6

    if-eq p2, v1, :cond_3

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 4225
    :pswitch_0
    iget-object v1, v0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer2;->j()Landroidx/media/AudioAttributesCompat;

    move-result-object v1

    .line 4226
    new-instance v3, Landroidx/media2/player/MediaPlayer$26;

    invoke-direct {v3, v0, v1}, Landroidx/media2/player/MediaPlayer$26;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media/AudioAttributesCompat;)V

    invoke-virtual {v0, v3}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V

    goto :goto_0

    .line 4234
    :pswitch_1
    new-instance v1, Landroidx/media2/player/MediaPlayer$27;

    invoke-direct {v1, v0, v2}, Landroidx/media2/player/MediaPlayer$27;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$g;)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V

    goto :goto_0

    .line 4194
    :pswitch_2
    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer;->e()J

    move-result-wide v3

    .line 4195
    new-instance v1, Landroidx/media2/player/MediaPlayer$23;

    invoke-direct {v1, v0, v3, v4}, Landroidx/media2/player/MediaPlayer$23;-><init>(Landroidx/media2/player/MediaPlayer;J)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V

    goto :goto_0

    .line 4191
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->f(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 4188
    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->f(I)V

    goto :goto_0

    .line 4215
    :cond_4
    iget-object v1, v0, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer2;->k()Landroidx/media2/player/j;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/player/j;->c()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 4216
    new-instance v3, Landroidx/media2/player/MediaPlayer$25;

    invoke-direct {v3, v0, v1}, Landroidx/media2/player/MediaPlayer$25;-><init>(Landroidx/media2/player/MediaPlayer;F)V

    invoke-virtual {v0, v3}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V

    goto :goto_0

    .line 4205
    :cond_5
    new-instance v1, Landroidx/media2/player/MediaPlayer$24;

    invoke-direct {v1, v0, p1}, Landroidx/media2/player/MediaPlayer$24;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/common/MediaItem;)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V

    goto :goto_0

    .line 4242
    :cond_6
    new-instance v1, Landroidx/media2/player/MediaPlayer$29;

    invoke-direct {v1, v0, v2}, Landroidx/media2/player/MediaPlayer$29;-><init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$g;)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V

    :cond_7
    :goto_0
    const/16 v1, 0x3e9

    if-eq p2, v1, :cond_9

    .line 4252
    sget-object p2, Landroidx/media2/player/MediaPlayer;->b:Landroidx/b/a;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/b/a;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 4253
    sget-object p2, Landroidx/media2/player/MediaPlayer;->b:Landroidx/b/a;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_8
    const/4 p2, -0x1

    .line 4252
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 4254
    new-instance p3, Landroidx/media2/common/SessionPlayer$b;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p3, p2, p1}, Landroidx/media2/common/SessionPlayer$b;-><init>(ILandroidx/media2/common/MediaItem;)V

    invoke-virtual {v2, p3}, Landroidx/media2/player/MediaPlayer$g;->a(Landroidx/media2/common/SessionPlayer$b;)V

    goto :goto_3

    .line 4256
    :cond_9
    sget-object p2, Landroidx/media2/player/MediaPlayer;->f:Landroidx/b/a;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/b/a;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 4257
    sget-object p2, Landroidx/media2/player/MediaPlayer;->f:Landroidx/b/a;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_2

    :cond_a
    const/16 p2, -0x3eb

    .line 4256
    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 4258
    new-instance p3, Landroidx/media2/player/MediaPlayer$b;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p3, p2, p1}, Landroidx/media2/player/MediaPlayer$b;-><init>(ILandroidx/media2/common/MediaItem;)V

    invoke-virtual {v2, p3}, Landroidx/media2/player/MediaPlayer$g;->a(Landroidx/media2/common/SessionPlayer$b;)V

    .line 4260
    :goto_3
    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer;->B()V

    return-void

    :catchall_0
    move-exception p1

    .line 4173
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
