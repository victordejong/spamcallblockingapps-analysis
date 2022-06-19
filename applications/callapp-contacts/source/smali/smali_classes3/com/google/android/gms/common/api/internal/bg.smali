.class final Lcom/google/android/gms/common/api/internal/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/m;

.field final synthetic b:Lcom/google/android/gms/common/api/internal/bi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/bi;Lcom/google/android/gms/common/api/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bi;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/bg;->a:Lcom/google/android/gms/common/api/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bi;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/bi;->a:Lcom/google/android/gms/common/api/p;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/p;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/p;->a()Lcom/google/android/gms/common/api/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bi;

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/bi;->h:Lcom/google/android/gms/common/api/internal/bh;

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bi;

    .line 3000
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/bi;->h:Lcom/google/android/gms/common/api/internal/bh;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/common/api/internal/bh;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/bh;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bg;->a:Lcom/google/android/gms/common/api/m;

    .line 4000
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/bi;->b(Lcom/google/android/gms/common/api/m;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bi;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/bi;->g:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/g;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/g;->g()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bi;

    .line 6000
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/bi;->h:Lcom/google/android/gms/common/api/internal/bh;

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bi;

    .line 7000
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/bi;->h:Lcom/google/android/gms/common/api/internal/bh;

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/common/api/internal/bh;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/bh;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bg;->a:Lcom/google/android/gms/common/api/m;

    .line 8000
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/bi;->b(Lcom/google/android/gms/common/api/m;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bi;

    .line 9000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/bi;->g:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/g;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/g;->g()V

    :cond_0
    return-void

    .line 7
    :goto_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bg;->a:Lcom/google/android/gms/common/api/m;

    .line 10000
    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/bi;->b(Lcom/google/android/gms/common/api/m;)V

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bg;->b:Lcom/google/android/gms/common/api/internal/bi;

    .line 11000
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/bi;->g:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/g;

    if-nez v1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/g;->g()V

    .line 11
    :goto_1
    throw v0
.end method
