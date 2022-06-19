.class public Lcom/androidplot/util/Redrawer;
.super Ljava/lang/Object;
.source "Redrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final ONE_SECOND_MS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "com.androidplot.util.Redrawer"


# instance fields
.field private keepAlive:Z

.field private keepRunning:Z

.field private plots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/androidplot/Plot;",
            ">;>;"
        }
    .end annotation
.end field

.field private sleepTime:J

.field private thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/androidplot/Plot;FZ)V
    .locals 0

    .line 69
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/androidplot/util/Redrawer;-><init>(Ljava/util/List;FZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;FZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/androidplot/Plot;",
            ">;FZ)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/androidplot/util/Redrawer;->plots:Ljava/util/List;

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidplot/Plot;

    .line 58
    iget-object v1, p0, Lcom/androidplot/util/Redrawer;->plots:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0, p2}, Lcom/androidplot/util/Redrawer;->setMaxRefreshRate(F)V

    .line 61
    new-instance p1, Ljava/lang/Thread;

    const-string p2, "Androidplot Redrawer"

    invoke-direct {p1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/androidplot/util/Redrawer;->thread:Ljava/lang/Thread;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    if-eqz p3, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/androidplot/util/Redrawer;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 96
    :try_start_0
    iput-boolean v0, p0, Lcom/androidplot/util/Redrawer;->keepRunning:Z

    .line 97
    iput-boolean v0, p0, Lcom/androidplot/util/Redrawer;->keepAlive:Z

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 76
    :try_start_0
    iput-boolean v0, p0, Lcom/androidplot/util/Redrawer;->keepRunning:Z

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 78
    sget-object v0, Lcom/androidplot/util/Redrawer;->TAG:Ljava/lang/String;

    const-string v1, "Redrawer paused."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/androidplot/util/Redrawer;->keepAlive:Z

    .line 105
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/androidplot/util/Redrawer;->keepAlive:Z

    if-eqz v0, :cond_2

    .line 106
    iget-boolean v0, p0, Lcom/androidplot/util/Redrawer;->keepRunning:Z

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/androidplot/util/Redrawer;->plots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 113
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidplot/Plot;

    invoke-virtual {v1}, Lcom/androidplot/Plot;->redraw()V

    goto :goto_1

    .line 115
    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 116
    :try_start_1
    iget-wide v0, p0, Lcom/androidplot/util/Redrawer;->sleepTime:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 117
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 120
    :cond_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 121
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 122
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 128
    sget-object v1, Lcom/androidplot/util/Redrawer;->TAG:Ljava/lang/String;

    const-string v2, "Redrawer thread exited."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    throw v0

    .line 128
    :catch_0
    :cond_2
    sget-object v0, Lcom/androidplot/util/Redrawer;->TAG:Ljava/lang/String;

    const-string v1, "Redrawer thread exited."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMaxRefreshRate(F)V
    .locals 4

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v0, p1

    float-to-long v0, v0

    .line 138
    iput-wide v0, p0, Lcom/androidplot/util/Redrawer;->sleepTime:J

    .line 139
    sget-object v0, Lcom/androidplot/util/Redrawer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Redrawer refresh rate to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "( "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/androidplot/util/Redrawer;->sleepTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 85
    :try_start_0
    iput-boolean v0, p0, Lcom/androidplot/util/Redrawer;->keepRunning:Z

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 87
    sget-object v0, Lcom/androidplot/util/Redrawer;->TAG:Ljava/lang/String;

    const-string v1, "Redrawer started."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
