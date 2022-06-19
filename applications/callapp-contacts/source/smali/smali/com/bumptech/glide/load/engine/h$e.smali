.class final Lcom/bumptech/glide/load/engine/h$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Z)Z
    .locals 1

    .line 669
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/h$e;->c:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/h$e;->b:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/bumptech/glide/load/engine/h$e;->a:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method final declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 653
    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/h$e;->b:Z

    const/4 v0, 0x0

    .line 654
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/h$e;->b(Z)Z

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

.method final declared-synchronized a(Z)Z
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    .line 648
    :try_start_0
    iput-boolean p1, p0, Lcom/bumptech/glide/load/engine/h$e;->a:Z

    const/4 p1, 0x0

    .line 649
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/h$e;->b(Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 658
    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/h$e;->c:Z

    const/4 v0, 0x0

    .line 659
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/h$e;->b(Z)Z

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

.method final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 663
    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/h$e;->b:Z

    .line 664
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/h$e;->a:Z

    .line 665
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/h$e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
