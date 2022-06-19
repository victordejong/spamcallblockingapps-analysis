.class public final Lcom/bumptech/glide/load/engine/c/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private final b:Z

.field private c:I

.field private d:I

.field private e:Lcom/bumptech/glide/load/engine/c/a$c;

.field private f:J


# direct methods
.method constructor <init>(Z)V
    .locals 1

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    sget-object v0, Lcom/bumptech/glide/load/engine/c/a$c;->d:Lcom/bumptech/glide/load/engine/c/a$c;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/c/a$a;->e:Lcom/bumptech/glide/load/engine/c/a$c;

    .line 425
    iput-boolean p1, p0, Lcom/bumptech/glide/load/engine/c/a$a;->b:Z

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/bumptech/glide/load/engine/c/a$a;
    .locals 0

    .line 441
    iput p1, p0, Lcom/bumptech/glide/load/engine/c/a$a;->c:I

    .line 442
    iput p1, p0, Lcom/bumptech/glide/load/engine/c/a$a;->d:I

    return-object p0
.end method

.method public final a()Lcom/bumptech/glide/load/engine/c/a;
    .locals 11

    .line 466
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/c/a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 470
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v2, p0, Lcom/bumptech/glide/load/engine/c/a$a;->c:I

    iget v3, p0, Lcom/bumptech/glide/load/engine/c/a$a;->d:I

    iget-wide v4, p0, Lcom/bumptech/glide/load/engine/c/a$a;->f:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/bumptech/glide/load/engine/c/a$b;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/c/a$a;->a:Ljava/lang/String;

    iget-object v9, p0, Lcom/bumptech/glide/load/engine/c/a$a;->e:Lcom/bumptech/glide/load/engine/c/a$c;

    iget-boolean v10, p0, Lcom/bumptech/glide/load/engine/c/a$a;->b:Z

    invoke-direct {v8, v1, v9, v10}, Lcom/bumptech/glide/load/engine/c/a$b;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/engine/c/a$c;Z)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 479
    iget-wide v1, p0, Lcom/bumptech/glide/load/engine/c/a$a;->f:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    .line 480
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 483
    :cond_0
    new-instance v1, Lcom/bumptech/glide/load/engine/c/a;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/engine/c/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v1

    .line 467
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Name must be non-null and non-empty, but given: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/c/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
