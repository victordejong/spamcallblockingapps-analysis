.class final Lcom/google/android/gms/measurement/internal/fb;
.super Ljava/util/concurrent/FutureTask;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gms/measurement/internal/fb",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Z

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final synthetic d:Lcom/google/android/gms/measurement/internal/fa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fa;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fb;->d:Lcom/google/android/gms/measurement/internal/fa;

    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 12
    invoke-static {p4}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/google/android/gms/measurement/internal/fa;->d()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/fb;->b:J

    .line 14
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/fb;->c:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fb;->a:Z

    .line 16
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fb;->b:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Tasks index overflow"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 18
    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/fa;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fb;->d:Lcom/google/android/gms/measurement/internal/fa;

    .line 2
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 3
    invoke-static {p4}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/google/android/gms/measurement/internal/fa;->d()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/fb;->b:J

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/fb;->c:Ljava/lang/String;

    .line 6
    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/fb;->a:Z

    .line 7
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fb;->b:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Tasks index overflow"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 9
    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 25
    check-cast p1, Lcom/google/android/gms/measurement/internal/fb;

    .line 26
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/fb;->a:Z

    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/fb;->a:Z

    if-eq v2, v3, :cond_2

    .line 27
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/fb;->a:Z

    if-eqz v2, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/fb;->b:J

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/fb;->b:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 30
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/fb;->b:J

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/fb;->b:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    move v0, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fb;->d:Lcom/google/android/gms/measurement/internal/fa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->c()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Two tasks share the same index. index"

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/fb;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    const/4 v0, 0x0

    .line 34
    goto :goto_0
.end method

.method protected final setException(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fb;->d:Lcom/google/android/gms/measurement/internal/fa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    instance-of v0, p1, Lcom/google/android/gms/measurement/internal/ez;

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 23
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    .line 24
    return-void
.end method
