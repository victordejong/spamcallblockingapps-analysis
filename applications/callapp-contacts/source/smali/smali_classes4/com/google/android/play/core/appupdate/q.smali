.class final Lcom/google/android/play/core/appupdate/q;
.super Lcom/google/android/play/core/appupdate/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/play/core/appupdate/o<",
        "Lcom/google/android/play/core/appupdate/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/google/android/play/core/appupdate/r;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/appupdate/r;Lcom/google/android/play/core/tasks/p;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/p<",
            "Lcom/google/android/play/core/appupdate/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/q;->d:Lcom/google/android/play/core/appupdate/r;

    new-instance v0, Lcom/google/android/play/core/internal/h;

    const-string v1, "OnRequestInstallCallback"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/h;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/play/core/appupdate/o;-><init>(Lcom/google/android/play/core/appupdate/r;Lcom/google/android/play/core/internal/h;Lcom/google/android/play/core/tasks/p;)V

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/q;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/play/core/appupdate/o;->a(Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/google/android/play/core/appupdate/r;->a(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/q;->b:Lcom/google/android/play/core/tasks/p;

    new-instance v1, Lcom/google/android/play/core/install/InstallException;

    invoke-static {p1}, Lcom/google/android/play/core/appupdate/r;->a(Landroid/os/Bundle;)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/p;->b(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/q;->b:Lcom/google/android/play/core/tasks/p;

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/q;->d:Lcom/google/android/play/core/appupdate/r;

    iget-object v2, p0, Lcom/google/android/play/core/appupdate/q;->e:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lcom/google/android/play/core/appupdate/r;->a(Lcom/google/android/play/core/appupdate/r;Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/android/play/core/appupdate/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/p;->a(Ljava/lang/Object;)V

    return-void
.end method
