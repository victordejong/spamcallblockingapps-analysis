.class public Ld2/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/h2$a;


# instance fields
.field public a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:D

.field public e:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Ld2/p2;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Ld2/p2;->b:I

    const/16 v0, 0x10

    .line 4
    iput v0, p0, Ld2/p2;->c:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 5
    iput-wide v0, p0, Ld2/p2;->d:D

    .line 6
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v3, p0, Ld2/p2;->b:I

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Ld2/p2;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    const v4, 0x7fffffff

    const-wide/16 v5, 0x3c

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Ld2/p2;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public a(Ld2/h2;Ld2/t0;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld2/h2;",
            "Ld2/t0;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    .line 2
    iget-object v1, p1, Ld2/h2;->k:Ljava/lang/String;

    const-string v2, "url"

    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3
    iget-boolean v1, p1, Ld2/h2;->m:Z

    const-string v2, "success"

    invoke-static {v0, v2, v1}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 4
    iget v1, p1, Ld2/h2;->o:I

    const-string v2, "status"

    invoke-static {v0, v2, v1}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 5
    iget-object v1, p1, Ld2/h2;->l:Ljava/lang/String;

    const-string v2, "body"

    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    iget p1, p1, Ld2/h2;->n:I

    const-string v1, "size"

    invoke-static {v0, v1, p1}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    if-eqz p3, :cond_2

    .line 7
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    .line 8
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string p3, "headers"

    .line 13
    invoke-static {v0, p3, p1}, Ld2/e4;->h(Ld2/f4;Ljava/lang/String;Ld2/f4;)Z

    .line 14
    :cond_2
    invoke-virtual {p2, v0}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    return-void
.end method

.method public b(Ld2/h2;)V
    .locals 9

    .line 1
    iget-object v0, p0, Ld2/p2;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    .line 2
    iget-object v1, p0, Ld2/p2;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    .line 3
    iget v2, p0, Ld2/p2;->b:I

    sub-int v3, v0, v2

    int-to-double v4, v1

    .line 4
    iget-wide v6, p0, Ld2/p2;->d:D

    mul-double v4, v4, v6

    const/4 v6, 0x1

    add-int/2addr v3, v6

    int-to-double v7, v3

    cmpl-double v3, v4, v7

    if-lez v3, :cond_0

    iget v3, p0, Ld2/p2;->c:I

    if-ge v0, v3, :cond_0

    .line 5
    iget-object v1, p0, Ld2/p2;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    add-int/2addr v0, v6

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    if-le v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Ld2/p2;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 7
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Ld2/p2;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "RejectedExecutionException: ThreadPoolExecutor unable to "

    .line 8
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "execute download for url "

    .line 9
    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Ld2/h2;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 12
    invoke-static {v1, v1, v0, v6}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 13
    iget-object v0, p1, Ld2/h2;->c:Ld2/t0;

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, p1, v0, v1}, Ld2/p2;->a(Ld2/h2;Ld2/t0;Ljava/util/Map;)V

    :goto_1
    return-void
.end method
