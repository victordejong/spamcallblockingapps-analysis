.class final Lcom/google/android/gms/common/api/internal/zact;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zaa:Lcom/google/android/gms/common/api/Result;

.field public final synthetic zab:Lcom/google/android/gms/common/api/internal/zacv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zacv;Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zact;->zaa:Lcom/google/android/gms/common/api/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zacv;->zac(Lcom/google/android/gms/common/api/internal/zacv;)Lcom/google/android/gms/common/api/ResultTransform;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/ResultTransform;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zact;->zaa:Lcom/google/android/gms/common/api/Result;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/ResultTransform;->onSuccess(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zacv;->zad(Lcom/google/android/gms/common/api/internal/zacv;)Lcom/google/android/gms/common/api/internal/zacu;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zacv;->zad(Lcom/google/android/gms/common/api/internal/zacv;)Lcom/google/android/gms/common/api/internal/zacu;

    move-result-object v3

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zact;->zaa:Lcom/google/android/gms/common/api/Result;

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zacv;->zae(Lcom/google/android/gms/common/api/internal/zacv;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zacv;->zaf(Lcom/google/android/gms/common/api/internal/zacv;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->zap(Lcom/google/android/gms/common/api/internal/zacv;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zacv;->zad(Lcom/google/android/gms/common/api/internal/zacv;)Lcom/google/android/gms/common/api/internal/zacu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zacv;->zad(Lcom/google/android/gms/common/api/internal/zacv;)Lcom/google/android/gms/common/api/internal/zacu;

    move-result-object v2

    const/4 v3, 0x1

    .line 9
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 10
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zact;->zaa:Lcom/google/android/gms/common/api/Result;

    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zacv;->zae(Lcom/google/android/gms/common/api/internal/zacv;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zacv;->zaf(Lcom/google/android/gms/common/api/internal/zacv;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 14
    :goto_1
    sget-object v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zact;->zaa:Lcom/google/android/gms/common/api/Result;

    .line 15
    invoke-static {v1, v2}, Lcom/google/android/gms/common/api/internal/zacv;->zae(Lcom/google/android/gms/common/api/internal/zacv;Lcom/google/android/gms/common/api/Result;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zacv;->zaf(Lcom/google/android/gms/common/api/internal/zacv;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v1, :cond_1

    goto :goto_2

    .line 17
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zact;->zab:Lcom/google/android/gms/common/api/internal/zacv;

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->zap(Lcom/google/android/gms/common/api/internal/zacv;)V

    .line 19
    :goto_2
    throw v0
.end method
