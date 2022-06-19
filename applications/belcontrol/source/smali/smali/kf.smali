.class public abstract Lkf;
.super Llf;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkf$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Llf<",
        "TD;>;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "AsyncTaskLoader"


# instance fields
.field public volatile mCancellingTask:Lkf$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkf<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field public mHandler:Landroid/os/Handler;

.field public mLastLoadCompleteTime:J

.field public volatile mTask:Lkf$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkf<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field public mUpdateThrottle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lmf;->j:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Lkf;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0, p1}, Llf;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Lkf;->mLastLoadCompleteTime:J

    iput-object p2, p0, Lkf;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 0

    return-void
.end method

.method public dispatchOnCancelled(Lkf$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkf<",
            "TD;>.a;TD;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lkf;->onCanceled(Ljava/lang/Object;)V

    iget-object p2, p0, Lkf;->mCancellingTask:Lkf$a;

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Llf;->rollbackContentChanged()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lkf;->mLastLoadCompleteTime:J

    const/4 p1, 0x0

    iput-object p1, p0, Lkf;->mCancellingTask:Lkf$a;

    invoke-virtual {p0}, Llf;->deliverCancellation()V

    invoke-virtual {p0}, Lkf;->executePendingTask()V

    :cond_0
    return-void
.end method

.method public dispatchOnLoadComplete(Lkf$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkf<",
            "TD;>.a;TD;)V"
        }
    .end annotation

    iget-object v0, p0, Lkf;->mTask:Lkf$a;

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lkf;->dispatchOnCancelled(Lkf$a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Llf;->isAbandoned()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lkf;->onCanceled(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Llf;->commitContentChanged()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lkf;->mLastLoadCompleteTime:J

    const/4 p1, 0x0

    iput-object p1, p0, Lkf;->mTask:Lkf$a;

    invoke-virtual {p0, p2}, Llf;->deliverResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Llf;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p2, p0, Lkf;->mTask:Lkf$a;

    const-string p4, " waiting="

    if-eqz p2, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lkf;->mTask:Lkf$a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lkf;->mTask:Lkf$a;

    iget-boolean p2, p2, Lkf$a;->m:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_0
    iget-object p2, p0, Lkf;->mCancellingTask:Lkf$a;

    if-eqz p2, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCancellingTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lkf;->mCancellingTask:Lkf$a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lkf;->mCancellingTask:Lkf$a;

    iget-boolean p2, p2, Lkf$a;->m:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1
    iget-wide v0, p0, Lkf;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mUpdateThrottle="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide p1, p0, Lkf;->mUpdateThrottle:J

    invoke-static {p1, p2, p3}, Lpa;->c(JLjava/io/PrintWriter;)V

    const-string p1, " mLastLoadCompleteTime="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide p1, p0, Lkf;->mLastLoadCompleteTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1, p3}, Lpa;->b(JJLjava/io/PrintWriter;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_2
    return-void
.end method

.method public executePendingTask()V
    .locals 6

    iget-object v0, p0, Lkf;->mCancellingTask:Lkf$a;

    if-nez v0, :cond_2

    iget-object v0, p0, Lkf;->mTask:Lkf$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkf;->mTask:Lkf$a;

    iget-boolean v0, v0, Lkf$a;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkf;->mTask:Lkf$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lkf$a;->m:Z

    iget-object v0, p0, Lkf;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lkf;->mTask:Lkf$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-wide v0, p0, Lkf;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lkf;->mLastLoadCompleteTime:J

    iget-wide v4, p0, Lkf;->mUpdateThrottle:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    iget-object v0, p0, Lkf;->mTask:Lkf$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkf$a;->m:Z

    iget-object v0, p0, Lkf;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lkf;->mTask:Lkf$a;

    iget-wide v2, p0, Lkf;->mLastLoadCompleteTime:J

    iget-wide v4, p0, Lkf;->mUpdateThrottle:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v0, p0, Lkf;->mTask:Lkf$a;

    iget-object v1, p0, Lkf;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf;->c(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lmf;

    :cond_2
    return-void
.end method

.method public isLoadInBackgroundCanceled()Z
    .locals 1

    iget-object v0, p0, Lkf;->mCancellingTask:Lkf$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract loadInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public onCancelLoad()Z
    .locals 4

    iget-object v0, p0, Lkf;->mTask:Lkf$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Llf;->mStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Llf;->mContentChanged:Z

    :cond_0
    iget-object v0, p0, Lkf;->mCancellingTask:Lkf$a;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkf;->mTask:Lkf$a;

    iget-boolean v0, v0, Lkf$a;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkf;->mTask:Lkf$a;

    iput-boolean v1, v0, Lkf$a;->m:Z

    iget-object v0, p0, Lkf;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lkf;->mTask:Lkf$a;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iput-object v2, p0, Lkf;->mTask:Lkf$a;

    return v1

    :cond_2
    iget-object v0, p0, Lkf;->mTask:Lkf$a;

    iget-boolean v0, v0, Lkf$a;->m:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkf;->mTask:Lkf$a;

    iput-boolean v1, v0, Lkf$a;->m:Z

    iget-object v0, p0, Lkf;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lkf;->mTask:Lkf$a;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lkf;->mTask:Lkf$a;

    return v1

    :cond_3
    iget-object v0, p0, Lkf;->mTask:Lkf$a;

    invoke-virtual {v0, v1}, Lmf;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lkf;->mTask:Lkf$a;

    iput-object v1, p0, Lkf;->mCancellingTask:Lkf$a;

    invoke-virtual {p0}, Lkf;->cancelLoadInBackground()V

    :cond_4
    iput-object v2, p0, Lkf;->mTask:Lkf$a;

    return v0

    :cond_5
    return v1
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    return-void
.end method

.method public onForceLoad()V
    .locals 1

    invoke-super {p0}, Llf;->onForceLoad()V

    invoke-virtual {p0}, Llf;->cancelLoad()Z

    new-instance v0, Lkf$a;

    invoke-direct {v0, p0}, Lkf$a;-><init>(Lkf;)V

    iput-object v0, p0, Lkf;->mTask:Lkf$a;

    invoke-virtual {p0}, Lkf;->executePendingTask()V

    return-void
.end method

.method public onLoadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    invoke-virtual {p0}, Lkf;->loadInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setUpdateThrottle(J)V
    .locals 3

    iput-wide p1, p0, Lkf;->mUpdateThrottle:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lkf;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public waitForLoader()V
    .locals 1

    iget-object v0, p0, Lkf;->mTask:Lkf$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkf$a;->o()V

    :cond_0
    return-void
.end method
