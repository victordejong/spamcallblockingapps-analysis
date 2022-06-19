.class final Landroidx/media2/player/c;
.super Landroidx/media2/player/MediaPlayer2;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/player/e$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/c$b;,
        Landroidx/media2/player/c$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/media2/player/e;

.field final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/player/c$b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Object;

.field d:Landroidx/media2/player/c$b;

.field final e:Ljava/lang/Object;

.field private final f:Landroid/os/Handler;

.field private g:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/media2/player/MediaPlayer2$c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/media2/player/MediaPlayer2$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Landroidx/media2/player/MediaPlayer2;-><init>()V

    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoMediaPlayer2Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media2/player/c;->i:Landroid/os/HandlerThread;

    .line 87
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 88
    new-instance v0, Landroidx/media2/player/e;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Landroidx/media2/player/c;->i:Landroid/os/HandlerThread;

    .line 91
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Landroidx/media2/player/e;-><init>(Landroid/content/Context;Landroidx/media2/player/e$c;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media2/player/c;->a:Landroidx/media2/player/e;

    .line 93
    new-instance p1, Landroid/os/Handler;

    .line 1192
    iget-object v0, v0, Landroidx/media2/player/e;->b:Landroid/os/Looper;

    .line 93
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media2/player/c;->f:Landroid/os/Handler;

    .line 94
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media2/player/c;->b:Ljava/util/ArrayDeque;

    .line 95
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/player/c;->c:Ljava/lang/Object;

    .line 96
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/player/c;->e:Ljava/lang/Object;

    .line 1811
    new-instance p1, Landroidx/media2/player/c$29;

    invoke-direct {p1, p0}, Landroidx/media2/player/c$29;-><init>(Landroidx/media2/player/c;)V

    invoke-direct {p0, p1}, Landroidx/media2/player/c;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Landroidx/c/a/b;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/c/a/b<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 853
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/c/a/b;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 861
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 865
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 866
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const-string v1, "ExoPlayerMediaPlayer2"

    const-string v2, "Internal player error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 867
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroidx/media2/player/c$b;)Ljava/lang/Object;
    .locals 2

    .line 132
    iget-object v0, p0, Landroidx/media2/player/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/c;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {p0}, Landroidx/media2/player/c;->a()V

    .line 135
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 829
    invoke-static {}, Landroidx/c/a/b;->a()Landroidx/c/a/b;

    move-result-object v0

    .line 830
    iget-object v1, p0, Landroidx/media2/player/c;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 831
    :try_start_0
    iget-object v2, p0, Landroidx/media2/player/c;->i:Landroid/os/HandlerThread;

    invoke-static {v2}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    iget-object v2, p0, Landroidx/media2/player/c;->f:Landroid/os/Handler;

    new-instance v3, Landroidx/media2/player/c$30;

    invoke-direct {v3, p0, v0, p1}, Landroidx/media2/player/c$30;-><init>(Landroidx/media2/player/c;Landroidx/c/a/b;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    .line 842
    invoke-static {p1}, Landroidx/core/e/d;->b(Z)V

    .line 843
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    invoke-static {v0}, Landroidx/media2/player/c;->a(Landroidx/c/a/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 843
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic a(Ljava/util/List;Landroidx/media2/player/MediaPlayer2$c;)V
    .locals 0

    .line 666
    invoke-virtual {p2, p1}, Landroidx/media2/player/MediaPlayer2$c;->a(Ljava/util/List;)V

    return-void
.end method

.method private b(Landroidx/media2/common/MediaItem;II)V
    .locals 1

    .line 802
    new-instance v0, Landroidx/media2/player/c$28;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media2/player/c$28;-><init>(Landroidx/media2/player/c;Landroidx/media2/common/MediaItem;II)V

    invoke-virtual {p0, v0}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$a;)V

    return-void
.end method

.method public static synthetic lambda$-dJ51sqCDyVnA3yqIkFCHyo63UQ(Landroidx/media2/player/c;Ljava/util/List;Landroidx/media2/player/MediaPlayer2$c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media2/player/c;->a(Ljava/util/List;Landroidx/media2/player/MediaPlayer2$c;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 1

    .line 492
    new-instance v0, Landroidx/media2/player/c$17;

    invoke-direct {v0, p0, p1}, Landroidx/media2/player/c$17;-><init>(Landroidx/media2/player/c;I)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    return-object p1
.end method

.method public final a(F)Ljava/lang/Object;
    .locals 3

    .line 460
    new-instance v0, Landroidx/media2/player/c$14;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/c$14;-><init>(Landroidx/media2/player/c;IZF)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(JI)Ljava/lang/Object;
    .locals 8

    .line 269
    new-instance v7, Landroidx/media2/player/c$35;

    const/16 v2, 0xe

    const/4 v3, 0x1

    move-object v0, v7

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroidx/media2/player/c$35;-><init>(Landroidx/media2/player/c;IZJI)V

    invoke-direct {p0, v7}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/view/Surface;)Ljava/lang/Object;
    .locals 3

    .line 450
    new-instance v0, Landroidx/media2/player/c$13;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/c$13;-><init>(Landroidx/media2/player/c;IZLandroid/view/Surface;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/media/AudioAttributesCompat;)Ljava/lang/Object;
    .locals 3

    .line 359
    new-instance v0, Landroidx/media2/player/c$6;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/c$6;-><init>(Landroidx/media2/player/c;IZLandroidx/media/AudioAttributesCompat;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/media2/common/MediaItem;)Ljava/lang/Object;
    .locals 3

    .line 219
    new-instance v0, Landroidx/media2/player/c$24;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/c$24;-><init>(Landroidx/media2/player/c;IZLandroidx/media2/common/MediaItem;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/media2/player/j;)Ljava/lang/Object;
    .locals 3

    .line 409
    new-instance v0, Landroidx/media2/player/c$9;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/c$9;-><init>(Landroidx/media2/player/c;IZLandroidx/media2/player/j;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final a()V
    .locals 2

    .line 142
    iget-object v0, p0, Landroidx/media2/player/c;->d:Landroidx/media2/player/c$b;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/player/c;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Landroidx/media2/player/c;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/c$b;

    .line 144
    iput-object v0, p0, Landroidx/media2/player/c;->d:Landroidx/media2/player/c$b;

    .line 145
    iget-object v1, p0, Landroidx/media2/player/c;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/common/MediaItem;I)V
    .locals 1

    const/16 v0, 0x2c0

    .line 695
    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/player/c;->b(Landroidx/media2/common/MediaItem;II)V

    return-void
.end method

.method public final a(Landroidx/media2/common/MediaItem;II)V
    .locals 1

    .line 710
    new-instance v0, Landroidx/media2/player/c$22;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media2/player/c$22;-><init>(Landroidx/media2/player/c;Landroidx/media2/common/MediaItem;II)V

    invoke-virtual {p0, v0}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$a;)V

    return-void
.end method

.method public final a(Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 1

    .line 725
    new-instance v0, Landroidx/media2/player/c$23;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media2/player/c$23;-><init>(Landroidx/media2/player/c;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    invoke-virtual {p0, v0}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$a;)V

    return-void
.end method

.method public final a(Landroidx/media2/common/MediaItem;Landroidx/media2/player/i;)V
    .locals 1

    .line 763
    new-instance v0, Landroidx/media2/player/c$26;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/player/c$26;-><init>(Landroidx/media2/player/c;Landroidx/media2/common/MediaItem;Landroidx/media2/player/i;)V

    invoke-virtual {p0, v0}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$a;)V

    return-void
.end method

.method public final a(Landroidx/media2/common/MediaItem;Landroidx/media2/player/m;)V
    .locals 1

    .line 736
    new-instance v0, Landroidx/media2/player/c$25;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/player/c$25;-><init>(Landroidx/media2/player/c;Landroidx/media2/common/MediaItem;Landroidx/media2/player/m;)V

    invoke-virtual {p0, v0}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$a;)V

    return-void
.end method

.method final a(Landroidx/media2/player/c$a;)V
    .locals 3

    .line 185
    iget-object v0, p0, Landroidx/media2/player/c;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/c;->g:Landroid/util/Pair;

    .line 187
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 189
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 190
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/media2/player/MediaPlayer2$c;

    .line 192
    :try_start_1
    new-instance v2, Landroidx/media2/player/c$8;

    invoke-direct {v2, p0, p1, v1}, Landroidx/media2/player/c$8;-><init>(Landroidx/media2/player/c;Landroidx/media2/player/c$a;Landroidx/media2/player/MediaPlayer2$c;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    const-string p1, "ExoPlayerMediaPlayer2"

    const-string v0, "The given executor is shutting down. Ignoring the player event."

    .line 200
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 187
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 666
    new-instance v0, Landroidx/media2/player/-$$Lambda$c$-dJ51sqCDyVnA3yqIkFCHyo63UQ;

    invoke-direct {v0, p0, p1}, Landroidx/media2/player/-$$Lambda$c$-dJ51sqCDyVnA3yqIkFCHyo63UQ;-><init>(Landroidx/media2/player/c;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$a;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/Executor;Landroidx/media2/player/MediaPlayer2$a;)V
    .locals 1

    .line 168
    invoke-static {p1}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {p2}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Landroidx/media2/player/c;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/player/c;->h:Landroid/util/Pair;

    .line 172
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/concurrent/Executor;Landroidx/media2/player/MediaPlayer2$c;)V
    .locals 1

    .line 151
    invoke-static {p1}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {p2}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Landroidx/media2/player/c;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/player/c;->g:Landroid/util/Pair;

    .line 155
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 2

    .line 126
    iget-object v0, p0, Landroidx/media2/player/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/c;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()Landroidx/media2/common/MediaItem;
    .locals 1

    .line 229
    new-instance v0, Landroidx/media2/player/c$31;

    invoke-direct {v0, p0}, Landroidx/media2/player/c$31;-><init>(Landroidx/media2/player/c;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/MediaItem;

    return-object v0
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 3

    .line 503
    new-instance v0, Landroidx/media2/player/c$18;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/c$18;-><init>(Landroidx/media2/player/c;IZI)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroidx/media2/common/MediaItem;)Ljava/lang/Object;
    .locals 3

    .line 339
    new-instance v0, Landroidx/media2/player/c$5;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/c$5;-><init>(Landroidx/media2/player/c;IZLandroidx/media2/common/MediaItem;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroidx/media2/common/MediaItem;I)V
    .locals 1

    const/16 v0, 0x2bf

    .line 700
    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/player/c;->b(Landroidx/media2/common/MediaItem;II)V

    return-void
.end method

.method public final c()Ljava/lang/Object;
    .locals 3

    .line 239
    new-instance v0, Landroidx/media2/player/c$32;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroidx/media2/player/c$32;-><init>(Landroidx/media2/player/c;IZ)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 3

    .line 514
    new-instance v0, Landroidx/media2/player/c$19;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/media2/player/c$19;-><init>(Landroidx/media2/player/c;IZI)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroidx/media2/common/MediaItem;)V
    .locals 4

    const/16 v0, 0x64

    const/4 v1, 0x0

    .line 2798
    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/player/c;->b(Landroidx/media2/common/MediaItem;II)V

    .line 652
    iget-object v0, p0, Landroidx/media2/player/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 653
    :try_start_0
    iget-object v2, p0, Landroidx/media2/player/c;->d:Landroidx/media2/player/c$b;

    if-eqz v2, :cond_0

    iget v2, v2, Landroidx/media2/player/c$b;->d:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroidx/media2/player/c;->d:Landroidx/media2/player/c$b;

    iget-object v2, v2, Landroidx/media2/player/c$b;->f:Landroidx/media2/common/MediaItem;

    .line 655
    invoke-static {v2, p1}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media2/player/c;->d:Landroidx/media2/player/c$b;

    iget-boolean p1, p1, Landroidx/media2/player/c$b;->e:Z

    if-eqz p1, :cond_0

    .line 657
    iget-object p1, p0, Landroidx/media2/player/c;->d:Landroidx/media2/player/c$b;

    invoke-virtual {p1, v1}, Landroidx/media2/player/c$b;->a(I)V

    const/4 p1, 0x0

    .line 658
    iput-object p1, p0, Landroidx/media2/player/c;->d:Landroidx/media2/player/c$b;

    .line 659
    invoke-virtual {p0}, Landroidx/media2/player/c;->a()V

    .line 661
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Landroidx/media2/common/MediaItem;I)V
    .locals 3

    .line 779
    iget-object v0, p0, Landroidx/media2/player/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/c;->d:Landroidx/media2/player/c$b;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Landroidx/media2/player/c$b;->e:Z

    if-eqz v1, :cond_0

    .line 782
    iget-object v1, p0, Landroidx/media2/player/c;->d:Landroidx/media2/player/c$b;

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroidx/media2/player/c$b;->a(I)V

    const/4 v1, 0x0

    .line 783
    iput-object v1, p0, Landroidx/media2/player/c;->d:Landroidx/media2/player/c$b;

    .line 784
    invoke-virtual {p0}, Landroidx/media2/player/c;->a()V

    .line 786
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    new-instance v0, Landroidx/media2/player/c$27;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/player/c$27;-><init>(Landroidx/media2/player/c;Landroidx/media2/common/MediaItem;I)V

    invoke-virtual {p0, v0}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$a;)V

    return-void

    :catchall_0
    move-exception p1

    .line 786
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d()Ljava/lang/Object;
    .locals 3

    .line 249
    new-instance v0, Landroidx/media2/player/c$33;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/media2/player/c$33;-><init>(Landroidx/media2/player/c;IZ)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroidx/media2/common/MediaItem;)V
    .locals 2

    const/16 v0, 0x2bd

    const/4 v1, 0x0

    .line 3798
    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/player/c;->b(Landroidx/media2/common/MediaItem;II)V

    return-void
.end method

.method public final e()Ljava/lang/Object;
    .locals 3

    .line 259
    new-instance v0, Landroidx/media2/player/c$34;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/media2/player/c$34;-><init>(Landroidx/media2/player/c;IZ)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final e(Landroidx/media2/common/MediaItem;)V
    .locals 2

    const/16 v0, 0x2be

    const/4 v1, 0x0

    .line 4798
    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/player/c;->b(Landroidx/media2/common/MediaItem;II)V

    return-void
.end method

.method public final f()J
    .locals 2

    .line 279
    new-instance v0, Landroidx/media2/player/c$1;

    invoke-direct {v0, p0}, Landroidx/media2/player/c$1;-><init>(Landroidx/media2/player/c;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(Landroidx/media2/common/MediaItem;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 5798
    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/player/c;->b(Landroidx/media2/common/MediaItem;II)V

    return-void
.end method

.method public final g()J
    .locals 2

    .line 289
    new-instance v0, Landroidx/media2/player/c$2;

    invoke-direct {v0, p0}, Landroidx/media2/player/c$2;-><init>(Landroidx/media2/player/c;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g(Landroidx/media2/common/MediaItem;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 6798
    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/player/c;->b(Landroidx/media2/common/MediaItem;II)V

    return-void
.end method

.method public final h()J
    .locals 2

    .line 299
    new-instance v0, Landroidx/media2/player/c$3;

    invoke-direct {v0, p0}, Landroidx/media2/player/c$3;-><init>(Landroidx/media2/player/c;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h(Landroidx/media2/common/MediaItem;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 7798
    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/player/c;->b(Landroidx/media2/common/MediaItem;II)V

    return-void
.end method

.method public final i()Ljava/lang/Object;
    .locals 3

    .line 329
    new-instance v0, Landroidx/media2/player/c$4;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/media2/player/c$4;-><init>(Landroidx/media2/player/c;IZ)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final i(Landroidx/media2/common/MediaItem;)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 8798
    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/player/c;->b(Landroidx/media2/common/MediaItem;II)V

    return-void
.end method

.method public final j()Landroidx/media/AudioAttributesCompat;
    .locals 1

    .line 369
    new-instance v0, Landroidx/media2/player/c$7;

    invoke-direct {v0, p0}, Landroidx/media2/player/c$7;-><init>(Landroidx/media2/player/c;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media/AudioAttributesCompat;

    return-object v0
.end method

.method public final j(Landroidx/media2/common/MediaItem;)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 9798
    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/player/c;->b(Landroidx/media2/common/MediaItem;II)V

    return-void
.end method

.method public final k()Landroidx/media2/player/j;
    .locals 1

    .line 420
    new-instance v0, Landroidx/media2/player/c$10;

    invoke-direct {v0, p0}, Landroidx/media2/player/c$10;-><init>(Landroidx/media2/player/c;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/j;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .line 430
    new-instance v0, Landroidx/media2/player/c$11;

    invoke-direct {v0, p0}, Landroidx/media2/player/c$11;-><init>(Landroidx/media2/player/c;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final m()I
    .locals 1

    .line 440
    new-instance v0, Landroidx/media2/player/c$12;

    invoke-direct {v0, p0}, Landroidx/media2/player/c$12;-><init>(Landroidx/media2/player/c;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final n()F
    .locals 1

    .line 470
    new-instance v0, Landroidx/media2/player/c$15;

    invoke-direct {v0, p0}, Landroidx/media2/player/c$15;-><init>(Landroidx/media2/player/c;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 481
    new-instance v0, Landroidx/media2/player/c$16;

    invoke-direct {v0, p0}, Landroidx/media2/player/c$16;-><init>(Landroidx/media2/player/c;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final p()V
    .locals 2

    .line 2119
    iget-object v0, p0, Landroidx/media2/player/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2120
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/c;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 2121
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 549
    iget-object v1, p0, Landroidx/media2/player/c;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 550
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/c;->d:Landroidx/media2/player/c$b;

    .line 551
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    .line 553
    monitor-enter v0

    .line 555
    :goto_0
    :try_start_2
    iget-boolean v1, v0, Landroidx/media2/player/c$b;->g:Z

    if-nez v1, :cond_0

    .line 556
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 561
    :catch_0
    :cond_0
    :try_start_3
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 563
    :cond_1
    :goto_2
    new-instance v0, Landroidx/media2/player/c$20;

    invoke-direct {v0, p0}, Landroidx/media2/player/c$20;-><init>(Landroidx/media2/player/c;)V

    invoke-direct {p0, v0}, Landroidx/media2/player/c;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception v0

    .line 551
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 2121
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public final q()V
    .locals 4

    .line 2160
    iget-object v0, p0, Landroidx/media2/player/c;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2161
    :try_start_0
    iput-object v1, p0, Landroidx/media2/player/c;->g:Landroid/util/Pair;

    .line 2162
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 576
    iget-object v2, p0, Landroidx/media2/player/c;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 577
    :try_start_1
    iget-object v0, p0, Landroidx/media2/player/c;->i:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 579
    monitor-exit v2

    return-void

    .line 581
    :cond_0
    iput-object v1, p0, Landroidx/media2/player/c;->i:Landroid/os/HandlerThread;

    .line 582
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    invoke-static {}, Landroidx/c/a/b;->a()Landroidx/c/a/b;

    move-result-object v1

    .line 584
    iget-object v2, p0, Landroidx/media2/player/c;->f:Landroid/os/Handler;

    new-instance v3, Landroidx/media2/player/c$21;

    invoke-direct {v3, p0, v1}, Landroidx/media2/player/c$21;-><init>(Landroidx/media2/player/c;Landroidx/c/a/b;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 595
    invoke-static {v1}, Landroidx/media2/player/c;->a(Landroidx/c/a/b;)Ljava/lang/Object;

    .line 596
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_0
    move-exception v0

    .line 582
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 2162
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public final r()V
    .locals 3

    .line 672
    iget-object v0, p0, Landroidx/media2/player/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 673
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/c;->d:Landroidx/media2/player/c$b;

    if-eqz v1, :cond_0

    iget v1, v1, Landroidx/media2/player/c$b;->d:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/media2/player/c;->d:Landroidx/media2/player/c$b;

    iget-boolean v1, v1, Landroidx/media2/player/c$b;->e:Z

    if-eqz v1, :cond_0

    .line 676
    iget-object v1, p0, Landroidx/media2/player/c;->d:Landroidx/media2/player/c$b;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media2/player/c$b;->a(I)V

    const/4 v1, 0x0

    .line 677
    iput-object v1, p0, Landroidx/media2/player/c;->d:Landroidx/media2/player/c$b;

    .line 678
    invoke-virtual {p0}, Landroidx/media2/player/c;->a()V

    .line 680
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
