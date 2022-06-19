.class final Lcom/google/android/gms/internal/ads/eco;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/ads/ecn;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:I

.field private final b:Lcom/google/android/gms/internal/ads/ecn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/eck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/eck<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:J

.field private e:Ljava/io/IOException;

.field private f:I

.field private volatile g:Ljava/lang/Thread;

.field private volatile h:Z

.field private final synthetic i:Lcom/google/android/gms/internal/ads/ecm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ecm;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/ecn;Lcom/google/android/gms/internal/ads/eck;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/google/android/gms/internal/ads/eck<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eco;->i:Lcom/google/android/gms/internal/ads/ecm;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/eco;->b:Lcom/google/android/gms/internal/ads/ecn;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/eco;->c:Lcom/google/android/gms/internal/ads/eck;

    .line 5
    iput p5, p0, Lcom/google/android/gms/internal/ads/eco;->a:I

    .line 6
    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/eco;->d:J

    return-void
.end method

.method private final a()V
    .locals 2

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eco;->e:Ljava/io/IOException;

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eco;->i:Lcom/google/android/gms/internal/ads/ecm;

    .line 1027
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ecm;->a:Ljava/util/concurrent/ExecutorService;

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eco;->i:Lcom/google/android/gms/internal/ads/ecm;

    .line 2024
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ecm;->b:Lcom/google/android/gms/internal/ads/eco;

    .line 95
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final b()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eco;->i:Lcom/google/android/gms/internal/ads/ecm;

    const/4 v1, 0x0

    .line 2025
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ecm;->b:Lcom/google/android/gms/internal/ads/eco;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eco;->e:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/eco;->f:I

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(J)V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eco;->i:Lcom/google/android/gms/internal/ads/ecm;

    .line 1024
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ecm;->b:Lcom/google/android/gms/internal/ads/eco;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ecr;->b(Z)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eco;->i:Lcom/google/android/gms/internal/ads/ecm;

    .line 1025
    iput-object p0, v0, Lcom/google/android/gms/internal/ads/ecm;->b:Lcom/google/android/gms/internal/ads/eco;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 14
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/eco;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 15
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eco;->a()V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    .line 17
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/eco;->h:Z

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eco;->e:Ljava/io/IOException;

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/eco;->hasMessages(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/eco;->removeMessages(I)V

    if-nez p1, :cond_1

    .line 22
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/eco;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eco;->b:Lcom/google/android/gms/internal/ads/ecn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ecn;->a()V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eco;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eco;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eco;->b()V

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eco;->c:Lcom/google/android/gms/internal/ads/eck;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eco;->b:Lcom/google/android/gms/internal/ads/ecn;

    invoke-interface {p1, v0, v2}, Lcom/google/android/gms/internal/ads/eck;->a(Lcom/google/android/gms/internal/ads/ecn;Z)V

    :cond_2
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 66
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eco;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 69
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eco;->a()V

    return-void

    .line 71
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 73
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eco;->b()V

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eco;->b:Lcom/google/android/gms/internal/ads/ecn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ecn;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 77
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eco;->c:Lcom/google/android/gms/internal/ads/eck;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eco;->b:Lcom/google/android/gms/internal/ads/ecn;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/eck;->a(Lcom/google/android/gms/internal/ads/ecn;Z)V

    return-void

    .line 79
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    goto :goto_1

    .line 84
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/IOException;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eco;->e:Ljava/io/IOException;

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eco;->c:Lcom/google/android/gms/internal/ads/eck;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eco;->b:Lcom/google/android/gms/internal/ads/ecn;

    invoke-interface {v0, v4, p1}, Lcom/google/android/gms/internal/ads/eck;->a(Lcom/google/android/gms/internal/ads/ecn;Ljava/io/IOException;)I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 87
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eco;->i:Lcom/google/android/gms/internal/ads/ecm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eco;->e:Ljava/io/IOException;

    .line 1026
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/ecm;->c:Ljava/io/IOException;

    return-void

    :cond_4
    if-eq p1, v1, :cond_6

    if-ne p1, v2, :cond_5

    const/4 p1, 0x1

    goto :goto_0

    .line 89
    :cond_5
    iget p1, p0, Lcom/google/android/gms/internal/ads/eco;->f:I

    add-int/2addr p1, v2

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/eco;->f:I

    sub-int/2addr p1, v2

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    .line 91
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/eco;->a(J)V

    :cond_6
    :goto_1
    return-void

    .line 82
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eco;->c:Lcom/google/android/gms/internal/ads/eck;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eco;->b:Lcom/google/android/gms/internal/ads/ecn;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/eck;->a(Lcom/google/android/gms/internal/ads/ecn;)V

    return-void

    .line 80
    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eco;->c:Lcom/google/android/gms/internal/ads/eck;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eco;->b:Lcom/google/android/gms/internal/ads/ecn;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/eck;->a(Lcom/google/android/gms/internal/ads/ecn;Z)V

    return-void

    .line 72
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public final run()V
    .locals 6

    const-string v0, "LoadTask"

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 31
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/eco;->g:Ljava/lang/Thread;

    .line 32
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eco;->b:Lcom/google/android/gms/internal/ads/ecn;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/ecn;->b()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "load:"

    .line 33
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/eco;->b:Lcom/google/android/gms/internal/ads/ecn;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/edf;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eco;->b:Lcom/google/android/gms/internal/ads/ecn;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/ecn;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/edf;->a()V

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/edf;->a()V

    .line 38
    throw v3

    .line 39
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/eco;->h:Z

    if-nez v3, :cond_2

    .line 40
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/eco;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v1

    const-string v2, "Unexpected error loading stream"

    .line 62
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eco;->h:Z

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/eco;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 65
    :cond_3
    throw v1

    :catch_1
    move-exception v1

    const-string v3, "OutOfMemory error loading stream"

    .line 57
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eco;->h:Z

    if-nez v0, :cond_4

    .line 59
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpe;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzpe;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/ads/eco;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    return-void

    :catch_2
    move-exception v1

    const-string v3, "Unexpected exception loading stream"

    .line 52
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eco;->h:Z

    if-nez v0, :cond_5

    .line 54
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpe;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzpe;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/ads/eco;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    return-void

    :catch_3
    nop

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eco;->b:Lcom/google/android/gms/internal/ads/ecn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ecn;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ecr;->b(Z)V

    .line 48
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/eco;->h:Z

    if-nez v0, :cond_6

    .line 49
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/eco;->sendEmptyMessage(I)Z

    :cond_6
    return-void

    :catch_4
    move-exception v0

    .line 43
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/eco;->h:Z

    if-nez v1, :cond_7

    .line 44
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/ads/eco;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_7
    return-void
.end method
