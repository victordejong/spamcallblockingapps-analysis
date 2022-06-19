.class final Lcom/google/android/play/core/review/i;
.super Lcom/google/android/play/core/review/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/play/core/review/h<",
        "Lcom/google/android/play/core/review/ReviewInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/play/core/review/j;Lcom/google/android/play/core/tasks/p;)V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/h;

    const-string v1, "OnRequestInstallCallback"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/h;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/play/core/review/h;-><init>(Lcom/google/android/play/core/review/j;Lcom/google/android/play/core/internal/h;Lcom/google/android/play/core/tasks/p;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/play/core/review/h;->a(Landroid/os/Bundle;)V

    const-string v0, "confirmation_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/google/android/play/core/review/i;->b:Lcom/google/android/play/core/tasks/p;

    invoke-static {p1}, Lcom/google/android/play/core/review/ReviewInfo;->b(Landroid/app/PendingIntent;)Lcom/google/android/play/core/review/ReviewInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/tasks/p;->a(Ljava/lang/Object;)V

    return-void
.end method
