.class final Lcom/google/android/gms/internal/ads/drw;
.super Lcom/google/android/gms/internal/ads/cnz;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/ads/dry;",
        ">",
        "Lcom/google/android/gms/internal/ads/cnz;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:I

.field private final b:Lcom/google/android/gms/internal/ads/dry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/drx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/drx",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final d:J

.field private e:Ljava/io/IOException;

.field private f:I

.field private volatile g:Ljava/lang/Thread;

.field private volatile h:Z

.field private final synthetic i:Lcom/google/android/gms/internal/ads/dru;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dru;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/dry;Lcom/google/android/gms/internal/ads/drx;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/google/android/gms/internal/ads/drx",
            "<TT;>;IJ)V"
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drw;->i:Lcom/google/android/gms/internal/ads/dru;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/cnz;-><init>(Landroid/os/Looper;)V

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/drw;->b:Lcom/google/android/gms/internal/ads/dry;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/drw;->c:Lcom/google/android/gms/internal/ads/drx;

    .line 5
    iput p5, p0, Lcom/google/android/gms/internal/ads/drw;->a:I

    .line 6
    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/drw;->d:J

    .line 7
    return-void
.end method

.method private final a()V
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->e:Ljava/io/IOException;

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->i:Lcom/google/android/gms/internal/ads/dru;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dru;->b(Lcom/google/android/gms/internal/ads/dru;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/drw;->i:Lcom/google/android/gms/internal/ads/dru;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dru;->a(Lcom/google/android/gms/internal/ads/dru;)Lcom/google/android/gms/internal/ads/drw;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method private final b()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->i:Lcom/google/android/gms/internal/ads/dru;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dru;->a(Lcom/google/android/gms/internal/ads/dru;Lcom/google/android/gms/internal/ads/drw;)Lcom/google/android/gms/internal/ads/drw;

    .line 98
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->e:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/drw;->f:I

    if-le v0, p1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->e:Ljava/io/IOException;

    throw v0

    .line 10
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->i:Lcom/google/android/gms/internal/ads/dru;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dru;->a(Lcom/google/android/gms/internal/ads/dru;)Lcom/google/android/gms/internal/ads/drw;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->i:Lcom/google/android/gms/internal/ads/dru;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/dru;->a(Lcom/google/android/gms/internal/ads/dru;Lcom/google/android/gms/internal/ads/drw;)Lcom/google/android/gms/internal/ads/drw;

    .line 13
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 14
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/drw;->sendEmptyMessageDelayed(IJ)Z

    .line 16
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 11
    goto :goto_0

    .line 15
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/drw;->a()V

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/drw;->h:Z

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->e:Ljava/io/IOException;

    .line 19
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/drw;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/drw;->removeMessages(I)V

    .line 21
    if-nez p1, :cond_0

    .line 22
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/drw;->sendEmptyMessage(I)Z

    .line 26
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/drw;->b()V

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->c:Lcom/google/android/gms/internal/ads/drx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/drw;->b:Lcom/google/android/gms/internal/ads/dry;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/drw;->d:J

    sub-long v4, v2, v4

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/drx;->a(Lcom/google/android/gms/internal/ads/dry;JJZ)V

    .line 30
    :cond_1
    return-void

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->b:Lcom/google/android/gms/internal/ads/dry;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dry;->a()V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 66
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/drw;->h:Z

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    .line 69
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/drw;->a()V

    goto :goto_0

    .line 71
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 72
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 73
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/drw;->b()V

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 75
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/drw;->d:J

    sub-long v4, v2, v0

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->b:Lcom/google/android/gms/internal/ads/dry;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dry;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->c:Lcom/google/android/gms/internal/ads/drx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/drw;->b:Lcom/google/android/gms/internal/ads/dry;

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/drx;->a(Lcom/google/android/gms/internal/ads/dry;JJZ)V

    goto :goto_0

    .line 79
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->c:Lcom/google/android/gms/internal/ads/drx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/drw;->b:Lcom/google/android/gms/internal/ads/dry;

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/drx;->a(Lcom/google/android/gms/internal/ads/dry;JJZ)V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->c:Lcom/google/android/gms/internal/ads/drx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/drw;->b:Lcom/google/android/gms/internal/ads/dry;

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/drx;->a(Lcom/google/android/gms/internal/ads/dry;JJ)V

    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/IOException;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->e:Ljava/io/IOException;

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->c:Lcom/google/android/gms/internal/ads/drx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/drw;->b:Lcom/google/android/gms/internal/ads/dry;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/drw;->e:Ljava/io/IOException;

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/drx;->a(Lcom/google/android/gms/internal/ads/dry;JJLjava/io/IOException;)I

    move-result v0

    .line 86
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->i:Lcom/google/android/gms/internal/ads/dru;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/drw;->e:Ljava/io/IOException;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dru;->a(Lcom/google/android/gms/internal/ads/dru;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_0

    .line 88
    :cond_5
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 89
    if-ne v0, v7, :cond_6

    move v0, v7

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/drw;->f:I

    .line 91
    iget v0, p0, Lcom/google/android/gms/internal/ads/drw;->f:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/drw;->a(J)V

    goto :goto_0

    .line 89
    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/ads/drw;->f:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x3

    .line 31
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->g:Ljava/lang/Thread;

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->b:Lcom/google/android/gms/internal/ads/dry;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dry;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const-string/jumbo v1, "load:"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->b:Lcom/google/android/gms/internal/ads/dry;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4

    .line 34
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->b:Lcom/google/android/gms/internal/ads/dry;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dry;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/dso;->a()V

    .line 39
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/drw;->h:Z

    if-nez v0, :cond_1

    .line 40
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/drw;->sendEmptyMessage(I)Z

    .line 60
    :cond_1
    :goto_1
    return-void

    .line 33
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/drw;->h:Z

    if-nez v1, :cond_1

    .line 44
    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/internal/ads/drw;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 37
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/dso;->a()V

    .line 38
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4

    .line 47
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drw;->b:Lcom/google/android/gms/internal/ads/dry;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dry;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 48
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/drw;->h:Z

    if-nez v0, :cond_1

    .line 49
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/drw;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 51
    :catch_2
    move-exception v0

    .line 52
    const-string/jumbo v1, "LoadTask"

    const-string/jumbo v2, "Unexpected exception loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/drw;->h:Z

    if-nez v1, :cond_1

    .line 54
    new-instance v1, Lcom/google/android/gms/internal/ads/zzof;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzof;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/internal/ads/drw;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 56
    :catch_3
    move-exception v0

    .line 57
    const-string/jumbo v1, "LoadTask"

    const-string/jumbo v2, "OutOfMemory error loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/drw;->h:Z

    if-nez v1, :cond_1

    .line 59
    new-instance v1, Lcom/google/android/gms/internal/ads/zzof;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzof;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/internal/ads/drw;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 61
    :catch_4
    move-exception v0

    .line 62
    const-string/jumbo v1, "LoadTask"

    const-string/jumbo v2, "Unexpected error loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/drw;->h:Z

    if-nez v1, :cond_3

    .line 64
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/drw;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 65
    :cond_3
    throw v0
.end method
