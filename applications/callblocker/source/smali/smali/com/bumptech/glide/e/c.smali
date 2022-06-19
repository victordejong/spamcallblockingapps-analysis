.class public Lcom/bumptech/glide/e/c;
.super Ljava/lang/Object;
.source "LoadPathCache.java"


# static fields
.field private static final a:Lcom/bumptech/glide/load/engine/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/r",
            "<***>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a",
            "<",
            "Lcom/bumptech/glide/h/h;",
            "Lcom/bumptech/glide/load/engine/r",
            "<***>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/bumptech/glide/h/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 18
    new-instance v7, Lcom/bumptech/glide/load/engine/r;

    const-class v8, Ljava/lang/Object;

    const-class v9, Ljava/lang/Object;

    const-class v10, Ljava/lang/Object;

    new-instance v0, Lcom/bumptech/glide/load/engine/h;

    const-class v1, Ljava/lang/Object;

    const-class v2, Ljava/lang/Object;

    const-class v3, Ljava/lang/Object;

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/bumptech/glide/load/c/f/g;

    invoke-direct {v5}, Lcom/bumptech/glide/load/c/f/g;-><init>()V

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/engine/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/bumptech/glide/load/c/f/e;Landroidx/core/g/e$a;)V

    .line 23
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroidx/core/g/e$a;)V

    sput-object v7, Lcom/bumptech/glide/e/c;->a:Lcom/bumptech/glide/load/engine/r;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/e/c;->b:Landroidx/b/a;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/e/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/h/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/bumptech/glide/h/h;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/bumptech/glide/e/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/h/h;

    .line 78
    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/bumptech/glide/h/h;

    invoke-direct {v0}, Lcom/bumptech/glide/h/h;-><init>()V

    .line 81
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/h/h;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 82
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;)",
            "Lcom/bumptech/glide/load/engine/r",
            "<TData;TTResource;TTranscode;>;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/e/c;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/h/h;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/bumptech/glide/e/c;->b:Landroidx/b/a;

    monitor-enter v2

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/e/c;->b:Landroidx/b/a;

    invoke-virtual {v0, v1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/r;

    .line 58
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object v2, p0, Lcom/bumptech/glide/e/c;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 61
    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/engine/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/engine/r",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v1, p0, Lcom/bumptech/glide/e/c;->b:Landroidx/b/a;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/e/c;->b:Landroidx/b/a;

    new-instance v2, Lcom/bumptech/glide/h/h;

    invoke-direct {v2, p1, p2, p3}, Lcom/bumptech/glide/h/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 71
    if-eqz p4, :cond_0

    .line 69
    :goto_0
    invoke-virtual {v0, v2, p4}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    monitor-exit v1

    .line 73
    return-void

    .line 71
    :cond_0
    sget-object p4, Lcom/bumptech/glide/e/c;->a:Lcom/bumptech/glide/load/engine/r;

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/bumptech/glide/load/engine/r;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/r",
            "<***>;)Z"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/bumptech/glide/e/c;->a:Lcom/bumptech/glide/load/engine/r;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
