.class final Lcom/google/android/play/core/assetpacks/e;
.super Lcom/google/android/play/core/internal/b;
.source ""


# instance fields
.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/google/android/play/core/tasks/m;

.field final synthetic f:I

.field final synthetic g:Lcom/google/android/play/core/assetpacks/o;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/o;Lcom/google/android/play/core/tasks/m;ILjava/lang/String;Lcom/google/android/play/core/tasks/m;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/e;->g:Lcom/google/android/play/core/assetpacks/o;

    iput p3, p0, Lcom/google/android/play/core/assetpacks/e;->c:I

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/e;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/e;->e:Lcom/google/android/play/core/tasks/m;

    iput p6, p0, Lcom/google/android/play/core/assetpacks/e;->f:I

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/b;-><init>(Lcom/google/android/play/core/tasks/m;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/e;->g:Lcom/google/android/play/core/assetpacks/o;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/o;->n(Lcom/google/android/play/core/assetpacks/o;)Lcom/google/android/play/core/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/n;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/internal/b1;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/e;->g:Lcom/google/android/play/core/assetpacks/o;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/o;->l(Lcom/google/android/play/core/assetpacks/o;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/play/core/assetpacks/e;->c:I

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/e;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/play/core/assetpacks/o;->r(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {}, Lcom/google/android/play/core/assetpacks/o;->p()Landroid/os/Bundle;

    move-result-object v3

    new-instance v10, Lcom/google/android/play/core/assetpacks/n;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/e;->g:Lcom/google/android/play/core/assetpacks/o;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/e;->e:Lcom/google/android/play/core/tasks/m;

    iget v7, p0, Lcom/google/android/play/core/assetpacks/e;->c:I

    iget-object v8, p0, Lcom/google/android/play/core/assetpacks/e;->d:Ljava/lang/String;

    iget v9, p0, Lcom/google/android/play/core/assetpacks/e;->f:I

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/google/android/play/core/assetpacks/n;-><init>(Lcom/google/android/play/core/assetpacks/o;Lcom/google/android/play/core/tasks/m;ILjava/lang/String;I)V

    invoke-interface {v0, v1, v2, v3, v10}, Lcom/google/android/play/core/internal/b1;->G1(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/d1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/play/core/assetpacks/o;->o()Lcom/google/android/play/core/internal/a;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "notifyModuleCompleted"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
