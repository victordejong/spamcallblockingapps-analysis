.class final Lcom/google/android/gms/location/i;
.super Lcom/google/android/gms/internal/location/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/b;Lcom/google/android/gms/tasks/i;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/location/i;->a:Lcom/google/android/gms/tasks/i;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/location/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/location/zzaa;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzaa;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/location/i;->a:Lcom/google/android/gms/tasks/i;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    const-string v3, "Got null status from location service"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/i;->b(Ljava/lang/Exception;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/location/i;->a:Lcom/google/android/gms/tasks/i;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/i;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/location/i;->a:Lcom/google/android/gms/tasks/i;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/b;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/i;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
