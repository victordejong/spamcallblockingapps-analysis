.class Landroidx/work/impl/j$2;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/j;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/utils/a/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroidx/work/impl/j;


# direct methods
.method constructor <init>(Landroidx/work/impl/j;Landroidx/work/impl/utils/a/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Landroidx/work/impl/j$2;->c:Landroidx/work/impl/j;

    iput-object p2, p0, Landroidx/work/impl/j$2;->a:Landroidx/work/impl/utils/a/c;

    iput-object p3, p0, Landroidx/work/impl/j$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .prologue
    .line 298
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/j$2;->a:Landroidx/work/impl/utils/a/c;

    invoke-virtual {v0}, Landroidx/work/impl/utils/a/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/ListenableWorker$a;

    .line 299
    if-nez v0, :cond_0

    .line 300
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/j;->a:Ljava/lang/String;

    const-string/jumbo v2, "%s returned a null result. Treating it as a failure."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/work/impl/j$2;->c:Landroidx/work/impl/j;

    iget-object v5, v5, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    iget-object v5, v5, Landroidx/work/impl/b/p;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/j$2;->c:Landroidx/work/impl/j;

    invoke-virtual {v0}, Landroidx/work/impl/j;->b()V

    .line 320
    :goto_1
    return-void

    .line 304
    :cond_0
    :try_start_1
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/j;->a:Ljava/lang/String;

    const-string/jumbo v3, "%s returned a %s result."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/work/impl/j$2;->c:Landroidx/work/impl/j;

    iget-object v6, v6, Landroidx/work/impl/j;->c:Landroidx/work/impl/b/p;

    iget-object v6, v6, Landroidx/work/impl/b/p;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 306
    iget-object v1, p0, Landroidx/work/impl/j$2;->c:Landroidx/work/impl/j;

    iput-object v0, v1, Landroidx/work/impl/j;->e:Landroidx/work/ListenableWorker$a;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 311
    :try_start_2
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/j;->a:Ljava/lang/String;

    const-string/jumbo v3, "%s was cancelled"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/work/impl/j$2;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/l;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    iget-object v0, p0, Landroidx/work/impl/j$2;->c:Landroidx/work/impl/j;

    invoke-virtual {v0}, Landroidx/work/impl/j;->b()V

    goto :goto_1

    .line 313
    :catch_1
    move-exception v0

    .line 314
    :goto_2
    :try_start_3
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/j;->a:Ljava/lang/String;

    const-string/jumbo v3, "%s failed because it threw an exception/error"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/work/impl/j$2;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 315
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 314
    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/l;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    iget-object v0, p0, Landroidx/work/impl/j$2;->c:Landroidx/work/impl/j;

    invoke-virtual {v0}, Landroidx/work/impl/j;->b()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/j$2;->c:Landroidx/work/impl/j;

    invoke-virtual {v1}, Landroidx/work/impl/j;->b()V

    .line 319
    throw v0

    .line 313
    :catch_2
    move-exception v0

    goto :goto_2
.end method
