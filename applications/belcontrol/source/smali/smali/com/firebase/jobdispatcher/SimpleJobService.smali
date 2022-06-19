.class public abstract Lcom/firebase/jobdispatcher/SimpleJobService;
.super Lcom/firebase/jobdispatcher/JobService;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/jobdispatcher/SimpleJobService$b;
    }
.end annotation


# instance fields
.field public final d:Lh4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4<",
            "Lzp0;",
            "Lcom/firebase/jobdispatcher/SimpleJobService$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/firebase/jobdispatcher/JobService;-><init>()V

    new-instance v0, Lh4;

    invoke-direct {v0}, Lh4;-><init>()V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/SimpleJobService;->d:Lh4;

    return-void
.end method

.method public static synthetic g(Lcom/firebase/jobdispatcher/SimpleJobService;Lzp0;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/firebase/jobdispatcher/SimpleJobService;->h(Lzp0;Z)V

    return-void
.end method


# virtual methods
.method public c(Lzp0;)Z
    .locals 3

    new-instance v0, Lcom/firebase/jobdispatcher/SimpleJobService$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/firebase/jobdispatcher/SimpleJobService$b;-><init>(Lcom/firebase/jobdispatcher/SimpleJobService;Lzp0;Lcom/firebase/jobdispatcher/SimpleJobService$a;)V

    iget-object v1, p0, Lcom/firebase/jobdispatcher/SimpleJobService;->d:Lh4;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/firebase/jobdispatcher/SimpleJobService;->d:Lh4;

    invoke-virtual {v2, p1, v0}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d(Lzp0;)Z
    .locals 2

    iget-object v0, p0, Lcom/firebase/jobdispatcher/SimpleJobService;->d:Lh4;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/SimpleJobService;->d:Lh4;

    invoke-virtual {v1, p1}, Lh4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/firebase/jobdispatcher/SimpleJobService$b;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    monitor-exit v0

    return v1

    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final h(Lzp0;Z)V
    .locals 2

    iget-object v0, p0, Lcom/firebase/jobdispatcher/SimpleJobService;->d:Lh4;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/SimpleJobService;->d:Lh4;

    invoke-virtual {v1, p1}, Lh4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p2}, Lcom/firebase/jobdispatcher/JobService;->b(Lzp0;Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract i(Lzp0;)I
.end method
