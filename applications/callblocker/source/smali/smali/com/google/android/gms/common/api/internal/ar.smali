.class final Lcom/google/android/gms/common/api/internal/ar;
.super Lcom/google/android/gms/internal/d/f;
.source "com.google.android.gms:play-services-base@@17.1.0"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/api/internal/aq;


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 18
    const-string/jumbo v0, "TransformedResultImpl"

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x46

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "TransformationResultHandler received unknown message type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :goto_0
    return-void

    .line 5
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/e;

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ar;->a:Lcom/google/android/gms/common/api/internal/aq;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/aq;->d(Lcom/google/android/gms/common/api/internal/aq;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 7
    if-nez v0, :cond_0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ar;->a:Lcom/google/android/gms/common/api/internal/aq;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/aq;->e(Lcom/google/android/gms/common/api/internal/aq;)Lcom/google/android/gms/common/api/internal/aq;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0xd

    const-string/jumbo v4, "Transform returned null"

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/internal/aq;->a(Lcom/google/android/gms/common/api/internal/aq;Lcom/google/android/gms/common/api/Status;)V

    .line 12
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 9
    :cond_0
    :try_start_1
    instance-of v2, v0, Lcom/google/android/gms/common/api/internal/al;

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/ar;->a:Lcom/google/android/gms/common/api/internal/aq;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/aq;->e(Lcom/google/android/gms/common/api/internal/aq;)Lcom/google/android/gms/common/api/internal/aq;

    move-result-object v2

    check-cast v0, Lcom/google/android/gms/common/api/internal/al;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/al;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/common/api/internal/aq;->a(Lcom/google/android/gms/common/api/internal/aq;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/ar;->a:Lcom/google/android/gms/common/api/internal/aq;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/aq;->e(Lcom/google/android/gms/common/api/internal/aq;)Lcom/google/android/gms/common/api/internal/aq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/api/internal/aq;->a(Lcom/google/android/gms/common/api/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 13
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/RuntimeException;

    .line 14
    const-string/jumbo v2, "TransformedResultImpl"

    const-string/jumbo v3, "Runtime exception on the transformation worker thread: "

    .line 15
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    :goto_2
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    throw v0

    .line 15
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 4
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
