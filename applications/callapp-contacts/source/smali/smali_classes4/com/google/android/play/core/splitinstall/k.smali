.class final Lcom/google/android/play/core/splitinstall/k;
.super Lcom/google/android/play/core/splitinstall/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/play/core/splitinstall/m<",
        "Lcom/google/android/play/core/splitinstall/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/n;Lcom/google/android/play/core/tasks/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/p<",
            "Lcom/google/android/play/core/splitinstall/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/splitinstall/m;-><init>(Lcom/google/android/play/core/splitinstall/n;Lcom/google/android/play/core/tasks/p;)V

    return-void
.end method


# virtual methods
.method public final b(ILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/android/play/core/splitinstall/m;->b(ILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/k;->a:Lcom/google/android/play/core/tasks/p;

    invoke-static {p2}, Lcom/google/android/play/core/splitinstall/c;->a(Landroid/os/Bundle;)Lcom/google/android/play/core/splitinstall/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/p;->a(Ljava/lang/Object;)V

    return-void
.end method
