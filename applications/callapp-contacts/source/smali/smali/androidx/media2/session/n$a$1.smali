.class final Landroidx/media2/session/n$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/n$a;-><init>(Ljava/util/concurrent/Executor;[Lcom/google/common/util/concurrent/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroidx/media2/session/n$a;


# direct methods
.method constructor <init>(Landroidx/media2/session/n$a;I)V
    .locals 0

    .line 1834
    iput-object p1, p0, Landroidx/media2/session/n$a$1;->b:Landroidx/media2/session/n$a;

    iput p2, p0, Landroidx/media2/session/n$a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1838
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/n$a$1;->b:Landroidx/media2/session/n$a;

    iget-object v2, v2, Landroidx/media2/session/n$a;->f:[Lcom/google/common/util/concurrent/a;

    iget v3, p0, Landroidx/media2/session/n$a$1;->a:I

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/google/common/util/concurrent/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/a;

    .line 1839
    invoke-interface {v2}, Landroidx/media2/common/a;->a()I

    move-result v3

    if-eqz v3, :cond_2

    if-eq v3, v1, :cond_2

    const/4 v3, 0x0

    .line 1842
    :goto_0
    iget-object v4, p0, Landroidx/media2/session/n$a$1;->b:Landroidx/media2/session/n$a;

    iget-object v4, v4, Landroidx/media2/session/n$a;->f:[Lcom/google/common/util/concurrent/a;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 1843
    iget-object v4, p0, Landroidx/media2/session/n$a$1;->b:Landroidx/media2/session/n$a;

    iget-object v4, v4, Landroidx/media2/session/n$a;->f:[Lcom/google/common/util/concurrent/a;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/common/util/concurrent/a;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroidx/media2/session/n$a$1;->b:Landroidx/media2/session/n$a;

    iget-object v4, v4, Landroidx/media2/session/n$a;->f:[Lcom/google/common/util/concurrent/a;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/common/util/concurrent/a;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Landroidx/media2/session/n$a$1;->a:I

    if-eq v4, v3, :cond_0

    .line 1845
    iget-object v4, p0, Landroidx/media2/session/n$a$1;->b:Landroidx/media2/session/n$a;

    iget-object v4, v4, Landroidx/media2/session/n$a;->f:[Lcom/google/common/util/concurrent/a;

    aget-object v4, v4, v3

    invoke-interface {v4, v1}, Lcom/google/common/util/concurrent/a;->cancel(Z)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1848
    :cond_1
    iget-object v3, p0, Landroidx/media2/session/n$a$1;->b:Landroidx/media2/session/n$a;

    invoke-static {v3, v2}, Landroidx/media2/session/n$a;->a(Landroidx/media2/session/n$a;Ljava/lang/Object;)Z

    return-void

    .line 1850
    :cond_2
    iget-object v3, p0, Landroidx/media2/session/n$a$1;->b:Landroidx/media2/session/n$a;

    iget-object v3, v3, Landroidx/media2/session/n$a;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    .line 1851
    iget-object v4, p0, Landroidx/media2/session/n$a$1;->b:Landroidx/media2/session/n$a;

    iget-object v4, v4, Landroidx/media2/session/n$a;->f:[Lcom/google/common/util/concurrent/a;

    array-length v4, v4

    if-ne v3, v4, :cond_3

    .line 1852
    iget-object v3, p0, Landroidx/media2/session/n$a$1;->b:Landroidx/media2/session/n$a;

    invoke-static {v3, v2}, Landroidx/media2/session/n$a;->b(Landroidx/media2/session/n$a;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v2

    .line 1856
    :goto_1
    iget-object v3, p0, Landroidx/media2/session/n$a$1;->b:Landroidx/media2/session/n$a;

    iget-object v3, v3, Landroidx/media2/session/n$a;->f:[Lcom/google/common/util/concurrent/a;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 1857
    iget-object v3, p0, Landroidx/media2/session/n$a$1;->b:Landroidx/media2/session/n$a;

    iget-object v3, v3, Landroidx/media2/session/n$a;->f:[Lcom/google/common/util/concurrent/a;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/google/common/util/concurrent/a;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroidx/media2/session/n$a$1;->b:Landroidx/media2/session/n$a;

    iget-object v3, v3, Landroidx/media2/session/n$a;->f:[Lcom/google/common/util/concurrent/a;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/google/common/util/concurrent/a;->isDone()Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Landroidx/media2/session/n$a$1;->a:I

    if-eq v3, v0, :cond_4

    .line 1859
    iget-object v3, p0, Landroidx/media2/session/n$a$1;->b:Landroidx/media2/session/n$a;

    iget-object v3, v3, Landroidx/media2/session/n$a;->f:[Lcom/google/common/util/concurrent/a;

    aget-object v3, v3, v0

    invoke-interface {v3, v1}, Lcom/google/common/util/concurrent/a;->cancel(Z)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1862
    :cond_5
    iget-object v0, p0, Landroidx/media2/session/n$a$1;->b:Landroidx/media2/session/n$a;

    invoke-static {v0, v2}, Landroidx/media2/session/n$a;->a(Landroidx/media2/session/n$a;Ljava/lang/Throwable;)Z

    return-void
.end method
