.class final Lcom/google/android/play/core/assetpacks/i;
.super Lcom/google/android/play/core/internal/b;


# instance fields
.field final synthetic e:Lcom/google/android/play/core/tasks/m;

.field final synthetic f:Lcom/google/android/play/core/assetpacks/o;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/o;Lcom/google/android/play/core/tasks/m;Lcom/google/android/play/core/tasks/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/i;->f:Lcom/google/android/play/core/assetpacks/o;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/i;->e:Lcom/google/android/play/core/tasks/m;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/b;-><init>(Lcom/google/android/play/core/tasks/m;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/i;->f:Lcom/google/android/play/core/assetpacks/o;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/o;->t(Lcom/google/android/play/core/assetpacks/o;)Lcom/google/android/play/core/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/n;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/internal/b1;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/i;->f:Lcom/google/android/play/core/assetpacks/o;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/o;->l(Lcom/google/android/play/core/assetpacks/o;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/play/core/assetpacks/o;->p()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/assetpacks/m;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/i;->f:Lcom/google/android/play/core/assetpacks/o;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/i;->e:Lcom/google/android/play/core/tasks/m;

    invoke-direct {v3, v4, v5}, Lcom/google/android/play/core/assetpacks/m;-><init>(Lcom/google/android/play/core/assetpacks/o;Lcom/google/android/play/core/tasks/m;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/play/core/internal/b1;->F2(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/internal/d1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/play/core/assetpacks/o;->o()Lcom/google/android/play/core/internal/a;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "keepAlive"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
