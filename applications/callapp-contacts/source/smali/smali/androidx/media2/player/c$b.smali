.class abstract Landroidx/media2/player/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "b"
.end annotation


# instance fields
.field final d:I

.field final e:Z

.field f:Landroidx/media2/common/MediaItem;

.field g:Z

.field final synthetic h:Landroidx/media2/player/c;


# direct methods
.method constructor <init>(Landroidx/media2/player/c;IZ)V
    .locals 0

    .line 883
    iput-object p1, p0, Landroidx/media2/player/c$b;->h:Landroidx/media2/player/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 884
    iput p2, p0, Landroidx/media2/player/c$b;->d:I

    .line 885
    iput-boolean p3, p0, Landroidx/media2/player/c$b;->e:Z

    return-void
.end method


# virtual methods
.method abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroidx/media2/player/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation
.end method

.method final a(I)V
    .locals 2

    .line 943
    iget v0, p0, Landroidx/media2/player/c$b;->d:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    return-void

    .line 948
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/c$b;->h:Landroidx/media2/player/c;

    new-instance v1, Landroidx/media2/player/c$b$1;

    invoke-direct {v1, p0, p1}, Landroidx/media2/player/c$b$1;-><init>(Landroidx/media2/player/c$b;I)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/c;->a(Landroidx/media2/player/c$a;)V

    return-void
.end method

.method public run()V
    .locals 5

    .line 894
    iget v0, p0, Landroidx/media2/player/c$b;->d:I

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 895
    iget-object v0, p0, Landroidx/media2/player/c$b;->h:Landroidx/media2/player/c;

    iget-object v0, v0, Landroidx/media2/player/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 896
    :try_start_0
    iget-object v4, p0, Landroidx/media2/player/c$b;->h:Landroidx/media2/player/c;

    iget-object v4, v4, Landroidx/media2/player/c;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/player/c$b;

    if-eqz v4, :cond_0

    .line 897
    iget v4, v4, Landroidx/media2/player/c$b;->d:I

    if-ne v4, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 900
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 904
    :try_start_1
    iget v0, p0, Landroidx/media2/player/c$b;->d:I

    const/16 v4, 0x3e8

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Landroidx/media2/player/c$b;->h:Landroidx/media2/player/c;

    iget-object v0, v0, Landroidx/media2/player/c;->a:Landroidx/media2/player/e;

    .line 905
    invoke-virtual {v0}, Landroidx/media2/player/e;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 908
    :cond_2
    invoke-virtual {p0}, Landroidx/media2/player/c$b;->a()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    const/high16 v2, -0x80000000

    goto :goto_3

    :catch_1
    const/4 v2, 0x4

    goto :goto_3

    :catch_2
    const/4 v2, 0x3

    goto :goto_3

    :catch_3
    const/4 v2, 0x2

    goto :goto_3

    :catch_4
    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x5

    .line 925
    :goto_3
    iget-object v0, p0, Landroidx/media2/player/c$b;->h:Landroidx/media2/player/c;

    iget-object v0, v0, Landroidx/media2/player/c;->a:Landroidx/media2/player/e;

    .line 1200
    iget-object v0, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    invoke-virtual {v0}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v0

    .line 925
    iput-object v0, p0, Landroidx/media2/player/c$b;->f:Landroidx/media2/common/MediaItem;

    .line 927
    iget-boolean v0, p0, Landroidx/media2/player/c$b;->e:Z

    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    if-eqz v1, :cond_5

    .line 928
    :cond_4
    invoke-virtual {p0, v2}, Landroidx/media2/player/c$b;->a(I)V

    .line 930
    iget-object v0, p0, Landroidx/media2/player/c$b;->h:Landroidx/media2/player/c;

    iget-object v0, v0, Landroidx/media2/player/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 931
    :try_start_2
    iget-object v1, p0, Landroidx/media2/player/c$b;->h:Landroidx/media2/player/c;

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/media2/player/c;->d:Landroidx/media2/player/c$b;

    .line 932
    iget-object v1, p0, Landroidx/media2/player/c$b;->h:Landroidx/media2/player/c;

    invoke-virtual {v1}, Landroidx/media2/player/c;->a()V

    .line 933
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 936
    :cond_5
    monitor-enter p0

    .line 937
    :try_start_3
    iput-boolean v3, p0, Landroidx/media2/player/c$b;->g:Z

    .line 938
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 939
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 933
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method
