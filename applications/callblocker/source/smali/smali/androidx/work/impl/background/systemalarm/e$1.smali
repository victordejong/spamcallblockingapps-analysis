.class Landroidx/work/impl/background/systemalarm/e$1;
.super Ljava/lang/Object;
.source "SystemAlarmDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/background/systemalarm/e;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/background/systemalarm/e;


# direct methods
.method constructor <init>(Landroidx/work/impl/background/systemalarm/e;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 256
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    iget-object v1, v0, Landroidx/work/impl/background/systemalarm/e;->d:Ljava/util/List;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    iget-object v0, v0, Landroidx/work/impl/background/systemalarm/e;->d:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, v2, Landroidx/work/impl/background/systemalarm/e;->e:Landroid/content/Intent;

    .line 258
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    iget-object v0, v0, Landroidx/work/impl/background/systemalarm/e;->e:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    iget-object v0, v0, Landroidx/work/impl/background/systemalarm/e;->e:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 262
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    iget-object v0, v0, Landroidx/work/impl/background/systemalarm/e;->e:Landroid/content/Intent;

    const-string/jumbo v2, "KEY_START_ID"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 264
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const-string/jumbo v4, "Processing command %s, %s"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    iget-object v6, v6, Landroidx/work/impl/background/systemalarm/e;->e:Landroid/content/Intent;

    aput-object v6, v5, v8

    .line 266
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    .line 265
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Throwable;

    .line 264
    invoke-virtual {v2, v3, v4, v5}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 267
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    iget-object v2, v2, Landroidx/work/impl/background/systemalarm/e;->b:Landroid/content/Context;

    const-string/jumbo v3, "%s (%s)"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v1, v4, v8

    .line 269
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-static {v2, v3}, Landroidx/work/impl/utils/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 271
    :try_start_1
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const-string/jumbo v5, "Acquiring operation wake lock (%s) %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v6}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 276
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 277
    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    iget-object v3, v3, Landroidx/work/impl/background/systemalarm/e;->c:Landroidx/work/impl/background/systemalarm/b;

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    iget-object v4, v4, Landroidx/work/impl/background/systemalarm/e;->e:Landroid/content/Intent;

    iget-object v5, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    invoke-virtual {v3, v4, v0, v5}, Landroidx/work/impl/background/systemalarm/b;->a(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/e;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v3, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const-string/jumbo v4, "Releasing operation wake lock (%s) %s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v1, v5, v8

    aput-object v2, v5, v9

    .line 287
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/Throwable;

    .line 285
    invoke-virtual {v0, v3, v1, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 291
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    new-instance v1, Landroidx/work/impl/background/systemalarm/e$c;

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    invoke-direct {v1, v2}, Landroidx/work/impl/background/systemalarm/e$c;-><init>(Landroidx/work/impl/background/systemalarm/e;)V

    invoke-virtual {v0, v1}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/Runnable;)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 258
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    :try_start_3
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const-string/jumbo v5, "Unexpected error in onHandleIntent"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Throwable;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroidx/work/l;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 285
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v3, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const-string/jumbo v4, "Releasing operation wake lock (%s) %s"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v1, v5, v8

    aput-object v2, v5, v9

    .line 287
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/Throwable;

    .line 285
    invoke-virtual {v0, v3, v1, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 291
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    new-instance v1, Landroidx/work/impl/background/systemalarm/e$c;

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    invoke-direct {v1, v2}, Landroidx/work/impl/background/systemalarm/e$c;-><init>(Landroidx/work/impl/background/systemalarm/e;)V

    invoke-virtual {v0, v1}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 285
    :catchall_1
    move-exception v0

    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/background/systemalarm/e;->a:Ljava/lang/String;

    const-string/jumbo v5, "Releasing operation wake lock (%s) %s"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v1, v6, v8

    aput-object v2, v6, v9

    .line 287
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v5, v8, [Ljava/lang/Throwable;

    .line 285
    invoke-virtual {v3, v4, v1, v5}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 291
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    new-instance v2, Landroidx/work/impl/background/systemalarm/e$c;

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/e$1;->a:Landroidx/work/impl/background/systemalarm/e;

    invoke-direct {v2, v3}, Landroidx/work/impl/background/systemalarm/e$c;-><init>(Landroidx/work/impl/background/systemalarm/e;)V

    invoke-virtual {v1, v2}, Landroidx/work/impl/background/systemalarm/e;->a(Ljava/lang/Runnable;)V

    .line 295
    throw v0
.end method
