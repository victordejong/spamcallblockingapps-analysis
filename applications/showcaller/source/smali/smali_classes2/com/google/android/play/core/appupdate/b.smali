.class final Lcom/google/android/play/core/appupdate/b;
.super Landroid/os/ResultReceiver;


# instance fields
.field final synthetic d:Lcom/google/android/play/core/tasks/m;


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/b;->d:Lcom/google/android/play/core/tasks/m;

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/m;->e(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/b;->d:Lcom/google/android/play/core/tasks/m;

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/b;->d:Lcom/google/android/play/core/tasks/m;

    const/4 p2, -0x1

    goto :goto_0
.end method
