.class final Lcom/google/android/play/core/assetpacks/d;
.super Lcom/google/android/play/core/internal/b;
.source ""


# instance fields
.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Lcom/google/android/play/core/tasks/m;

.field final synthetic h:Lcom/google/android/play/core/assetpacks/o;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/o;Lcom/google/android/play/core/tasks/m;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/play/core/tasks/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/d;->h:Lcom/google/android/play/core/assetpacks/o;

    iput p3, p0, Lcom/google/android/play/core/assetpacks/d;->c:I

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/d;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/d;->e:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/play/core/assetpacks/d;->f:I

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/d;->g:Lcom/google/android/play/core/tasks/m;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/b;-><init>(Lcom/google/android/play/core/tasks/m;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/d;->h:Lcom/google/android/play/core/assetpacks/o;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/o;->n(Lcom/google/android/play/core/assetpacks/o;)Lcom/google/android/play/core/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/n;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/internal/b1;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/d;->h:Lcom/google/android/play/core/assetpacks/o;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/o;->l(Lcom/google/android/play/core/assetpacks/o;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/play/core/assetpacks/d;->c:I

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/d;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/d;->e:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/play/core/assetpacks/d;->f:I

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/o;->q(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {}, Lcom/google/android/play/core/assetpacks/o;->p()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/assetpacks/j;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/d;->h:Lcom/google/android/play/core/assetpacks/o;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/d;->g:Lcom/google/android/play/core/tasks/m;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/play/core/assetpacks/j;-><init>(Lcom/google/android/play/core/assetpacks/o;Lcom/google/android/play/core/tasks/m;[C)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/internal/b1;->r5(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/d1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/play/core/assetpacks/o;->o()Lcom/google/android/play/core/internal/a;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "notifyChunkTransferred"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
