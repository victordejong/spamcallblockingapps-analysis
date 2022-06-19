.class final Lcom/google/android/play/core/assetpacks/n;
.super Lcom/google/android/play/core/assetpacks/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/play/core/assetpacks/j<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final d:I

.field final e:Ljava/lang/String;

.field final f:I

.field final synthetic g:Lcom/google/android/play/core/assetpacks/o;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/o;Lcom/google/android/play/core/tasks/m;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/m<",
            "Ljava/lang/Void;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/n;->g:Lcom/google/android/play/core/assetpacks/o;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/j;-><init>(Lcom/google/android/play/core/assetpacks/o;Lcom/google/android/play/core/tasks/m;)V

    iput p3, p0, Lcom/google/android/play/core/assetpacks/n;->d:I

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/n;->e:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/play/core/assetpacks/n;->f:I

    return-void
.end method


# virtual methods
.method public final d4(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/n;->g:Lcom/google/android/play/core/assetpacks/o;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/o;->n(Lcom/google/android/play/core/assetpacks/o;)Lcom/google/android/play/core/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/n;->b()V

    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/google/android/play/core/assetpacks/o;->o()Lcom/google/android/play/core/internal/a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onError(%d), retrying notifyModuleCompleted..."

    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/internal/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/play/core/assetpacks/n;->f:I

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/n;->g:Lcom/google/android/play/core/assetpacks/o;

    iget v1, p0, Lcom/google/android/play/core/assetpacks/n;->d:I

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/n;->e:Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/play/core/assetpacks/o;->v(Lcom/google/android/play/core/assetpacks/o;ILjava/lang/String;I)V

    :cond_0
    return-void
.end method
