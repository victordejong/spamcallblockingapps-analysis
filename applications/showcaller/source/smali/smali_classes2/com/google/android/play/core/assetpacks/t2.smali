.class final Lcom/google/android/play/core/assetpacks/t2;
.super Lcom/google/android/play/core/internal/b;


# instance fields
.field final synthetic e:Ljava/util/List;

.field final synthetic f:Lcom/google/android/play/core/tasks/m;

.field final synthetic g:Lcom/google/android/play/core/assetpacks/o;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/o;Lcom/google/android/play/core/tasks/m;Ljava/util/List;Lcom/google/android/play/core/tasks/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/t2;->g:Lcom/google/android/play/core/assetpacks/o;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/t2;->e:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/t2;->f:Lcom/google/android/play/core/tasks/m;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/b;-><init>(Lcom/google/android/play/core/tasks/m;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/t2;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/o;->k(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/t2;->g:Lcom/google/android/play/core/assetpacks/o;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/o;->n(Lcom/google/android/play/core/assetpacks/o;)Lcom/google/android/play/core/internal/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/play/core/internal/n;->c()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/internal/b1;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/t2;->g:Lcom/google/android/play/core/assetpacks/o;

    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/o;->l(Lcom/google/android/play/core/assetpacks/o;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/play/core/assetpacks/o;->p()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/assetpacks/j;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/t2;->g:Lcom/google/android/play/core/assetpacks/o;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/t2;->f:Lcom/google/android/play/core/tasks/m;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/play/core/assetpacks/j;-><init>(Lcom/google/android/play/core/assetpacks/o;Lcom/google/android/play/core/tasks/m;[B)V

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/google/android/play/core/internal/b1;->b1(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/internal/d1;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/play/core/assetpacks/o;->o()Lcom/google/android/play/core/internal/a;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/t2;->e:Ljava/util/List;

    aput-object v4, v2, v3

    const-string v3, "cancelDownloads(%s)"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
