.class public Landroidx/emoji2/text/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/emoji2/text/d$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lj0/e;

.field public final c:Landroidx/emoji2/text/j$a;

.field public final d:Ljava/lang/Object;

.field public e:Landroid/os/Handler;

.field public f:Ljava/util/concurrent/Executor;

.field public g:Ljava/util/concurrent/ThreadPoolExecutor;

.field public h:Landroidx/emoji2/text/d$h;

.field public i:Landroid/database/ContentObserver;

.field public j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lj0/e;Landroidx/emoji2/text/j$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/j$b;->d:Ljava/lang/Object;

    const-string v0, "Context cannot be null"

    .line 3
    invoke-static {p1, v0}, Li4/d;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FontRequest cannot be null"

    .line 4
    invoke-static {p2, v0}, Li4/d;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/emoji2/text/j$b;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Landroidx/emoji2/text/j$b;->b:Lj0/e;

    .line 7
    iput-object p3, p0, Landroidx/emoji2/text/j$b;->c:Landroidx/emoji2/text/j$a;

    return-void
.end method


# virtual methods
.method public a(Landroidx/emoji2/text/d$h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/j$b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroidx/emoji2/text/j$b;->h:Landroidx/emoji2/text/d$h;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/emoji2/text/j$b;->c()V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/j$b;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-object v1, p0, Landroidx/emoji2/text/j$b;->h:Landroidx/emoji2/text/d$h;

    .line 3
    iget-object v2, p0, Landroidx/emoji2/text/j$b;->i:Landroid/database/ContentObserver;

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, p0, Landroidx/emoji2/text/j$b;->c:Landroidx/emoji2/text/j$a;

    iget-object v4, p0, Landroidx/emoji2/text/j$b;->a:Landroid/content/Context;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 6
    iput-object v1, p0, Landroidx/emoji2/text/j$b;->i:Landroid/database/ContentObserver;

    .line 7
    :cond_0
    iget-object v2, p0, Landroidx/emoji2/text/j$b;->e:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 8
    iget-object v3, p0, Landroidx/emoji2/text/j$b;->j:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    :cond_1
    iput-object v1, p0, Landroidx/emoji2/text/j$b;->e:Landroid/os/Handler;

    .line 10
    iget-object v2, p0, Landroidx/emoji2/text/j$b;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 12
    :cond_2
    iput-object v1, p0, Landroidx/emoji2/text/j$b;->f:Ljava/util/concurrent/Executor;

    .line 13
    iput-object v1, p0, Landroidx/emoji2/text/j$b;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/j$b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/emoji2/text/j$b;->h:Landroidx/emoji2/text/d$h;

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Landroidx/emoji2/text/j$b;->f:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_1

    const-string v1, "emojiCompat"

    .line 5
    invoke-static {v1}, Landroidx/emoji2/text/b;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    iput-object v1, p0, Landroidx/emoji2/text/j$b;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    iput-object v1, p0, Landroidx/emoji2/text/j$b;->f:Ljava/util/concurrent/Executor;

    .line 7
    :cond_1
    iget-object v1, p0, Landroidx/emoji2/text/j$b;->f:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/appcompat/widget/a1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Landroidx/appcompat/widget/a1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()Lj0/l;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/emoji2/text/j$b;->c:Landroidx/emoji2/text/j$a;

    iget-object v1, p0, Landroidx/emoji2/text/j$b;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/emoji2/text/j$b;->b:Lj0/e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-static {v1, v2, v0}, Lj0/d;->a(Landroid/content/Context;Lj0/e;Landroid/os/CancellationSignal;)Lj0/k;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget v1, v0, Lj0/k;->a:I

    if-nez v1, :cond_1

    .line 4
    iget-object v0, v0, Lj0/k;->b:[Lj0/l;

    if-eqz v0, :cond_0

    .line 5
    array-length v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 6
    aget-object v0, v0, v1

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fetchFonts failed (empty result)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "fetchFonts failed ("

    invoke-static {v2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 9
    iget v0, v0, Lj0/k;->a:I

    const-string v3, ")"

    .line 10
    invoke-static {v2, v0, v3}, La6/h;->l(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "provider not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
