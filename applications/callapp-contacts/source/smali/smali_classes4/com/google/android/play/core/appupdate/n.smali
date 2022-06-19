.class final Lcom/google/android/play/core/appupdate/n;
.super Lcom/google/android/play/core/internal/i;


# instance fields
.field final synthetic a:Lcom/google/android/play/core/tasks/p;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/play/core/appupdate/r;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/appupdate/r;Lcom/google/android/play/core/tasks/p;Lcom/google/android/play/core/tasks/p;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/n;->c:Lcom/google/android/play/core/appupdate/r;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/n;->a:Lcom/google/android/play/core/tasks/p;

    iput-object p4, p0, Lcom/google/android/play/core/appupdate/n;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/i;-><init>(Lcom/google/android/play/core/tasks/p;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/n;->c:Lcom/google/android/play/core/appupdate/r;

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/r;->b:Lcom/google/android/play/core/internal/r;

    .line 1000
    iget-object v0, v0, Lcom/google/android/play/core/internal/r;->e:Landroid/os/IInterface;

    check-cast v0, Lcom/google/android/play/core/internal/bs;

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/n;->c:Lcom/google/android/play/core/appupdate/r;

    invoke-static {v1}, Lcom/google/android/play/core/appupdate/r;->a(Lcom/google/android/play/core/appupdate/r;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/play/core/appupdate/r;->c()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/appupdate/p;

    iget-object v4, p0, Lcom/google/android/play/core/appupdate/n;->c:Lcom/google/android/play/core/appupdate/r;

    iget-object v5, p0, Lcom/google/android/play/core/appupdate/n;->a:Lcom/google/android/play/core/tasks/p;

    invoke-direct {v3, v4, v5}, Lcom/google/android/play/core/appupdate/p;-><init>(Lcom/google/android/play/core/appupdate/r;Lcom/google/android/play/core/tasks/p;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/play/core/internal/bs;->b(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/internal/bu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/play/core/appupdate/r;->b()Lcom/google/android/play/core/internal/h;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/play/core/appupdate/n;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "completeUpdate(%s)"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/n;->a:Lcom/google/android/play/core/tasks/p;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/p;->b(Ljava/lang/Exception;)V

    return-void
.end method
