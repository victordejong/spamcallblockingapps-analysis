.class final Lcom/google/android/gms/common/api/internal/bh;
.super Lcom/google/android/gms/internal/base/j;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/bi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/bi;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bh;->a:Lcom/google/android/gms/common/api/internal/bi;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/base/j;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    .line 13
    iget p1, p1, Landroid/os/Message;->what:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x46

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "TransformationResultHandler received unknown message type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "TransformedResultImpl"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/RuntimeException;

    .line 3
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Runtime exception on the transformation worker thread: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "TransformedResultImpl"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    throw p1

    .line 6
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/j;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bh;->a:Lcom/google/android/gms/common/api/internal/bi;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/bi;->e:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bh;->a:Lcom/google/android/gms/common/api/internal/bi;

    .line 2000
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/bi;->b:Lcom/google/android/gms/common/api/internal/bi;

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/bi;

    if-nez p1, :cond_3

    .line 8
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    const-string v3, "Transform returned null"

    invoke-direct {p1, v1, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 3000
    invoke-virtual {v2, p1}, Lcom/google/android/gms/common/api/internal/bi;->a(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_2

    .line 9
    :cond_3
    instance-of v3, p1, Lcom/google/android/gms/common/api/internal/ay;

    if-eqz v3, :cond_4

    .line 10
    :try_start_1
    check-cast p1, Lcom/google/android/gms/common/api/internal/ay;

    .line 4000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/ay;->a:Lcom/google/android/gms/common/api/Status;

    .line 5000
    invoke-virtual {v2, p1}, Lcom/google/android/gms/common/api/internal/bi;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2

    .line 11
    :cond_4
    iget-object v3, v2, Lcom/google/android/gms/common/api/internal/bi;->e:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object p1, v2, Lcom/google/android/gms/common/api/internal/bi;->d:Lcom/google/android/gms/common/api/j;

    .line 5001
    iget-object p1, v2, Lcom/google/android/gms/common/api/internal/bi;->a:Lcom/google/android/gms/common/api/p;

    if-nez p1, :cond_5

    iget-object p1, v2, Lcom/google/android/gms/common/api/internal/bi;->c:Lcom/google/android/gms/common/api/o;

    if-eqz p1, :cond_8

    :cond_5
    iget-object p1, v2, Lcom/google/android/gms/common/api/internal/bi;->g:Ljava/lang/ref/WeakReference;

    .line 6001
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/g;

    iget-boolean v4, v2, Lcom/google/android/gms/common/api/internal/bi;->i:Z

    if-nez v4, :cond_6

    iget-object v4, v2, Lcom/google/android/gms/common/api/internal/bi;->a:Lcom/google/android/gms/common/api/p;

    if-eqz v4, :cond_6

    if-eqz p1, :cond_6

    .line 6002
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/g;->f()V

    iput-boolean v1, v2, Lcom/google/android/gms/common/api/internal/bi;->i:Z

    :cond_6
    iget-object p1, v2, Lcom/google/android/gms/common/api/internal/bi;->f:Lcom/google/android/gms/common/api/Status;

    if-eqz p1, :cond_7

    .line 6003
    invoke-virtual {v2, p1}, Lcom/google/android/gms/common/api/internal/bi;->b(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :cond_7
    iget-object p1, v2, Lcom/google/android/gms/common/api/internal/bi;->d:Lcom/google/android/gms/common/api/j;

    if-eqz p1, :cond_8

    .line 6004
    invoke-virtual {p1, v2}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/n;)V

    .line 5002
    :cond_8
    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 5002
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method
