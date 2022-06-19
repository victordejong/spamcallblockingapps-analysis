.class Lcom/google/android/play/core/review/h;
.super Lcom/google/android/play/core/internal/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/play/core/internal/d;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/play/core/internal/h;

.field final b:Lcom/google/android/play/core/tasks/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/tasks/p<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/android/play/core/review/j;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/review/j;Lcom/google/android/play/core/internal/h;Lcom/google/android/play/core/tasks/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/internal/h;",
            "Lcom/google/android/play/core/tasks/p<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/play/core/review/h;->c:Lcom/google/android/play/core/review/j;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/d;-><init>()V

    iput-object p2, p0, Lcom/google/android/play/core/review/h;->a:Lcom/google/android/play/core/internal/h;

    iput-object p3, p0, Lcom/google/android/play/core/review/h;->b:Lcom/google/android/play/core/tasks/p;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/play/core/review/h;->c:Lcom/google/android/play/core/review/j;

    iget-object p1, p1, Lcom/google/android/play/core/review/j;->b:Lcom/google/android/play/core/internal/r;

    invoke-virtual {p1}, Lcom/google/android/play/core/internal/r;->a()V

    iget-object p1, p0, Lcom/google/android/play/core/review/h;->a:Lcom/google/android/play/core/internal/h;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onGetLaunchReviewFlowInfo"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
