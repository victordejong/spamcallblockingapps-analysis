.class final Lcom/google/android/play/core/assetpacks/bb;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/google/android/play/core/internal/h;


# instance fields
.field final b:Lcom/google/android/play/core/assetpacks/w;

.field final c:Lcom/google/android/play/core/internal/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ba<",
            "Lcom/google/android/play/core/assetpacks/cs;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/google/android/play/core/assetpacks/ap;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/play/core/assetpacks/ay;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/concurrent/locks/ReentrantLock;

.field private final g:Lcom/google/android/play/core/internal/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/ba<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/h;

    const-string v1, "ExtractorSessionStoreView"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/bb;->a:Lcom/google/android/play/core/internal/h;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/w;Lcom/google/android/play/core/internal/ba;Lcom/google/android/play/core/assetpacks/ap;Lcom/google/android/play/core/internal/ba;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/w;",
            "Lcom/google/android/play/core/internal/ba<",
            "Lcom/google/android/play/core/assetpacks/cs;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/ap;",
            "Lcom/google/android/play/core/internal/ba<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/bb;->b:Lcom/google/android/play/core/assetpacks/w;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/bb;->c:Lcom/google/android/play/core/internal/ba;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/bb;->d:Lcom/google/android/play/core/assetpacks/ap;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/bb;->g:Lcom/google/android/play/core/internal/ba;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/bb;->e:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/bb;->f:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method static a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "pack_names"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/play/core/assetpacks/al;

    const-string v0, "Session without pack received."

    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/al;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static b(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method final a(Lcom/google/android/play/core/assetpacks/ba;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/play/core/assetpacks/ba<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/bb;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-interface {p1}, Lcom/google/android/play/core/assetpacks/ba;->a()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3000
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/bb;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2000
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/bb;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method final a(Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/play/core/assetpacks/ay;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/assetpacks/au;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/play/core/assetpacks/au;-><init>(Lcom/google/android/play/core/assetpacks/bb;Ljava/util/List;[B)V

    invoke-virtual {p0, v0}, Lcom/google/android/play/core/assetpacks/bb;->a(Lcom/google/android/play/core/assetpacks/ba;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method final a(I)V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/at;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/assetpacks/at;-><init>(Lcom/google/android/play/core/assetpacks/bb;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/play/core/assetpacks/bb;->a(Lcom/google/android/play/core/assetpacks/ba;)Ljava/lang/Object;

    return-void
.end method

.method final b(I)Lcom/google/android/play/core/assetpacks/ay;
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/bb;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/ay;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/play/core/assetpacks/al;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "Could not find session %d while trying to get it"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/al;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method final synthetic c(Ljava/util/List;)Ljava/util/Map;
    .locals 8

    invoke-virtual {p0, p1}, Lcom/google/android/play/core/assetpacks/bb;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/play/core/assetpacks/ay;

    if-nez v3, :cond_0

    const/16 v3, 0x8

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v4, v3, Lcom/google/android/play/core/assetpacks/ay;->c:Lcom/google/android/play/core/assetpacks/ax;

    iget v4, v4, Lcom/google/android/play/core/assetpacks/ax;->c:I

    invoke-static {v4}, Lcom/google/android/play/core/assetpacks/bj;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    iget-object v4, v3, Lcom/google/android/play/core/assetpacks/ay;->c:Lcom/google/android/play/core/assetpacks/ax;

    const/4 v5, 0x6

    iput v5, v4, Lcom/google/android/play/core/assetpacks/ax;->c:I

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/bb;->g:Lcom/google/android/play/core/internal/ba;

    invoke-interface {v4}, Lcom/google/android/play/core/internal/ba;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/google/android/play/core/assetpacks/av;

    invoke-direct {v5, p0, v3}, Lcom/google/android/play/core/assetpacks/av;-><init>(Lcom/google/android/play/core/assetpacks/bb;Lcom/google/android/play/core/assetpacks/ay;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/bb;->d:Lcom/google/android/play/core/assetpacks/ap;

    invoke-virtual {v4, v2}, Lcom/google/android/play/core/assetpacks/ap;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/play/core/assetpacks/al; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object v4, Lcom/google/android/play/core/assetpacks/bb;->a:Lcom/google/android/play/core/internal/h;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v3, Lcom/google/android/play/core/assetpacks/ay;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const-string v6, "Session %d with pack %s does not exist, no need to cancel."

    invoke-virtual {v4, v6, v5}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_2
    iget-object v3, v3, Lcom/google/android/play/core/assetpacks/ay;->c:Lcom/google/android/play/core/assetpacks/ax;

    iget v3, v3, Lcom/google/android/play/core/assetpacks/ax;->c:I

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method final c(I)V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/assetpacks/at;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/play/core/assetpacks/at;-><init>(Lcom/google/android/play/core/assetpacks/bb;I[B)V

    invoke-virtual {p0, v0}, Lcom/google/android/play/core/assetpacks/bb;->a(Lcom/google/android/play/core/assetpacks/ba;)Ljava/lang/Object;

    return-void
.end method
