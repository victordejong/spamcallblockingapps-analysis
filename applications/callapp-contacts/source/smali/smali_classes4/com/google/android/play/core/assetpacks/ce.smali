.class final synthetic Lcom/google/android/play/core/assetpacks/ce;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/ch;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/ch;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/assetpacks/ce;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/ce;->a:Lcom/google/android/play/core/assetpacks/ch;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/ch;[B)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lcom/google/android/play/core/assetpacks/ce;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/ce;->a:Lcom/google/android/play/core/assetpacks/ch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/google/android/play/core/assetpacks/ce;->b:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ce;->a:Lcom/google/android/play/core/assetpacks/ch;

    .line 1000
    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/ch;->b:Lcom/google/android/play/core/internal/ba;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/cs;

    iget-object v2, v0, Lcom/google/android/play/core/assetpacks/ch;->a:Lcom/google/android/play/core/assetpacks/w;

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/w;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/play/core/assetpacks/cs;->a(Ljava/util/Map;)Lcom/google/android/play/core/tasks/d;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/play/core/assetpacks/ch;->c:Lcom/google/android/play/core/internal/ba;

    invoke-interface {v2}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v3, v0, Lcom/google/android/play/core/assetpacks/ch;->a:Lcom/google/android/play/core/assetpacks/w;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/google/android/play/core/assetpacks/cf;->a(Lcom/google/android/play/core/assetpacks/w;)Lcom/google/android/play/core/tasks/c;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/play/core/tasks/d;->a(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/c;)Lcom/google/android/play/core/tasks/d;

    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/ch;->c:Lcom/google/android/play/core/internal/ba;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    sget-object v2, Lcom/google/android/play/core/assetpacks/cg;->a:Lcom/google/android/play/core/tasks/b;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/play/core/tasks/d;->a(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/b;)Lcom/google/android/play/core/tasks/d;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ce;->a:Lcom/google/android/play/core/assetpacks/ch;

    .line 2000
    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/ch;->a:Lcom/google/android/play/core/assetpacks/w;

    .line 3000
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/w;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    new-instance v6, Ljava/io/File;

    const-string v7, "stale.tmp"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    sub-long/2addr v7, v9

    sget-wide v9, Lcom/google/android/play/core/assetpacks/w;->a:J

    cmp-long v6, v7, v9

    if-lez v6, :cond_2

    invoke-static {v5}, Lcom/google/android/play/core/assetpacks/w;->b(Ljava/io/File;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2000
    :cond_3
    iget-object v1, v0, Lcom/google/android/play/core/assetpacks/ch;->a:Lcom/google/android/play/core/assetpacks/w;

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/w;->b()V

    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/ch;->a:Lcom/google/android/play/core/assetpacks/w;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/w;->c()V

    return-void
.end method
