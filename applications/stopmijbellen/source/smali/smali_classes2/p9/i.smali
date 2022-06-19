.class public final Lp9/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/util/concurrent/Executor;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Ljava/lang/Runnable;

.field public final d:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ls9/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lf/t;

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v0, 0x1

    .line 2
    sget-object v7, Lq9/c;->a:[B

    .line 3
    new-instance v7, Lq9/d;

    const-string v9, "OkHttp ConnectionPool"

    invoke-direct {v7, v9, v0}, Lq9/d;-><init>(Ljava/lang/String;Z)V

    move-object v0, v8

    .line 4
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lp9/i;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Lp9/i$a;

    invoke-direct {v1, p0}, Lp9/i$a;-><init>(Lp9/i;)V

    iput-object v1, p0, Lp9/i;->c:Ljava/lang/Runnable;

    .line 4
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lp9/i;->d:Ljava/util/Deque;

    .line 5
    new-instance v1, Lf/t;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lf/t;-><init>(I)V

    iput-object v1, p0, Lp9/i;->e:Lf/t;

    .line 6
    iput v2, p0, Lp9/i;->a:I

    const-wide/16 v1, 0x5

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lp9/i;->b:J

    return-void
.end method


# virtual methods
.method public final a(Ls9/c;J)I
    .locals 6

    .line 1
    iget-object v0, p1, Ls9/c;->n:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 4
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    check-cast v3, Ls9/e$a;

    const-string v4, "A connection to "

    .line 6
    invoke-static {v4}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 7
    iget-object v5, p1, Ls9/c;->c:Lp9/e0;

    .line 8
    iget-object v5, v5, Lp9/e0;->a:Lp9/a;

    .line 9
    iget-object v5, v5, Lp9/a;->a:Lp9/s;

    .line 10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11
    sget-object v5, Lx9/f;->a:Lx9/f;

    .line 12
    iget-object v3, v3, Ls9/e$a;->a:Ljava/lang/Object;

    invoke-virtual {v5, v4, v3}, Lx9/f;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 14
    iput-boolean v3, p1, Ls9/c;->k:Z

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    iget-wide v2, p0, Lp9/i;->b:J

    sub-long/2addr p2, v2

    iput-wide p2, p1, Ls9/c;->o:J

    return v1

    .line 17
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method
