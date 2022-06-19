.class Lcom/google/android/play/core/splitinstall/m;
.super Lcom/google/android/play/core/internal/al;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/play/core/internal/al;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/play/core/tasks/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/p<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/android/play/core/splitinstall/n;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/n;Lcom/google/android/play/core/tasks/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/p<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/m;->b:Lcom/google/android/play/core/splitinstall/n;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/al;-><init>()V

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/m;->a:Lcom/google/android/play/core/tasks/p;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/m;->b:Lcom/google/android/play/core/splitinstall/n;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/n;->a:Lcom/google/android/play/core/internal/r;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/r;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/n;->b()Lcom/google/android/play/core/internal/h;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onGetSessionStates"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/m;->b:Lcom/google/android/play/core/splitinstall/n;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/n;->a:Lcom/google/android/play/core/internal/r;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/r;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/n;->b()Lcom/google/android/play/core/internal/h;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onCancelInstall(%d)"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/play/core/splitinstall/m;->b:Lcom/google/android/play/core/splitinstall/n;

    iget-object p2, p2, Lcom/google/android/play/core/splitinstall/n;->a:Lcom/google/android/play/core/internal/r;

    invoke-virtual {p2}, Lcom/google/android/play/core/internal/r;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/n;->b()Lcom/google/android/play/core/internal/h;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onStartInstall(%d)"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/m;->b:Lcom/google/android/play/core/splitinstall/n;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/n;->a:Lcom/google/android/play/core/internal/r;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/r;->a()V

    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/google/android/play/core/splitinstall/n;->b()Lcom/google/android/play/core/internal/h;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onError(%d)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/h;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/m;->a:Lcom/google/android/play/core/tasks/p;

    new-instance v1, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    invoke-direct {v1, p1}, Lcom/google/android/play/core/splitinstall/SplitInstallException;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/p;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/m;->b:Lcom/google/android/play/core/splitinstall/n;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/n;->a:Lcom/google/android/play/core/internal/r;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/r;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/n;->b()Lcom/google/android/play/core/internal/h;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onDeferredUninstall"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/m;->b:Lcom/google/android/play/core/splitinstall/n;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/n;->a:Lcom/google/android/play/core/internal/r;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/r;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/n;->b()Lcom/google/android/play/core/internal/h;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onCompleteInstall(%d)"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(ILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/play/core/splitinstall/m;->b:Lcom/google/android/play/core/splitinstall/n;

    iget-object p2, p2, Lcom/google/android/play/core/splitinstall/n;->a:Lcom/google/android/play/core/internal/r;

    invoke-virtual {p2}, Lcom/google/android/play/core/internal/r;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/n;->b()Lcom/google/android/play/core/internal/h;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "onGetSession(%d)"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/m;->b:Lcom/google/android/play/core/splitinstall/n;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/n;->a:Lcom/google/android/play/core/internal/r;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/r;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/n;->b()Lcom/google/android/play/core/internal/h;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onDeferredInstall"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/m;->b:Lcom/google/android/play/core/splitinstall/n;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/n;->a:Lcom/google/android/play/core/internal/r;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/r;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/n;->b()Lcom/google/android/play/core/internal/h;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onDeferredLanguageInstall"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/m;->b:Lcom/google/android/play/core/splitinstall/n;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/n;->a:Lcom/google/android/play/core/internal/r;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/r;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/n;->b()Lcom/google/android/play/core/internal/h;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onDeferredLanguageUninstall"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/m;->b:Lcom/google/android/play/core/splitinstall/n;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/n;->a:Lcom/google/android/play/core/internal/r;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/r;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/n;->b()Lcom/google/android/play/core/internal/h;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onCompleteInstallForAppUpdate"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final g()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/m;->b:Lcom/google/android/play/core/splitinstall/n;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/n;->a:Lcom/google/android/play/core/internal/r;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/r;->a()V

    invoke-static {}, Lcom/google/android/play/core/splitinstall/n;->b()Lcom/google/android/play/core/internal/h;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onGetSplitsForAppUpdate"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
