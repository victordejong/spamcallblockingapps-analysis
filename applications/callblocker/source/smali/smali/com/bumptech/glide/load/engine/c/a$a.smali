.class final Lcom/bumptech/glide/load/engine/c/a$a;
.super Ljava/lang/Object;
.source "GlideExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/engine/c/a$b;

.field final b:Z

.field private final c:Ljava/lang/String;

.field private d:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/engine/c/a$b;Z)V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/c/a$a;->c:Ljava/lang/String;

    .line 427
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/c/a$a;->a:Lcom/bumptech/glide/load/engine/c/a$b;

    .line 428
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/c/a$a;->b:Z

    .line 429
    return-void
.end method


# virtual methods
.method public declared-synchronized newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/bumptech/glide/load/engine/c/a$a$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "glide-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/c/a$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/c/a$a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/bumptech/glide/load/engine/c/a$a$1;-><init>(Lcom/bumptech/glide/load/engine/c/a$a;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 452
    iget v1, p0, Lcom/bumptech/glide/load/engine/c/a$a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/c/a$a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    monitor-exit p0

    return-object v0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
