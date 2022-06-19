.class final Lcom/google/android/play/core/assetpacks/e;
.super Lcom/google/android/play/core/internal/i;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/google/android/play/core/tasks/p;

.field final synthetic f:Lcom/google/android/play/core/assetpacks/p;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/p;Lcom/google/android/play/core/tasks/p;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/play/core/tasks/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/e;->f:Lcom/google/android/play/core/assetpacks/p;

    iput p3, p0, Lcom/google/android/play/core/assetpacks/e;->a:I

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/e;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/e;->c:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/play/core/assetpacks/e;->d:I

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/e;->e:Lcom/google/android/play/core/tasks/p;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/i;-><init>(Lcom/google/android/play/core/tasks/p;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/e;->f:Lcom/google/android/play/core/assetpacks/p;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/p;->b(Lcom/google/android/play/core/assetpacks/p;)Lcom/google/android/play/core/internal/r;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lcom/google/android/play/core/internal/r;->e:Landroid/os/IInterface;

    check-cast v0, Lcom/google/android/play/core/internal/bx;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/e;->f:Lcom/google/android/play/core/assetpacks/p;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/p;->a(Lcom/google/android/play/core/assetpacks/p;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/play/core/assetpacks/e;->a:I

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/e;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/e;->c:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/play/core/assetpacks/e;->d:I

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/p;->c(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {}, Lcom/google/android/play/core/assetpacks/p;->c()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/assetpacks/k;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/e;->f:Lcom/google/android/play/core/assetpacks/p;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/e;->e:Lcom/google/android/play/core/tasks/p;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/play/core/assetpacks/k;-><init>(Lcom/google/android/play/core/assetpacks/p;Lcom/google/android/play/core/tasks/p;[C)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/internal/bx;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/bz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/play/core/assetpacks/p;->b()Lcom/google/android/play/core/internal/h;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "notifyChunkTransferred"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
