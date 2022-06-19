.class public Lin0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin0$b;,
        Lin0$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lin0$c;

.field public final c:I

.field public final d:Ljava/util/concurrent/Executor;

.field public e:Lin0$c;

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-static {}, Lui0;->o()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lin0;-><init>(ILjava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lin0;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lin0;->e:Lin0$c;

    const/4 v0, 0x0

    iput v0, p0, Lin0;->f:I

    iput p1, p0, Lin0;->c:I

    iput-object p2, p0, Lin0;->d:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Lin0;Lin0$c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lin0;->h(Lin0$c;)V

    return-void
.end method

.method public static synthetic b(Lin0;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lin0;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic c(Lin0;)Lin0$c;
    .locals 0

    iget-object p0, p0, Lin0;->b:Lin0$c;

    return-object p0
.end method

.method public static synthetic d(Lin0;Lin0$c;)Lin0$c;
    .locals 0

    iput-object p1, p0, Lin0;->b:Lin0$c;

    return-object p1
.end method


# virtual methods
.method public e(Ljava/lang/Runnable;)Lin0$b;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lin0;->f(Ljava/lang/Runnable;Z)Lin0$b;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Runnable;Z)Lin0$b;
    .locals 2

    new-instance v0, Lin0$c;

    invoke-direct {v0, p0, p1}, Lin0$c;-><init>(Lin0;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lin0;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lin0;->b:Lin0$c;

    invoke-virtual {v0, v1, p2}, Lin0$c;->b(Lin0$c;Z)Lin0$c;

    move-result-object p2

    iput-object p2, p0, Lin0;->b:Lin0$c;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lin0;->i()V

    return-object v0

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final g(Lin0$c;)V
    .locals 2

    iget-object v0, p0, Lin0;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lin0$a;

    invoke-direct {v1, p0, p1}, Lin0$a;-><init>(Lin0;Lin0$c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h(Lin0$c;)V
    .locals 4

    iget-object v0, p0, Lin0;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lin0;->e:Lin0$c;

    invoke-virtual {p1, v2}, Lin0$c;->e(Lin0$c;)Lin0$c;

    move-result-object p1

    iput-object p1, p0, Lin0;->e:Lin0$c;

    iget p1, p0, Lin0;->f:I

    sub-int/2addr p1, v1

    iput p1, p0, Lin0;->f:I

    :cond_0
    iget p1, p0, Lin0;->f:I

    iget v2, p0, Lin0;->c:I

    if-ge p1, v2, :cond_1

    iget-object p1, p0, Lin0;->b:Lin0$c;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p1}, Lin0$c;->e(Lin0$c;)Lin0$c;

    move-result-object v2

    iput-object v2, p0, Lin0;->b:Lin0$c;

    iget-object v2, p0, Lin0;->e:Lin0$c;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lin0$c;->b(Lin0$c;Z)Lin0$c;

    move-result-object v2

    iput-object v2, p0, Lin0;->e:Lin0$c;

    iget v2, p0, Lin0;->f:I

    add-int/2addr v2, v1

    iput v2, p0, Lin0;->f:I

    invoke-virtual {p1, v1}, Lin0$c;->f(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lin0;->g(Lin0$c;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lin0;->h(Lin0$c;)V

    return-void
.end method
