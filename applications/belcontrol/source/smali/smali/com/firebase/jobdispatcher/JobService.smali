.class public abstract Lcom/firebase/jobdispatcher/JobService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/jobdispatcher/JobService$d;
    }
.end annotation


# static fields
.field public static final c:Landroid/os/Handler;


# instance fields
.field public final a:Lh4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4<",
            "Ljava/lang/String;",
            "Lcom/firebase/jobdispatcher/JobService$d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lup0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/firebase/jobdispatcher/JobService;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lh4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lh4;-><init>(I)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/JobService;->a:Lh4;

    new-instance v0, Lcom/firebase/jobdispatcher/JobService$a;

    invoke-direct {v0, p0}, Lcom/firebase/jobdispatcher/JobService$a;-><init>(Lcom/firebase/jobdispatcher/JobService;)V

    iput-object v0, p0, Lcom/firebase/jobdispatcher/JobService;->b:Lup0$a;

    return-void
.end method

.method public static synthetic a(Lcom/firebase/jobdispatcher/JobService;)Lh4;
    .locals 0

    iget-object p0, p0, Lcom/firebase/jobdispatcher/JobService;->a:Lh4;

    return-object p0
.end method


# virtual methods
.method public final b(Lzp0;Z)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "FJD.JobService"

    const-string p2, "jobFinished called with a null JobParameters"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobService;->a:Lh4;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/JobService;->a:Lh4;

    invoke-interface {p1}, Lzp0;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lh4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/firebase/jobdispatcher/JobService$d;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/firebase/jobdispatcher/JobService$d;->a(I)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract c(Lzp0;)Z
.end method

.method public abstract d(Lzp0;)Z
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public e(Lzp0;Ltp0;)V
    .locals 5

    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobService;->a:Lh4;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/JobService;->a:Lh4;

    invoke-interface {p1}, Lzp0;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lh4;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "FJD.JobService"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Job with tag = %s was already running."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lzp0;->getTag()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/JobService;->a:Lh4;

    invoke-interface {p1}, Lzp0;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/firebase/jobdispatcher/JobService$d;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Lcom/firebase/jobdispatcher/JobService$d;-><init>(Lzp0;Ltp0;Lcom/firebase/jobdispatcher/JobService$a;)V

    invoke-virtual {v1, v2, v3}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/firebase/jobdispatcher/JobService;->c:Landroid/os/Handler;

    new-instance v1, Lcom/firebase/jobdispatcher/JobService$b;

    invoke-direct {v1, p0, p1}, Lcom/firebase/jobdispatcher/JobService$b;-><init>(Lcom/firebase/jobdispatcher/JobService;Lzp0;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(Lzp0;Z)V
    .locals 4

    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobService;->a:Lh4;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/JobService;->a:Lh4;

    invoke-interface {p1}, Lzp0;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lh4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/jobdispatcher/JobService$d;

    if-nez v1, :cond_1

    const-string p1, "FJD.JobService"

    const/4 p2, 0x3

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "FJD.JobService"

    const-string p2, "Provided job has already been executed."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    sget-object v2, Lcom/firebase/jobdispatcher/JobService;->c:Landroid/os/Handler;

    new-instance v3, Lcom/firebase/jobdispatcher/JobService$c;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/firebase/jobdispatcher/JobService$c;-><init>(Lcom/firebase/jobdispatcher/JobService;Lzp0;ZLcom/firebase/jobdispatcher/JobService$d;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/firebase/jobdispatcher/JobService;->b:Lup0$a;

    return-object p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 0

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-virtual {p0, p3}, Landroid/app/Service;->stopSelf(I)V

    const/4 p1, 0x2

    return p1
.end method

.method public final onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 5

    iget-object v0, p0, Lcom/firebase/jobdispatcher/JobService;->a:Lh4;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/firebase/jobdispatcher/JobService;->a:Lh4;

    invoke-virtual {v1}, Lh4;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/firebase/jobdispatcher/JobService;->a:Lh4;

    invoke-virtual {v3, v1}, Lh4;->i(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lh4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/firebase/jobdispatcher/JobService$d;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/firebase/jobdispatcher/JobService$d;->a:Lzp0;

    invoke-virtual {p0, v4}, Lcom/firebase/jobdispatcher/JobService;->d(Lzp0;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    :goto_1
    invoke-virtual {v3, v4}, Lcom/firebase/jobdispatcher/JobService$d;->a(I)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
