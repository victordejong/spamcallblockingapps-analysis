.class final Lcom/google/android/gms/internal/measurement/s;
.super Lcom/google/android/gms/internal/measurement/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/google/android/gms/internal/measurement/lu;

.field final synthetic c:Lcom/google/android/gms/internal/measurement/ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ak;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/lu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/s;->c:Lcom/google/android/gms/internal/measurement/ak;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/s;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/s;->b:Lcom/google/android/gms/internal/measurement/lu;

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/aa;-><init>(Lcom/google/android/gms/internal/measurement/ak;Z)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s;->c:Lcom/google/android/gms/internal/measurement/ak;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ak;->c(Lcom/google/android/gms/internal/measurement/ak;)Lcom/google/android/gms/internal/measurement/mz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/mz;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/s;->a:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/s;->b:Lcom/google/android/gms/internal/measurement/lu;

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/s;->h:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/mz;->performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/nc;J)V

    return-void
.end method

.method protected final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s;->b:Lcom/google/android/gms/internal/measurement/lu;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/lu;->a(Landroid/os/Bundle;)V

    return-void
.end method
